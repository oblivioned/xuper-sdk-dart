///
//  Generated code. Do not modify.
//  source: chainedbft.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chainedbft.pbenum.dart';

export 'chainedbft.pbenum.dart';

class QuorumCert extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QuorumCert',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'ProposalId', $pb.PbFieldType.OY,
        protoName: 'ProposalId')
    ..a<$core.List<$core.int>>(2, 'ProposalMsg', $pb.PbFieldType.OY,
        protoName: 'ProposalMsg')
    ..e<QCState>(3, 'Type', $pb.PbFieldType.OE,
        protoName: 'Type',
        defaultOrMaker: QCState.NEW_VIEW,
        valueOf: QCState.valueOf,
        enumValues: QCState.values)
    ..aInt64(4, 'ViewNumber', protoName: 'ViewNumber')
    ..aOM<QCSignInfos>(5, 'SignInfos',
        protoName: 'SignInfos', subBuilder: QCSignInfos.create)
    ..hasRequiredFields = false;

  QuorumCert._() : super();
  factory QuorumCert() => create();
  factory QuorumCert.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QuorumCert.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QuorumCert clone() => QuorumCert()..mergeFromMessage(this);
  QuorumCert copyWith(void Function(QuorumCert) updates) =>
      super.copyWith((message) => updates(message as QuorumCert));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuorumCert create() => QuorumCert._();
  QuorumCert createEmptyInstance() => create();
  static $pb.PbList<QuorumCert> createRepeated() => $pb.PbList<QuorumCert>();
  @$core.pragma('dart2js:noInline')
  static QuorumCert getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuorumCert>(create);
  static QuorumCert _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get proposalId => $_getN(0);
  @$pb.TagNumber(1)
  set proposalId($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get proposalMsg => $_getN(1);
  @$pb.TagNumber(2)
  set proposalMsg($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProposalMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearProposalMsg() => clearField(2);

  @$pb.TagNumber(3)
  QCState get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(QCState v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get viewNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set viewNumber($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasViewNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearViewNumber() => clearField(4);

  @$pb.TagNumber(5)
  QCSignInfos get signInfos => $_getN(4);
  @$pb.TagNumber(5)
  set signInfos(QCSignInfos v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSignInfos() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignInfos() => clearField(5);
  @$pb.TagNumber(5)
  QCSignInfos ensureSignInfos() => $_ensure(4);
}

class QCSignInfos extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QCSignInfos',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<SignInfo>(1, 'QCSignInfos', $pb.PbFieldType.PM,
        protoName: 'QCSignInfos', subBuilder: SignInfo.create)
    ..hasRequiredFields = false;

  QCSignInfos._() : super();
  factory QCSignInfos() => create();
  factory QCSignInfos.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QCSignInfos.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QCSignInfos clone() => QCSignInfos()..mergeFromMessage(this);
  QCSignInfos copyWith(void Function(QCSignInfos) updates) =>
      super.copyWith((message) => updates(message as QCSignInfos));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QCSignInfos create() => QCSignInfos._();
  QCSignInfos createEmptyInstance() => create();
  static $pb.PbList<QCSignInfos> createRepeated() => $pb.PbList<QCSignInfos>();
  @$core.pragma('dart2js:noInline')
  static QCSignInfos getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QCSignInfos>(create);
  static QCSignInfos _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SignInfo> get qCSignInfos => $_getList(0);
}

class SignInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignInfo',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'Address', protoName: 'Address')
    ..aOS(2, 'PublicKey', protoName: 'PublicKey')
    ..a<$core.List<$core.int>>(3, 'Sign', $pb.PbFieldType.OY, protoName: 'Sign')
    ..hasRequiredFields = false;

  SignInfo._() : super();
  factory SignInfo() => create();
  factory SignInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignInfo clone() => SignInfo()..mergeFromMessage(this);
  SignInfo copyWith(void Function(SignInfo) updates) =>
      super.copyWith((message) => updates(message as SignInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInfo create() => SignInfo._();
  SignInfo createEmptyInstance() => create();
  static $pb.PbList<SignInfo> createRepeated() => $pb.PbList<SignInfo>();
  @$core.pragma('dart2js:noInline')
  static SignInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInfo>(create);
  static SignInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get publicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set publicKey($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get sign => $_getN(2);
  @$pb.TagNumber(3)
  set sign($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearSign() => clearField(3);
}

class ChainedBftPhaseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChainedBftPhaseMessage',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<QCState>(1, 'Type', $pb.PbFieldType.OE,
        protoName: 'Type',
        defaultOrMaker: QCState.NEW_VIEW,
        valueOf: QCState.valueOf,
        enumValues: QCState.values)
    ..aInt64(2, 'ViewNumber', protoName: 'ViewNumber')
    ..aOM<QuorumCert>(3, 'ProposalQC',
        protoName: 'ProposalQC', subBuilder: QuorumCert.create)
    ..aOM<QuorumCert>(4, 'JustifyQC',
        protoName: 'JustifyQC', subBuilder: QuorumCert.create)
    ..a<$core.List<$core.int>>(5, 'MsgDigest', $pb.PbFieldType.OY,
        protoName: 'MsgDigest')
    ..aOM<SignInfo>(6, 'Signature',
        protoName: 'Signature', subBuilder: SignInfo.create)
    ..hasRequiredFields = false;

  ChainedBftPhaseMessage._() : super();
  factory ChainedBftPhaseMessage() => create();
  factory ChainedBftPhaseMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChainedBftPhaseMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChainedBftPhaseMessage clone() =>
      ChainedBftPhaseMessage()..mergeFromMessage(this);
  ChainedBftPhaseMessage copyWith(
          void Function(ChainedBftPhaseMessage) updates) =>
      super.copyWith((message) => updates(message as ChainedBftPhaseMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChainedBftPhaseMessage create() => ChainedBftPhaseMessage._();
  ChainedBftPhaseMessage createEmptyInstance() => create();
  static $pb.PbList<ChainedBftPhaseMessage> createRepeated() =>
      $pb.PbList<ChainedBftPhaseMessage>();
  @$core.pragma('dart2js:noInline')
  static ChainedBftPhaseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChainedBftPhaseMessage>(create);
  static ChainedBftPhaseMessage _defaultInstance;

  @$pb.TagNumber(1)
  QCState get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(QCState v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get viewNumber => $_getI64(1);
  @$pb.TagNumber(2)
  set viewNumber($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasViewNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewNumber() => clearField(2);

  @$pb.TagNumber(3)
  QuorumCert get proposalQC => $_getN(2);
  @$pb.TagNumber(3)
  set proposalQC(QuorumCert v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProposalQC() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposalQC() => clearField(3);
  @$pb.TagNumber(3)
  QuorumCert ensureProposalQC() => $_ensure(2);

  @$pb.TagNumber(4)
  QuorumCert get justifyQC => $_getN(3);
  @$pb.TagNumber(4)
  set justifyQC(QuorumCert v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasJustifyQC() => $_has(3);
  @$pb.TagNumber(4)
  void clearJustifyQC() => clearField(4);
  @$pb.TagNumber(4)
  QuorumCert ensureJustifyQC() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get msgDigest => $_getN(4);
  @$pb.TagNumber(5)
  set msgDigest($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMsgDigest() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsgDigest() => clearField(5);

  @$pb.TagNumber(6)
  SignInfo get signature => $_getN(5);
  @$pb.TagNumber(6)
  set signature(SignInfo v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSignature() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignature() => clearField(6);
  @$pb.TagNumber(6)
  SignInfo ensureSignature() => $_ensure(5);
}

class ChainedBftVoteMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChainedBftVoteMessage',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'ProposalId', $pb.PbFieldType.OY,
        protoName: 'ProposalId')
    ..aOM<SignInfo>(2, 'Signature',
        protoName: 'Signature', subBuilder: SignInfo.create)
    ..hasRequiredFields = false;

  ChainedBftVoteMessage._() : super();
  factory ChainedBftVoteMessage() => create();
  factory ChainedBftVoteMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChainedBftVoteMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChainedBftVoteMessage clone() =>
      ChainedBftVoteMessage()..mergeFromMessage(this);
  ChainedBftVoteMessage copyWith(
          void Function(ChainedBftVoteMessage) updates) =>
      super.copyWith((message) => updates(message as ChainedBftVoteMessage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChainedBftVoteMessage create() => ChainedBftVoteMessage._();
  ChainedBftVoteMessage createEmptyInstance() => create();
  static $pb.PbList<ChainedBftVoteMessage> createRepeated() =>
      $pb.PbList<ChainedBftVoteMessage>();
  @$core.pragma('dart2js:noInline')
  static ChainedBftVoteMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChainedBftVoteMessage>(create);
  static ChainedBftVoteMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get proposalId => $_getN(0);
  @$pb.TagNumber(1)
  set proposalId($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProposalId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProposalId() => clearField(1);

  @$pb.TagNumber(2)
  SignInfo get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature(SignInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
  @$pb.TagNumber(2)
  SignInfo ensureSignature() => $_ensure(1);
}
