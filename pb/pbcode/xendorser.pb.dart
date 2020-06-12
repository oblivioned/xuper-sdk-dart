///
//  Generated code. Do not modify.
//  source: xendorser.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'xchain.pb.dart' as $1;

class EndorserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EndorserRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$1.Header>(1, 'header', subBuilder: $1.Header.create)
    ..aOS(2, 'RequestName', protoName: 'RequestName')
    ..aOS(3, 'BcName', protoName: 'BcName')
    ..aOM<$1.Transaction>(4, 'Fee', protoName: 'Fee', subBuilder: $1.Transaction.create)
    ..a<$core.List<$core.int>>(5, 'RequestData', $pb.PbFieldType.OY, protoName: 'RequestData')
    ..hasRequiredFields = false
  ;

  EndorserRequest._() : super();
  factory EndorserRequest() => create();
  factory EndorserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndorserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EndorserRequest clone() => EndorserRequest()..mergeFromMessage(this);
  EndorserRequest copyWith(void Function(EndorserRequest) updates) => super.copyWith((message) => updates(message as EndorserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EndorserRequest create() => EndorserRequest._();
  EndorserRequest createEmptyInstance() => create();
  static $pb.PbList<EndorserRequest> createRepeated() => $pb.PbList<EndorserRequest>();
  @$core.pragma('dart2js:noInline')
  static EndorserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndorserRequest>(create);
  static EndorserRequest _defaultInstance;

  @$pb.TagNumber(1)
  $1.Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($1.Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $1.Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get requestName => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bcName => $_getSZ(2);
  @$pb.TagNumber(3)
  set bcName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBcName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBcName() => clearField(3);

  @$pb.TagNumber(4)
  $1.Transaction get fee => $_getN(3);
  @$pb.TagNumber(4)
  set fee($1.Transaction v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearFee() => clearField(4);
  @$pb.TagNumber(4)
  $1.Transaction ensureFee() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get requestData => $_getN(4);
  @$pb.TagNumber(5)
  set requestData($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestData() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestData() => clearField(5);
}

class EndorserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EndorserResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<$1.Header>(1, 'header', subBuilder: $1.Header.create)
    ..aOS(2, 'ResponseName', protoName: 'ResponseName')
    ..aOS(3, 'EndorserAddress', protoName: 'EndorserAddress')
    ..aOM<$1.SignatureInfo>(4, 'EndorserSign', protoName: 'EndorserSign', subBuilder: $1.SignatureInfo.create)
    ..a<$core.List<$core.int>>(5, 'ResponseData', $pb.PbFieldType.OY, protoName: 'ResponseData')
    ..hasRequiredFields = false
  ;

  EndorserResponse._() : super();
  factory EndorserResponse() => create();
  factory EndorserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndorserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EndorserResponse clone() => EndorserResponse()..mergeFromMessage(this);
  EndorserResponse copyWith(void Function(EndorserResponse) updates) => super.copyWith((message) => updates(message as EndorserResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EndorserResponse create() => EndorserResponse._();
  EndorserResponse createEmptyInstance() => create();
  static $pb.PbList<EndorserResponse> createRepeated() => $pb.PbList<EndorserResponse>();
  @$core.pragma('dart2js:noInline')
  static EndorserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndorserResponse>(create);
  static EndorserResponse _defaultInstance;

  @$pb.TagNumber(1)
  $1.Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header($1.Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  $1.Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get responseName => $_getSZ(1);
  @$pb.TagNumber(2)
  set responseName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseName() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get endorserAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set endorserAddress($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndorserAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndorserAddress() => clearField(3);

  @$pb.TagNumber(4)
  $1.SignatureInfo get endorserSign => $_getN(3);
  @$pb.TagNumber(4)
  set endorserSign($1.SignatureInfo v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndorserSign() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndorserSign() => clearField(4);
  @$pb.TagNumber(4)
  $1.SignatureInfo ensureEndorserSign() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get responseData => $_getN(4);
  @$pb.TagNumber(5)
  set responseData($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasResponseData() => $_has(4);
  @$pb.TagNumber(5)
  void clearResponseData() => clearField(5);
}

class xendorserApi {
  $pb.RpcClient _client;
  xendorserApi(this._client);

  $async.Future<EndorserResponse> endorserCall($pb.ClientContext ctx, EndorserRequest request) {
    var emptyResponse = EndorserResponse();
    return _client.invoke<EndorserResponse>(ctx, 'xendorser', 'EndorserCall', request, emptyResponse);
  }
}

