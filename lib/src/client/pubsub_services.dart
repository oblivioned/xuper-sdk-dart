part of 'package:xuper_sdk/client.dart';

class BlockNum {
  final BigInt _num;
  BlockNum._(this._num);

  factory BlockNum(value) {
    if (value is num) {
      return BlockNum._(BigInt.from(value));
    } else if (value is String) {
      return BlockNum._(BigInt.parse(value));
    } else if (value is BigInt) {
      return BlockNum._(value);
    }
    return BlockNum(0);
  }
  factory BlockNum.earliest() => BlockNum(0);
  factory BlockNum.latest() => BlockNum(1 << 63 - 1 );

  Int64 _toInt64() => Int64.parseInt(_num.toString());

  @override
  String toString() => _num.toUnsigned(_num.bitLength).toString();
}

class PubsubServices extends PubsubServiceClient {
  PubsubServices(grpc.ClientChannel channel) : super(channel);

  grpc.ResponseStream<Event> subscribeBlockEvent(BlockNum start, BlockNum end,
      {String bcname = 'xuper',
      String proposer = '',
      bool needContent = false}) {
    final blockEvent = BlockEventRequest()
      ..bcname = bcname
      ..needContent = needContent
      ..proposer = proposer
      ..startHeight = start._toInt64()
      ..endHeight = end._toInt64();

    final eventRequest = EventRequest()
      ..type = EventType.BLOCK
      ..payload = utf8.encode( json.encode(blockEvent.toProto3Json()) );

    return subscribe(eventRequest);
  }
}
