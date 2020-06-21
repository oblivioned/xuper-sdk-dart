import 'package:xuper_sdk/xuper-sdk.dart';
import 'package:test/test.dart';

main() => defineTests();

defineTests() {
  group('xuper-sdk', () {
    test('todo', () {

      final client = XuperClient.connect('127.0.0.1', 10808, securable: false);
      //
      // final blockID = BlockID.create();
      //
      // blockID.header = Header.random()

      // client.xchainServices.getBlock(blockID).timeout(timeLimit)

    });
  });
}
