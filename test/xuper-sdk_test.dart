import 'package:xuper_sdk/xuper-sdk.dart';
import 'package:test/test.dart';
import 'config.dart';

void main() => defineTests();

void defineTests() {
  group('xuper-sdk-test', () {
    AK cred;
    XuperClient client;
    setUpAll(() async {
      cred = AK.fromPrivateKey(BigInt.parse(
          '75202845926831956038551478072726757313337723729547574945610490245988704089284'));
      client = XuperClient.connect(ChannelInfo);
    });
    test('getBlockByHeight', () async {
      final blockHeight = BlockHeight.create();
      blockHeight.bcname = 'xuper';
      await client.xchainServices.getBlockByHeight(blockHeight);
    });
    test('getBalance', () async {
      final request = AddressStatus()
        ..address = cred.address.toString()
        ..bcs.add(TokenDetail()..bcname = 'xuper');
      await client.xchainServices.getBalance(request);
    });
    test('getAccountByAK', () async {
      final req = AK2AccountRequest.create();
      req.bcname = 'xuper';
      req.address = cred.address.toString();
      await client.xchainServices.getAccountByAK(req);
    });
    test('preExecution', () async {
      final txBuilder = TransactionBuilder(
          bcname: 'xuper', client: client, initor: cred.address);
      txBuilder.addOutput(cred.address, BigInt.from(1));
      final rsp = await txBuilder.preExecution();
    });
    test('transfer', () async {
      var request = AddressStatus()..bcs.add(TokenDetail()..bcname = 'xuper');

      // 2.获取发送地址的当前余额
      final senderBalance_origin = await client.xchainServices
          .getBalance(request..address = cred.address.toString());

      // 3.转账
      final txBuilder = TransactionBuilder(
          bcname: 'xuper',
          client: client,
          initor: cred.address,
          complianceChecks: [
            // 增加黄反的授权地址
            Address.fromString('XDxkpQkfLwG6h56e896f3vBHhuN5g6M9u')
          ]);
      txBuilder.addOutput(cred.address, BigInt.from(1));
      final txSigner = await txBuilder.build();

      // 4.请求黄反服务的address的签名
      await txSigner.requestSignature(
          Address.fromString('XDxkpQkfLwG6h56e896f3vBHhuN5g6M9u'));

      // 5.填充initor的签名并且发送
      final txRsp = await txSigner.sign(cred).build().doSend();
      expect(txRsp.header.error, XChainErrorEnum.SUCCESS,
          reason: 'transfer transaction send has error.');

      // 4.验证余额,自己转给自己，余额不用改发送改变
      final senderBalance_new = await client.xchainServices.getBalance(request);
      expect(senderBalance_origin.bcs.first.balance,
          senderBalance_new.bcs.first.balance,
          reason: 'sender\'s balance changed.');
    });
    // test('createAccount', () async {
    //   // 构建交易使用的描述
    //   final createAccDesc = InvokeDesc.fromMap(<String, dynamic>{
    //     'args': {
    //       'account_name': '1592908918146809',
    //       'acl':
    //           '{"aksWeight":{"dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN":0.5,"eqMvtH1MQSejd4nzxDy21W1GW12cocrPF":0.5},"pm":{"acceptValue":0.6,"rule":1}}'
    //     },
    //     'method_name': 'NewAccount',
    //     'module_name': 'xkernel'
    //   });
    //
    //   // 构建交易
    //   final txBuilder = TransactionBuilder(
    //       bcname: 'xuper', client: client, initor: cred.address)
    //     ..addDesc(createAccDesc);
    //
    //   // 签名和发送
    //   await txBuilder.build().then((signer) => signer
    //           .sign(cred)
    //           .build()
    //           .doSend()
    //           .timeout(Duration(seconds: 25), onTimeout: () {
    //         // 超时
    //       }).then((rsp) {
    //         print(rsp);
    //       }));
    // });
    tearDownAll(() async {
      await client.shutdown();
    });
  });
}
