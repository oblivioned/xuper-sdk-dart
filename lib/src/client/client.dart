part of 'package:xuper_sdk/client.dart';

class XuperClient {
  final XchainClient _xchainServices;
  final PubsubServiceClient _pubsubServices;
  final XcheckClient _xcheckServices;
  final xendorserClient _xendorserServices;

  XchainClient get xchainServices => _xchainServices;
  PubsubServiceClient get pubsubServices => _pubsubServices;
  XcheckClient get xcheckServices => _xcheckServices;
  xendorserClient get xendorserServices => _xendorserServices;

  XuperClient._(this._xchainServices, this._pubsubServices,
      this._xcheckServices, this._xendorserServices);

  factory XuperClient.connect(String host, int port, {bool securable = true}) {
    final channel = grpc.ClientChannel(host,
        port: port,
        options: const grpc.ChannelOptions(
            credentials: grpc.ChannelCredentials.insecure()));
    return XuperClient._(XchainClient(channel), PubsubServiceClient(channel),
        XcheckClient(channel), xendorserClient(channel));
  }
}
