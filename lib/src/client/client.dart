part of 'package:xuper_sdk/client.dart';

class XuperClient {
  final grpc.ClientChannel _channel;
  final XchainClient _xchainServices;
  final PubsubServiceClient _pubsubServices;
  final XcheckClient _xcheckServices;
  final xendorserClient _xendorserServices;

  XchainClient get xchainServices => _xchainServices;
  PubsubServiceClient get pubsubServices => _pubsubServices;
  XcheckClient get xcheckServices => _xcheckServices;
  xendorserClient get xendorserServices => _xendorserServices;

  XuperClient._(this._channel)
      : _xchainServices = XchainClient(_channel),
        _pubsubServices = PubsubServiceClient(_channel),
        _xcheckServices = XcheckClient(_channel),
        _xendorserServices = xendorserClient(_channel);

  factory XuperClient.connect(String host, int port, {bool securable = true}) {
    final channel = grpc.ClientChannel(host,
        port: port,
        options: const grpc.ChannelOptions(
            credentials: grpc.ChannelCredentials.insecure()));
    return XuperClient._(channel);
  }

  void shutdown() => _channel.shutdown();
}
