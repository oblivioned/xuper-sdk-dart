part of 'package:xuper_sdk/tx.dart';

class TransactionBuilder {
  XuperClient get client => _client;
  Address get initor => _initor;
  List<Address> get authRequires => _authRequires;
  List<TxOutput> get outputs => _outputs;
  String get bcname => _bcname;

  final String _bcname;
  final XuperClient _client;
  final Address _initor;
  final List<Address> _authRequires;
  final List<TxOutput> _outputs = <TxOutput>[];
  final List<InvokeDesc> _descs = [];
  // 存放已经填充的签名
  final Map<Address, SignatureInfo> _sigMapping = <Address, SignatureInfo>{};
  Transaction _tx_cache;

  TransactionBuilder._(
      this._bcname, this._client, this._initor, this._authRequires,
      {InvokeDesc desc}) {
    if (desc != null) {
      addDesc(desc);
    }
  }

  factory TransactionBuilder(
          {@required String bcname,
          @required XuperClient client,
          @required Address initor,
          List<Address> authRequires = const <Address>[],
          InvokeDesc desc}) =>
      TransactionBuilder._(
          bcname,
          client,
          initor,
          authRequires.isEmpty ? [initor] : authRequires,
          desc: desc);

  void addOutput(Address to, BigInt amount, {int forzenBlock = 0}) =>
      outputs.add(TxOutput()
        ..amount = intToBytes(amount)
        ..toAddr = to.bytes
        ..frozenHeight = fixnum.Int64(forzenBlock));

  void addDesc(InvokeDesc desc) => _descs.add(desc);
  void addDescAll(Iterable<InvokeDesc> it) => _descs.addAll(it);

  Future<TransactionSigner> build() => buildTransaction()
      .then((tx) => TransactionSigner._(bcname, client, initor, authRequires, tx));

  /// 构建交易对象,通过构建后相当于除了签名其他数据都是完整的，虽然暂时不能用来计算txid，但是可以进行后续的签名操作，
  /// 若执意需要在获取交易对象，请注意，返回的对象是未签名的，`是不完整的交易`（我很想设置为private，但是或许你会有使
  /// 用的需要,如果是需要进行签名和发送，请使用[TransactionSigner.build]方法.
  Future<Transaction> buildTransaction() {
    final tx = Transaction();

    tx.version = 1;
    tx.coinbase = false;
    tx.timestamp = _timestamp18();
    tx.initiator = _initor.toString();
    tx.desc = _descBytes();
    tx.txOutputs.addAll(outputs);
    tx.nonce = _timestamp18().toString();

    /// 预执行，虽然有单独的与执行方法，但是如果使用的开发者，在调用了预执行后
    /// 再次修改了参数，会导致原来的预执行的结果是不匹配的，所以此处需要重新
    /// 进行预执行的过程
    return preExecution().then((invokeResponse) async {
      tx.contractRequests.addAll(invokeResponse.requests);
      tx.txInputsExt.addAll(invokeResponse.inputs);
      tx.txOutputsExt.addAll(invokeResponse.outputs);

      // fee is need
      if (invokeResponse.gasUsed > 0) {
        tx.txOutputs.add(TxOutput()
          ..amount = intToBytes(
              BigInt.parse(invokeResponse.gasUsed.toRadixStringUnsigned(10)))
          ..toAddr = utf8.encode('\$'));
      }

      // 获取输入的交易
      final totalUsed = _outputsTotalNeed() +
          BigInt.parse(invokeResponse.gasUsed.toRadixStringUnsigned(10));
      final utxo_outputs = await _selectTxInputs(totalUsed);

      utxo_outputs.utxoList.forEach((e) {
        tx.txInputs.add(TxInput()
          ..refTxid = e.refTxid
          ..refOffset = e.refOffset
          ..fromAddr = e.toAddr
          ..amount = e.amount);
      });

      /*
          PS：一个表示数值的字段，请求和返回的时候类型
          一会是 bytes，
          一会是 string，
          一会是 int64，
          我能理解取值范围都不一样，
          至少Request和Response中表示关联意义的字段类型应该保持一致吧？？？？
      */
      // 多余的部分转给自己
      final totalSelected = BigInt.parse(utxo_outputs.totalSelected);
      if (totalSelected > totalUsed) {
        tx.txOutputs.add(TxOutput()
          ..amount = intToBytes(totalSelected - totalUsed)
          ..toAddr = _initor.bytes);
      }

      // 设置AuthRequires
      tx.authRequire.addAll(authRequires.map((e) => e.toString()));

      return tx;
    });
  }

  Future<InvokeResponse> preExecution() {
    final preExeRPCReq = InvokeRPCRequest();
    preExeRPCReq.bcname = _bcname;
    preExeRPCReq.initiator = _initor.toString();
    preExeRPCReq.authRequire.addAll(authRequires.map((e) => e.toString()));

    _descs.forEach((d) {
      // 比如纯String类型的Desc是不能创建Request对象，但是结构上来说，暂时找到好的方法处理
      // 所以在此处增加一个容错，当不能生成request时则不追加队列
      final r = d.request;
      r != null ? preExeRPCReq.requests.add(r) : null;
    });

    return _client.xchainServices.preExec(preExeRPCReq).then((r) => r.response);
  }

  // 获取18位(微秒)时间戳
  fixnum.Int64 _timestamp18() =>
      fixnum.Int64(DateTime.now().microsecondsSinceEpoch);

  // 选择输入的交易
  Future<UtxoOutput> _selectTxInputs(BigInt totalUsed,
      {bool needLock = false}) {
    final selecter = UtxoInput();
    selecter.bcname = _bcname;
    selecter.address = _initor.toString();
    selecter.totalNeed = totalUsed.toString();
    selecter.needLock = needLock;

    return _client.xchainServices.selectUTXO(selecter);
  }

  // 计算当前所有的配置的output需要使用的总资源数量
  BigInt _outputsTotalNeed() {
    var total = BigInt.zero;
    outputs.forEach((output) {
      total += bytesToInt(output.amount);
    });
    return total;
  }

  Uint8List _descBytes() {
    if (_descs.isEmpty) {
      return utf8.encode("xuper-sdk-dart");
    }

    if (_descs.length == 1) {
      return utf8.encode(_descs.first.jsonString);
    }

    final descll = <Map>[];

    _descs.forEach((e) {
      if (e.asMap != null) {
        descll.add(e.asMap);
      }
    });

    return utf8.encode(json.encode(descll));
  }
}

// class AccountTransactionBuilder {}
