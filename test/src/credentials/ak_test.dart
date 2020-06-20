import 'dart:math';
import 'dart:convert';
import 'dart:typed_data';

import 'package:xuper_sdk/crypto.dart';
import 'package:xuper_sdk/credentials.dart';
import 'package:test/test.dart';

void main() => defineTests();

void defineTests() {
  group('ak', () {
    test('test generate and fromHex', () {
      final ak = AK.generateKey();
      final fromHexAK = AK.fromHex(ak.privateKeyHex);
      expect(ak.address.toString(), fromHexAK.address.toString());
    });
    test('test fromHex', () {
      final ak = AK.fromPrivateKey(BigInt.parse(
          '29079635126530934056640915735344231956621504557963207107451663058887647996601'));
      print('Address: ${ak.address}');
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
        print(ak.address);
        // expect(addresses[i], ak.address.toString());
      }
    });
  });
}

// self.xuperAddress = @[
//         @"dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN",
//         @"WNWk3ekXeM5M2232dY2uCJmEqWhfQiDYT",
//         @"akf7qunmeaqb51Wu418d6TyPKp4jdLdpV",
//     ];
//
//     self.xuperKeys = @[
//         @{
//             @"Curvname":@"P-256",
//             @"X":@"74695617477160058757747208220371236837474210247114418775262229497812962582435",
//             @"Y":@"51348715319124770392993866417088542497927816017012182211244120852620959209571",
//             @"D":@"29079635126530934056640915735344231956621504557963207107451663058887647996601"
//         },
//         @{
//             @"Curvname":@"P-256",
//             @"X":@"38583161743450819602965472047899931736724287060636876073116809140664442044200",
//             @"Y":@"73385020193072990307254305974695788922719491565637982722155178511113463088980",
//             @"D":@"98698032903818677365237388430412623738975596999573887926929830968230132692775"
//         },
//         @{
//             @"Curvname":@"P-256",
//             @"X":@"82701086955329320728418181640262300520017105933207363210165513352476444381539",
//             @"Y":@"23833609129887414146586156109953595099225120577035152268521694007099206660741",
//             @"D":@"57537645914107818014162200570451409375770015156750200591470574847931973776404"
//         },
//     ];
