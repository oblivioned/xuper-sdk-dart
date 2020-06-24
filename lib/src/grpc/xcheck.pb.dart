///
//  Generated code. Do not modify.
//  source: xcheck.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'xchain.pb.dart' as $0;

class ComplianceCheckResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ComplianceCheckResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$0.Header>(1, 'header', subBuilder: $0.Header.create)
    ..aOM<$0.SignatureInfo>(2, 'signature', subBuilder: $0.SignatureInfo.create)
    ..hasRequiredFields = false;

  ComplianceCheckResponse._() : super();
  factory ComplianceCheckResponse() => create();
  factory ComplianceCheckResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ComplianceCheckResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ComplianceCheckResponse clone() =>
      ComplianceCheckResponse()..mergeFromMessage(this);
  ComplianceCheckResponse copyWith(
          void Function(ComplianceCheckResponse) updates) =>
      super.copyWith((message) => updates(message as ComplianceCheckResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComplianceCheckResponse create() => ComplianceCheckResponse._();
  ComplianceCheckResponse createEmptyInstance() => create();
  static $pb.PbList<ComplianceCheckResponse> createRepeated() =>
      $pb.PbList<ComplianceCheckResponse>();
  @$core.pragma('dart2js:noInline')
  static ComplianceCheckResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComplianceCheckResponse>(create);
  static ComplianceCheckResponse _defaultInstance;

  @$pb.TagNumber(1)
  $0.Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.Header v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.SignatureInfo get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($0.SignatureInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
  @$pb.TagNumber(2)
  $0.SignatureInfo ensureSignature() => $_ensure(1);
}

class TransferCheckResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransferCheckResponse',
      package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$0.Header>(1, 'header', subBuilder: $0.Header.create)
    ..aOM<$0.SignatureInfo>(2, 'signature', subBuilder: $0.SignatureInfo.create)
    ..hasRequiredFields = false;

  TransferCheckResponse._() : super();
  factory TransferCheckResponse() => create();
  factory TransferCheckResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransferCheckResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TransferCheckResponse clone() =>
      TransferCheckResponse()..mergeFromMessage(this);
  TransferCheckResponse copyWith(
          void Function(TransferCheckResponse) updates) =>
      super.copyWith((message) => updates(message as TransferCheckResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransferCheckResponse create() => TransferCheckResponse._();
  TransferCheckResponse createEmptyInstance() => create();
  static $pb.PbList<TransferCheckResponse> createRepeated() =>
      $pb.PbList<TransferCheckResponse>();
  @$core.pragma('dart2js:noInline')
  static TransferCheckResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferCheckResponse>(create);
  static TransferCheckResponse _defaultInstance;

  @$pb.TagNumber(1)
  $0.Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($0.Header v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $0.Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.SignatureInfo get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($0.SignatureInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
  @$pb.TagNumber(2)
  $0.SignatureInfo ensureSignature() => $_ensure(1);
}
