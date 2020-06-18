///
//  Generated code. Do not modify.
//  source: xendorser.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'xendorser.pb.dart' as $4;
import 'xendorser.pbjson.dart';

export 'xendorser.pb.dart';

abstract class xendorserServiceBase extends $pb.GeneratedService {
  $async.Future<$4.EndorserResponse> endorserCall($pb.ServerContext ctx, $4.EndorserRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'EndorserCall': return $4.EndorserRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'EndorserCall': return this.endorserCall(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => xendorserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => xendorserServiceBase$messageJson;
}

