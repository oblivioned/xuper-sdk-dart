part of 'package:xuper_sdk/credentials.dart';

abstract class Credentials {
  BigInt get privateKey;
  String get privateKeyHex;
  BigInt get publickKey;
  Address get address;
}

enum AKCurve {
  //prime256v1
  P256
}

ECDomainParameters _eccurveParametersFrom(AKCurve c) {
  switch (c) {
    default:
      return ECCurve_prime256v1();
  }
}

class AK implements Credentials {
  final ECDomainParameters _params;
  final BigInt _privateKey;

  BigInt _publicKey;
  Address _address;

  @override
  BigInt get privateKey => _privateKey;

  @override
  String get privateKeyHex =>
      bytesToHex(intToBytes(_privateKey), include0x: true);

  @override
  BigInt get publickKey => _publicKey;

  @override
  Address get address => _address;

  AK._(this._params, this._privateKey) {
    _publicKey = bytesToInt(
        Uint8List.view((_params.G * _privateKey).getEncoded(false).buffer, 0));
    _address = Address.fromPublicKey(_publicKey);
  }

  factory AK.generateKey({AKCurve curve = AKCurve.P256}) => AK._(
      _eccurveParametersFrom(curve), generateNewPrivateKey(Random.secure()));

  factory AK.fromPrivateKey(BigInt d, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), d);

  factory AK.fromPrivateKeyBytes(Uint8List d, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), bytesToInt(d));

  factory AK.fromHex(String hex, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), bytesToInt(hexToBytes(hex)));
}
