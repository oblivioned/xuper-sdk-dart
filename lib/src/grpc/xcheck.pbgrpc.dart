///
//  Generated code. Do not modify.
//  source: xcheck.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'xchain.pb.dart' as $0;
import 'xcheck.pb.dart' as $2;
export 'xcheck.pb.dart';

class XcheckClient extends $grpc.Client {
  static final _$complianceCheck =
      $grpc.ClientMethod<$0.TxStatus, $2.ComplianceCheckResponse>(
          '/pb.Xcheck/ComplianceCheck',
          ($0.TxStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ComplianceCheckResponse.fromBuffer(value));
  static final _$transferCheck =
      $grpc.ClientMethod<$0.TxStatus, $2.TransferCheckResponse>(
          '/pb.Xcheck/TransferCheck',
          ($0.TxStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.TransferCheckResponse.fromBuffer(value));

  XcheckClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.ComplianceCheckResponse> complianceCheck(
      $0.TxStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$complianceCheck, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$2.TransferCheckResponse> transferCheck(
      $0.TxStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$transferCheck, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class XcheckServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.Xcheck';

  XcheckServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TxStatus, $2.ComplianceCheckResponse>(
        'ComplianceCheck',
        complianceCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TxStatus.fromBuffer(value),
        ($2.ComplianceCheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TxStatus, $2.TransferCheckResponse>(
        'TransferCheck',
        transferCheck_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TxStatus.fromBuffer(value),
        ($2.TransferCheckResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ComplianceCheckResponse> complianceCheck_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TxStatus> request) async {
    return complianceCheck(call, await request);
  }

  $async.Future<$2.TransferCheckResponse> transferCheck_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TxStatus> request) async {
    return transferCheck(call, await request);
  }

  $async.Future<$2.ComplianceCheckResponse> complianceCheck(
      $grpc.ServiceCall call, $0.TxStatus request);
  $async.Future<$2.TransferCheckResponse> transferCheck(
      $grpc.ServiceCall call, $0.TxStatus request);
}
