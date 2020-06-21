import 'dart:math';
import 'dart:convert';
import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:xuper_sdk/crypto.dart';
import 'package:xuper_sdk/credentials.dart';

void main() => defineTests();

void defineTests() {
  group('ak', () {
    test('test generate and fromHex', () {
      final ak = AK.generateKey();
      final fromHexAK = AK.fromHex(bytesToHex(ak.privateKey));
      expect(ak.address.toString(), fromHexAK.address.toString());
    });
    test('test from privatekey', () {
      final addresses = [
        'dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN',
        'WNWk3ekXeM5M2232dY2uCJmEqWhfQiDYT',
        'akf7qunmeaqb51Wu418d6TyPKp4jdLdpV',
      ];
      final privatekeys = [
        BigInt.parse(
            '29079635126530934056640915735344231956621504557963207107451663058887647996601'),
        BigInt.parse(
            '98698032903818677365237388430412623738975596999573887926929830968230132692775'),
        BigInt.parse(
            '57537645914107818014162200570451409375770015156750200591470574847931973776404'),
      ];
      for (int i = 0; i < privatekeys.length; i++) {
        final ak = AK.fromPrivateKey(privatekeys[i]);
        expect(addresses[i], ak.address.toString());
      }
    });
    test('test sign/verify message', () {
        final cred = AK.fromPrivateKey(BigInt.parse(
            '29079635126530934056640915735344231956621504557963207107451663058887647996601'));

        final signData = utf8.encode('xuper-sdk-dart');
        final sig = cred.sign(signData);

        expect(cred.verify(signData, sig), true);
    });
  });
}
