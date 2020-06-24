import 'dart:math';
import 'package:xuper_sdk/crypto.dart';
import 'package:xuper_sdk/credentials.dart';
import 'package:test/test.dart';

main() => defineTests();

defineTests() {
  group('wallet', () {
    test('test', () {
        final cred = AK.generateKey();
        final wallet = Wallet.createNew(cred, 'xuper-sdk-dart', Random.secure());
        final keystorejson = wallet.toJson();

        final recoverWallet = Wallet.fromJson(keystorejson, 'xuper-sdk-dart');
        expect(cred.address.toString(), recoverWallet.address.toString(), reason: 'address mismatch.');
        expect(cred.privateKey, recoverWallet.ak.privateKey, reason: 'privatekey mismatch.');
    });
  });
}
