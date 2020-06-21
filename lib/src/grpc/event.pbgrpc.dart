///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'event.pb.dart' as $1;
export 'event.pb.dart';

class PubsubServiceClient extends $grpc.Client {
  static final _$subscribe = $grpc.ClientMethod<$1.EventRequest, $1.Event>(
      '/pb.PubsubService/Subscribe',
      ($1.EventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Event.fromBuffer(value));
  static final _$unsubscribe =
      $grpc.ClientMethod<$1.UnsubscribeRequest, $1.UnsubscribeResponse>(
          '/pb.PubsubService/Unsubscribe',
          ($1.UnsubscribeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UnsubscribeResponse.fromBuffer(value));

  PubsubServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$1.Event> subscribe($1.EventRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$subscribe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$1.UnsubscribeResponse> unsubscribe(
      $1.UnsubscribeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$unsubscribe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PubsubServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.PubsubService';

  PubsubServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.EventRequest, $1.Event>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.EventRequest.fromBuffer(value),
        ($1.Event value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UnsubscribeRequest, $1.UnsubscribeResponse>(
            'Unsubscribe',
            unsubscribe_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UnsubscribeRequest.fromBuffer(value),
            ($1.UnsubscribeResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$1.Event> subscribe_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EventRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Future<$1.UnsubscribeResponse> unsubscribe_Pre($grpc.ServiceCall call,
      $async.Future<$1.UnsubscribeRequest> request) async {
    return unsubscribe(call, await request);
  }

  $async.Stream<$1.Event> subscribe(
      $grpc.ServiceCall call, $1.EventRequest request);
  $async.Future<$1.UnsubscribeResponse> unsubscribe(
      $grpc.ServiceCall call, $1.UnsubscribeRequest request);
}
