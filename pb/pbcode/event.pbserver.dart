///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'event.pb.dart' as $2;
import 'event.pbjson.dart';

export 'event.pb.dart';

abstract class PubsubServiceBase extends $pb.GeneratedService {
  $async.Future<$2.Event> subscribe($pb.ServerContext ctx, $2.EventRequest request);
  $async.Future<$2.UnsubscribeResponse> unsubscribe($pb.ServerContext ctx, $2.UnsubscribeRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Subscribe': return $2.EventRequest();
      case 'Unsubscribe': return $2.UnsubscribeRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Subscribe': return this.subscribe(ctx, request);
      case 'Unsubscribe': return this.unsubscribe(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PubsubServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PubsubServiceBase$messageJson;
}

