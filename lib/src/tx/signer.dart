part of 'package:xuper_sdk/tx.dart';

// 签名的流程若混杂在Builder中可能会引起使用者的误会，比如调用了类似签名的方法后，又去修改了数据
// 那么提供另一个类型，迫使使用者在就行签名流程时，需要将build中的交易完整的clone到本类型中并且
// 屏蔽所有的修改方法达到限制修改的目的，让逻辑更加清晰。
//
// 另外关于比如求取Txid的方法中，是需要填充了所有必要的签名后才可以准确计算结果的，但是在build中
// 若包含Txid的计算方法，用户可能不知道什么时机才可以计算导致计算出一个不正确的结果，或者只能抛出
// 异常的方式来阻止，所有有必要增加Signer的类型来限制
class TransactionSigner {
  final String _bcname;
  final XuperClient _client;
  final Address _initor;
  final List<Address> _authRequires;
  final Transaction _tx;
  final Map<Address, SignatureInfo> _sigMapping = <Address, SignatureInfo>{};

  TransactionSigner._(
      this._bcname, this._client, this._initor, this._authRequires, this._tx);

  /// 内部逻辑会自动识别是Initor还是AuthRequires
  TransactionSigner sign(Credentials cred) {
    final hash = _tx._makeDigestHash;
    final sig = cred.sign(hash, digestBeforSign: false);

    // 填充签名
    if (cred.address == _initor || _authRequires.contains(cred.address)) {
      return payloadSignature(cred.address, sig);
    }

    return this;
  }

  TransactionSigner signAll(List<Credentials> credList) {
    final hash = _tx._makeDigestHash;

    final sigs = credList.asMap().map<Address, SignatureInfo>((i, v) =>
        MapEntry(credList[i].address, v.sign(hash, digestBeforSign: false)));

    return payloadSignatureAll(sigs);
  }

  /// 内部逻辑自动判断签名是来自Initor还是AuthRequires
  TransactionSigner payloadSignature(Address addr, SignatureInfo sig) {
    _sigMapping[addr] = sig;
    return this;
  }

  TransactionSigner payloadSignatureAll(Map<Address, SignatureInfo> sigMap) {
    sigMap.forEach((addr, sig) {
      _sigMapping[addr] = sig;
    });
    return this;
  }

  TransactionSender build() {
    // 返回一个新的实例，否则可能由于多次使用build导致签名重复
    final txCloned = _tx.clone();

    if (_sigMapping.containsKey(_sigMapping)) {
      throw SignerError(SignerErrorType.NoInitorSignature);
    }

    // 添加initor签名
    txCloned.initiatorSigns.add(_sigMapping[_initor]);

    // 添加authrequires签名
    txCloned.authRequireSigns.addAll(_sigMapping.values);

    // 填充txid
    txCloned.txid = txCloned._makeDigestHash;

    return TransactionSender._(_bcname, _client, txCloned);
  }
}
