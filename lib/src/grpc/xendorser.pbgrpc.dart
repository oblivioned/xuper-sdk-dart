///
//  Generated code. Do not modify.
//  source: xendorser.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'xendorser.pb.dart' as $3;
export 'xendorser.pb.dart';

class xendorserClient extends $grpc.Client {
  static final _$endorserCall =
      $grpc.ClientMethod<$3.EndorserRequest, $3.EndorserResponse>(
          '/pb.xendorser/EndorserCall',
          ($3.EndorserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.EndorserResponse.fromBuffer(value));

  xendorserClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.EndorserResponse> endorserCall(
      $3.EndorserRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$endorserCall, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class xendorserServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.xendorser';

  xendorserServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.EndorserRequest, $3.EndorserResponse>(
        'EndorserCall',
        endorserCall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.EndorserRequest.fromBuffer(value),
        ($3.EndorserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.EndorserResponse> endorserCall_Pre(
      $grpc.ServiceCall call, $async.Future<$3.EndorserRequest> request) async {
    return endorserCall(call, await request);
  }

  $async.Future<$3.EndorserResponse> endorserCall(
      $grpc.ServiceCall call, $3.EndorserRequest request);
}
