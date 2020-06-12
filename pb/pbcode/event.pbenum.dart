///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BlockStatus extends $pb.ProtobufEnum {
  static const BlockStatus ERROR = BlockStatus._(0, 'ERROR');
  static const BlockStatus TRUNK = BlockStatus._(1, 'TRUNK');
  static const BlockStatus BRANCH = BlockStatus._(2, 'BRANCH');
  static const BlockStatus NONEXIST = BlockStatus._(3, 'NONEXIST');

  static const $core.List<BlockStatus> values = <BlockStatus> [
    ERROR,
    TRUNK,
    BRANCH,
    NONEXIST,
  ];

  static final $core.Map<$core.int, BlockStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BlockStatus valueOf($core.int value) => _byValue[value];

  const BlockStatus._($core.int v, $core.String n) : super(v, n);
}

class EventType extends $pb.ProtobufEnum {
  static const EventType UNDEFINED = EventType._(0, 'UNDEFINED');
  static const EventType BLOCK = EventType._(1, 'BLOCK');
  static const EventType TRANSACTION = EventType._(2, 'TRANSACTION');
  static const EventType ACCOUNT = EventType._(3, 'ACCOUNT');
  static const EventType SUBSCRIBE_RESPONSE = EventType._(4, 'SUBSCRIBE_RESPONSE');

  static const $core.List<EventType> values = <EventType> [
    UNDEFINED,
    BLOCK,
    TRANSACTION,
    ACCOUNT,
    SUBSCRIBE_RESPONSE,
  ];

  static final $core.Map<$core.int, EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EventType valueOf($core.int value) => _byValue[value];

  const EventType._($core.int v, $core.String n) : super(v, n);
}

class UnsubscribeStatusInfo extends $pb.ProtobufEnum {
  static const UnsubscribeStatusInfo UNSUBSCRIBE_UNDEFINED = UnsubscribeStatusInfo._(0, 'UNSUBSCRIBE_UNDEFINED');
  static const UnsubscribeStatusInfo UNSUBSCRIBE_SUCCESS = UnsubscribeStatusInfo._(1, 'UNSUBSCRIBE_SUCCESS');
  static const UnsubscribeStatusInfo UNSUBSCRIBE_FAILED = UnsubscribeStatusInfo._(2, 'UNSUBSCRIBE_FAILED');

  static const $core.List<UnsubscribeStatusInfo> values = <UnsubscribeStatusInfo> [
    UNSUBSCRIBE_UNDEFINED,
    UNSUBSCRIBE_SUCCESS,
    UNSUBSCRIBE_FAILED,
  ];

  static final $core.Map<$core.int, UnsubscribeStatusInfo> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UnsubscribeStatusInfo valueOf($core.int value) => _byValue[value];

  const UnsubscribeStatusInfo._($core.int v, $core.String n) : super(v, n);
}

