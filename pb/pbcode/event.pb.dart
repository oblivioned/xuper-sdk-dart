///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'xchain.pb.dart' as $1;

import 'event.pbenum.dart';
import 'xchain.pbenum.dart' as $1;

export 'event.pbenum.dart';

class BlockStatusInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockStatusInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'proposer')
    ..aInt64(3, 'height')
    ..e<BlockStatus>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: BlockStatus.ERROR, valueOf: BlockStatus.valueOf, enumValues: BlockStatus.values)
    ..hasRequiredFields = false
  ;

  BlockStatusInfo._() : super();
  factory BlockStatusInfo() => create();
  factory BlockStatusInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockStatusInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockStatusInfo clone() => BlockStatusInfo()..mergeFromMessage(this);
  BlockStatusInfo copyWith(void Function(BlockStatusInfo) updates) => super.copyWith((message) => updates(message as BlockStatusInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockStatusInfo create() => BlockStatusInfo._();
  BlockStatusInfo createEmptyInstance() => create();
  static $pb.PbList<BlockStatusInfo> createRepeated() => $pb.PbList<BlockStatusInfo>();
  @$core.pragma('dart2js:noInline')
  static BlockStatusInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockStatusInfo>(create);
  static BlockStatusInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get proposer => $_getSZ(1);
  @$pb.TagNumber(2)
  set proposer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposer() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposer() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  BlockStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(BlockStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

class TransactionStatusInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionStatusInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'initiator')
    ..pPS(3, 'authRequire')
    ..e<$1.TransactionStatus>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: $1.TransactionStatus.UNDEFINE, valueOf: $1.TransactionStatus.valueOf, enumValues: $1.TransactionStatus.values)
    ..hasRequiredFields = false
  ;

  TransactionStatusInfo._() : super();
  factory TransactionStatusInfo() => create();
  factory TransactionStatusInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionStatusInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionStatusInfo clone() => TransactionStatusInfo()..mergeFromMessage(this);
  TransactionStatusInfo copyWith(void Function(TransactionStatusInfo) updates) => super.copyWith((message) => updates(message as TransactionStatusInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionStatusInfo create() => TransactionStatusInfo._();
  TransactionStatusInfo createEmptyInstance() => create();
  static $pb.PbList<TransactionStatusInfo> createRepeated() => $pb.PbList<TransactionStatusInfo>();
  @$core.pragma('dart2js:noInline')
  static TransactionStatusInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionStatusInfo>(create);
  static TransactionStatusInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get initiator => $_getSZ(1);
  @$pb.TagNumber(2)
  set initiator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInitiator() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitiator() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get authRequire => $_getList(2);

  @$pb.TagNumber(4)
  $1.TransactionStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($1.TransactionStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

class AccountStatusInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountStatusInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..pPS(2, 'fromAddr')
    ..pPS(3, 'toAddr')
    ..e<$1.TransactionStatus>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: $1.TransactionStatus.UNDEFINE, valueOf: $1.TransactionStatus.valueOf, enumValues: $1.TransactionStatus.values)
    ..hasRequiredFields = false
  ;

  AccountStatusInfo._() : super();
  factory AccountStatusInfo() => create();
  factory AccountStatusInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountStatusInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountStatusInfo clone() => AccountStatusInfo()..mergeFromMessage(this);
  AccountStatusInfo copyWith(void Function(AccountStatusInfo) updates) => super.copyWith((message) => updates(message as AccountStatusInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountStatusInfo create() => AccountStatusInfo._();
  AccountStatusInfo createEmptyInstance() => create();
  static $pb.PbList<AccountStatusInfo> createRepeated() => $pb.PbList<AccountStatusInfo>();
  @$core.pragma('dart2js:noInline')
  static AccountStatusInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountStatusInfo>(create);
  static AccountStatusInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get fromAddr => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get toAddr => $_getList(2);

  @$pb.TagNumber(4)
  $1.TransactionStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($1.TransactionStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

class EventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EventRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<EventType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: EventType.UNDEFINED, valueOf: EventType.valueOf, enumValues: EventType.values)
    ..a<$core.List<$core.int>>(2, 'payload', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  EventRequest._() : super();
  factory EventRequest() => create();
  factory EventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EventRequest clone() => EventRequest()..mergeFromMessage(this);
  EventRequest copyWith(void Function(EventRequest) updates) => super.copyWith((message) => updates(message as EventRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventRequest create() => EventRequest._();
  EventRequest createEmptyInstance() => create();
  static $pb.PbList<EventRequest> createRepeated() => $pb.PbList<EventRequest>();
  @$core.pragma('dart2js:noInline')
  static EventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventRequest>(create);
  static EventRequest _defaultInstance;

  @$pb.TagNumber(1)
  EventType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(EventType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get payload => $_getN(1);
  @$pb.TagNumber(2)
  set payload($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => clearField(2);
}

class BlockEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockEventRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'proposer')
    ..aInt64(3, 'startHeight')
    ..aInt64(4, 'endHeight')
    ..aOB(5, 'needContent')
    ..hasRequiredFields = false
  ;

  BlockEventRequest._() : super();
  factory BlockEventRequest() => create();
  factory BlockEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockEventRequest clone() => BlockEventRequest()..mergeFromMessage(this);
  BlockEventRequest copyWith(void Function(BlockEventRequest) updates) => super.copyWith((message) => updates(message as BlockEventRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockEventRequest create() => BlockEventRequest._();
  BlockEventRequest createEmptyInstance() => create();
  static $pb.PbList<BlockEventRequest> createRepeated() => $pb.PbList<BlockEventRequest>();
  @$core.pragma('dart2js:noInline')
  static BlockEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockEventRequest>(create);
  static BlockEventRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get proposer => $_getSZ(1);
  @$pb.TagNumber(2)
  set proposer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProposer() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposer() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get startHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set startHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartHeight() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get endHeight => $_getI64(3);
  @$pb.TagNumber(4)
  set endHeight($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get needContent => $_getBF(4);
  @$pb.TagNumber(5)
  set needContent($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNeedContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearNeedContent() => clearField(5);
}

class TransactionEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionEventRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'initiator')
    ..aOS(3, 'authRequire')
    ..aOB(4, 'needContent')
    ..hasRequiredFields = false
  ;

  TransactionEventRequest._() : super();
  factory TransactionEventRequest() => create();
  factory TransactionEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionEventRequest clone() => TransactionEventRequest()..mergeFromMessage(this);
  TransactionEventRequest copyWith(void Function(TransactionEventRequest) updates) => super.copyWith((message) => updates(message as TransactionEventRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionEventRequest create() => TransactionEventRequest._();
  TransactionEventRequest createEmptyInstance() => create();
  static $pb.PbList<TransactionEventRequest> createRepeated() => $pb.PbList<TransactionEventRequest>();
  @$core.pragma('dart2js:noInline')
  static TransactionEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionEventRequest>(create);
  static TransactionEventRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get initiator => $_getSZ(1);
  @$pb.TagNumber(2)
  set initiator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInitiator() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitiator() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authRequire => $_getSZ(2);
  @$pb.TagNumber(3)
  set authRequire($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthRequire() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthRequire() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get needContent => $_getBF(3);
  @$pb.TagNumber(4)
  set needContent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNeedContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedContent() => clearField(4);
}

class AccountEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountEventRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'fromAddr')
    ..aOS(3, 'toAddr')
    ..aOB(4, 'needContent')
    ..hasRequiredFields = false
  ;

  AccountEventRequest._() : super();
  factory AccountEventRequest() => create();
  factory AccountEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountEventRequest clone() => AccountEventRequest()..mergeFromMessage(this);
  AccountEventRequest copyWith(void Function(AccountEventRequest) updates) => super.copyWith((message) => updates(message as AccountEventRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountEventRequest create() => AccountEventRequest._();
  AccountEventRequest createEmptyInstance() => create();
  static $pb.PbList<AccountEventRequest> createRepeated() => $pb.PbList<AccountEventRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountEventRequest>(create);
  static AccountEventRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromAddr => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromAddr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get toAddr => $_getSZ(2);
  @$pb.TagNumber(3)
  set toAddr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearToAddr() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get needContent => $_getBF(3);
  @$pb.TagNumber(4)
  set needContent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNeedContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedContent() => clearField(4);
}

class UnsubscribeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnsubscribeRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  UnsubscribeRequest._() : super();
  factory UnsubscribeRequest() => create();
  factory UnsubscribeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsubscribeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnsubscribeRequest clone() => UnsubscribeRequest()..mergeFromMessage(this);
  UnsubscribeRequest copyWith(void Function(UnsubscribeRequest) updates) => super.copyWith((message) => updates(message as UnsubscribeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsubscribeRequest create() => UnsubscribeRequest._();
  UnsubscribeRequest createEmptyInstance() => create();
  static $pb.PbList<UnsubscribeRequest> createRepeated() => $pb.PbList<UnsubscribeRequest>();
  @$core.pragma('dart2js:noInline')
  static UnsubscribeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnsubscribeRequest>(create);
  static UnsubscribeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UnsubscribeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnsubscribeResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..e<UnsubscribeStatusInfo>(3, 'status', $pb.PbFieldType.OE, defaultOrMaker: UnsubscribeStatusInfo.UNSUBSCRIBE_UNDEFINED, valueOf: UnsubscribeStatusInfo.valueOf, enumValues: UnsubscribeStatusInfo.values)
    ..hasRequiredFields = false
  ;

  UnsubscribeResponse._() : super();
  factory UnsubscribeResponse() => create();
  factory UnsubscribeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnsubscribeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UnsubscribeResponse clone() => UnsubscribeResponse()..mergeFromMessage(this);
  UnsubscribeResponse copyWith(void Function(UnsubscribeResponse) updates) => super.copyWith((message) => updates(message as UnsubscribeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnsubscribeResponse create() => UnsubscribeResponse._();
  UnsubscribeResponse createEmptyInstance() => create();
  static $pb.PbList<UnsubscribeResponse> createRepeated() => $pb.PbList<UnsubscribeResponse>();
  @$core.pragma('dart2js:noInline')
  static UnsubscribeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnsubscribeResponse>(create);
  static UnsubscribeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  UnsubscribeStatusInfo get status => $_getN(1);
  @$pb.TagNumber(3)
  set status(UnsubscribeStatusInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class Event extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Event', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..e<EventType>(2, 'type', $pb.PbFieldType.OE, defaultOrMaker: EventType.UNDEFINED, valueOf: EventType.valueOf, enumValues: EventType.values)
    ..a<$core.List<$core.int>>(3, 'payload', $pb.PbFieldType.OY)
    ..aOM<BlockStatusInfo>(4, 'blockStatus', subBuilder: BlockStatusInfo.create)
    ..aOM<TransactionStatusInfo>(5, 'txStatus', subBuilder: TransactionStatusInfo.create)
    ..aOM<AccountStatusInfo>(6, 'accountStatus', subBuilder: AccountStatusInfo.create)
    ..hasRequiredFields = false
  ;

  Event._() : super();
  factory Event() => create();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Event clone() => Event()..mergeFromMessage(this);
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  EventType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(EventType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);

  @$pb.TagNumber(4)
  BlockStatusInfo get blockStatus => $_getN(3);
  @$pb.TagNumber(4)
  set blockStatus(BlockStatusInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockStatus() => clearField(4);
  @$pb.TagNumber(4)
  BlockStatusInfo ensureBlockStatus() => $_ensure(3);

  @$pb.TagNumber(5)
  TransactionStatusInfo get txStatus => $_getN(4);
  @$pb.TagNumber(5)
  set txStatus(TransactionStatusInfo v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTxStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearTxStatus() => clearField(5);
  @$pb.TagNumber(5)
  TransactionStatusInfo ensureTxStatus() => $_ensure(4);

  @$pb.TagNumber(6)
  AccountStatusInfo get accountStatus => $_getN(5);
  @$pb.TagNumber(6)
  set accountStatus(AccountStatusInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccountStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountStatus() => clearField(6);
  @$pb.TagNumber(6)
  AccountStatusInfo ensureAccountStatus() => $_ensure(5);
}

class BlockEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockEvent', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$1.InternalBlock>(1, 'block', subBuilder: $1.InternalBlock.create)
    ..hasRequiredFields = false
  ;

  BlockEvent._() : super();
  factory BlockEvent() => create();
  factory BlockEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockEvent clone() => BlockEvent()..mergeFromMessage(this);
  BlockEvent copyWith(void Function(BlockEvent) updates) => super.copyWith((message) => updates(message as BlockEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockEvent create() => BlockEvent._();
  BlockEvent createEmptyInstance() => create();
  static $pb.PbList<BlockEvent> createRepeated() => $pb.PbList<BlockEvent>();
  @$core.pragma('dart2js:noInline')
  static BlockEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockEvent>(create);
  static BlockEvent _defaultInstance;

  @$pb.TagNumber(1)
  $1.InternalBlock get block => $_getN(0);
  @$pb.TagNumber(1)
  set block($1.InternalBlock v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => clearField(1);
  @$pb.TagNumber(1)
  $1.InternalBlock ensureBlock() => $_ensure(0);
}

class TransactionEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionEvent', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$1.Transaction>(1, 'tx', subBuilder: $1.Transaction.create)
    ..hasRequiredFields = false
  ;

  TransactionEvent._() : super();
  factory TransactionEvent() => create();
  factory TransactionEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransactionEvent clone() => TransactionEvent()..mergeFromMessage(this);
  TransactionEvent copyWith(void Function(TransactionEvent) updates) => super.copyWith((message) => updates(message as TransactionEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionEvent create() => TransactionEvent._();
  TransactionEvent createEmptyInstance() => create();
  static $pb.PbList<TransactionEvent> createRepeated() => $pb.PbList<TransactionEvent>();
  @$core.pragma('dart2js:noInline')
  static TransactionEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionEvent>(create);
  static TransactionEvent _defaultInstance;

  @$pb.TagNumber(1)
  $1.Transaction get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx($1.Transaction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  $1.Transaction ensureTx() => $_ensure(0);
}

class PubsubServiceApi {
  $pb.RpcClient _client;
  PubsubServiceApi(this._client);

  $async.Future<Event> subscribe($pb.ClientContext ctx, EventRequest request) {
    var emptyResponse = Event();
    return _client.invoke<Event>(ctx, 'PubsubService', 'Subscribe', request, emptyResponse);
  }
  $async.Future<UnsubscribeResponse> unsubscribe($pb.ClientContext ctx, UnsubscribeRequest request) {
    var emptyResponse = UnsubscribeResponse();
    return _client.invoke<UnsubscribeResponse>(ctx, 'PubsubService', 'Unsubscribe', request, emptyResponse);
  }
}

