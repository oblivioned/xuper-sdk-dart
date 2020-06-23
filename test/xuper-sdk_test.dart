import 'package:xuper_sdk/xuper-sdk.dart';
import 'package:test/test.dart';

void main() => defineTests();

void defineTests() {
  group('xuper-sdk-test', () {
    AK cred;
    AK to;
    XuperClient client;
    setUpAll(() async {
      cred = AK.fromPrivateKey(BigInt.parse(
          '29079635126530934056640915735344231956621504557963207107451663058887647996601'));
      to = AK.fromPrivateKey(BigInt.parse(
          '98698032903818677365237388430412623738975596999573887926929830968230132692775'));
      client = XuperClient.connect('127.0.0.1', 37101, securable: false);
    });
    // test('getBlockByHeight', () async {
    //   final blockHeight = BlockHeight.create();
    //   blockHeight.bcname = 'xuper';
    //   await client.xchainServices.getBlockByHeight(blockHeight);
    // });
    // test('getBalance', () async {
    //   final request = AddressStatus()
    //     ..address = cred.address.toString()
    //     ..bcs.add(TokenDetail()..bcname = 'xuper');
    //   await client.xchainServices.getBalance(request);
    // });
    // test('getAccountByAK', () async {
    //     final req = AK2AccountRequest.create();
    //     req.bcname = 'xuper';
    //     req.address = cred.address.toString();
    //     await client.xchainServices.getAccountByAK(req).then(print);
    // });
    // test('preExecution', () async {
    //     final txBuilder = AKTreansactionBuilder(client, cred.address);
    //     txBuilder.addOutput(to.address, BigInt.from(10000));
    //     final rsp = await txBuilder.preExecution();
    //     print(rsp.gasUsed);
    //     // client.xchainServices.postTx(request)
    // });
    test('createAccount', () async {
      // 构建交易使用的描述
      final createAccDesc = InvokeDesc.fromMap(<String, dynamic>{
        'args': {
          'account_name': '1592908918146809',
          'acl':
              '{"aksWeight":{"dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN":0.5,"eqMvtH1MQSejd4nzxDy21W1GW12cocrPF":0.5},"pm":{"acceptValue":0.6,"rule":1}}'
        },
        'method_name': 'NewAccount',
        'module_name': 'xkernel'
      });

      // 构建交易
      final txBuilder = TransactionBuilder(
          bcname: 'xuper', client: client, initor: cred.address)
        ..addDesc(createAccDesc);

      // final txSigner = await txBuilder.build();
      // txSigner.sign(cred);
      // print('TXHash: ${txSigner.build().txidHex}');

      // 签名
      await txBuilder.build().then((signer) => signer
              .sign(cred)
              .build()
              .doSend()
              .timeout(Duration(seconds: 25), onTimeout: () {
            // 超时
          }).then((rsp) {
            print(rsp);
          }));
    });
    tearDownAll(() async {
      await client.shutdown();
    });
  });
}
