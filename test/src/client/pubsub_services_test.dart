import 'package:xuper_sdk/client.dart';
import 'package:test/test.dart';

import '../../../test/config.dart';

main() => defineTests();

defineTests() {
  group('pubsub_services', () {
    XuperClient client;
    setUpAll(() async {
      client = XuperClient.connect(ChannelInfo);
    });
    test('todo', () async {
        await client.pubsubServices.subscribeBlockEvent(BlockNum.earliest(), BlockNum.distantFuture()).listen((onData){
            print('SubscribeID: ${onData.id}');
            print('Block: ${onData}');
        }).asFuture();
    });
    tearDownAll(() async {
      await client.shutdown();
    });
  });
}
