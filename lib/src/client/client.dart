part of 'package:xuper_sdk/client.dart';

enum XuperServicesType { Main, Pubsub, Check, Endorser }

class XuperClientChannel {
  final String host;
  final int port;
  final bool securable;

  const XuperClientChannel({this.host, this.port, this.securable = true});

  grpc.ClientChannel get grpChannel => grpc.ClientChannel(host,
      port: port,
      options: grpc.ChannelOptions(
          credentials: securable
              ? grpc.ChannelCredentials.secure()
              : grpc.ChannelCredentials.insecure()));
}

class XuperClient {
  // 可以为不同的子服务单独配置结点
  final Map<XuperServicesType, grpc.ClientChannel> _channelConfig;

  XchainClient _xchainServices;
  PubsubServiceClient _pubsubServices;
  XcheckClient _xcheckServices;
  xendorserClient _xendorserServices;

  Map<XuperServicesType, grpc.ClientChannel> get channels => _channelConfig;

  XchainClient get xchainServices =>
      _xchainServices ??= XchainClient(_channelConfig[XuperServicesType.Main]);

  PubsubServiceClient get pubsubServices => _pubsubServices ??=
      PubsubServiceClient(_channelConfig[XuperServicesType.Main]);

  XcheckClient get xcheckServices =>
      _xcheckServices ??= XcheckClient(_channelConfig[XuperServicesType.Main]);

  xendorserClient get xendorserServices => _xendorserServices ??=
      xendorserClient(_channelConfig[XuperServicesType.Main]);

  XuperClient._(this._channelConfig);

  factory XuperClient.connectMap(
      Map<XuperServicesType, XuperClientChannel> channelMap) {
    // 如果需要单独为每一个Services配置Channel，则必须指定全部的Channel
    assert(channelMap.keys.toSet().containsAll(XuperServicesType.values));

    return XuperClient._(
        channelMap.map((t, channel) => MapEntry(t, channel.grpChannel)));
  }

  factory XuperClient.connect(XuperClientChannel channel) =>
      XuperClient._(XuperServicesType.values
          .asMap()
          .map((_, v) => MapEntry(v, channel.grpChannel)));

  void shutdown() => _channelConfig.forEach((_, v) async => await v.shutdown());
}
