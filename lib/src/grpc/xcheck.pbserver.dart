///
//  Generated code. Do not modify.
//  source: xcheck.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'xchain.pb.dart' as $1;
import 'xcheck.pb.dart' as $3;
import 'xcheck.pbjson.dart';

export 'xcheck.pb.dart';

abstract class XcheckServiceBase extends $pb.GeneratedService {
  $async.Future<$3.ComplianceCheckResponse> complianceCheck($pb.ServerContext ctx, $1.TxStatus request);
  $async.Future<$3.TransferCheckResponse> transferCheck($pb.ServerContext ctx, $1.TxStatus request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'ComplianceCheck': return $1.TxStatus();
      case 'TransferCheck': return $1.TxStatus();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'ComplianceCheck': return this.complianceCheck(ctx, request);
      case 'TransferCheck': return this.transferCheck(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => XcheckServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => XcheckServiceBase$messageJson;
}

