part of 'package:xuper_sdk/credentials.dart';

abstract class Credentials {
  BigInt get privateKey;
  String get privateKeyHex;
  String get privateKeyBase64;

  BigInt get publickKey;
  String get publickKeyHex;
  String get publickKeyBase64;

  Address get address;

  // SignatureInfo signMessageBytes(Uint8List data);
  // SignatureInfo signMessage(String message);
}

enum AKCurve {
  // prime256v1
  P256,
  // GM2
}

ECDomainParameters _eccurveParametersFrom(AKCurve c) {
  switch (c) {
    case AKCurve.P256:
      return ECCurve_prime256v1();
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
  String get privateKeyBase64 => base64.encode(intToBytes(_privateKey));

  @override
  BigInt get publickKey => _publicKey;

  @override
  String get publickKeyHex =>
      bytesToHex(intToBytes(_publicKey), include0x: true);

  @override
  String get publickKeyBase64 => base64.encode(intToBytes(_publicKey));

  @override
  Address get address => _address;

  AK._(this._params, this._privateKey) {
    _publicKey = bytesToInt(
        Uint8List.view((_params.G * _privateKey).getEncoded(false).buffer, 0));
    _address = Address.fromPublicKey(_publicKey);
  }

  factory AK.generateKey({AKCurve curve = AKCurve.P256}) {
    final params = _eccurveParametersFrom(curve);
    final generator = ECKeyGenerator();
    final keyParams = ECKeyGeneratorParameters(params);

    generator
        .init(ParametersWithRandom(keyParams, RandomBridge(Random.secure())));

    final key = generator.generateKeyPair();
    final privateKey = key.privateKey as ECPrivateKey;

    return AK._(params, privateKey.d);
  }

  factory AK.fromPrivateKey(BigInt d, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), d);

  factory AK.fromPrivateKeyBytes(Uint8List d, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), bytesToInt(d));

  factory AK.fromHex(String hex, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), bytesToInt(hexToBytes(hex)));

  String _sign(Uint8List data) {
    final ctr = BlockCipher('AES/CTR');

    print(ECDSASigner.FACTORY_CONFIG.type.toString());
    final signer = ECDSASigner(SHA256Digest(), HMac(SHA512Digest(), 128))
      ..init(true, PrivateKeyParameter(ECPrivateKey(privateKey, _params)));

    var sig = signer.generateSignature(data) as ECSignature;

    // final info = SignatureInfo.create();
    // info.publicKey = publickKeyBase64;
    // info.sign = sig.toString();

    print('R: ${sig.r.toString()}');
    print('S: ${sig.s.toString()}');
    final r = padUint8ListTo32(intToBytes(sig.r));
    final s = padUint8ListTo32(intToBytes(sig.s));

    return base64.encode(s + r);
  }

  // SignatureInfo signMessageBytes(Uint8List data) {
  //     final prefix = _messagePrefix + payload.length.toString();
  //   final prefixBytes = ascii.encode(prefix);
  //
  //   // will be a Uint8List, see the documentation of Uint8List.+
  //   final concat = uint8ListFromList(prefixBytes + payload);
  //
  //   return sign(concat, chainId: chainId);
  // }
  //
  // @override
  String signMessage(String message) => _sign(utf8.encode(message));
}

// GM2
// #参数P
// set sm2_p FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF
// #参数A
// set sm2_a FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC
// #参数B
// set sm2_b 28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93
// #参数N
// set sm2_n FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123
// #参数Xg
// set sm2_gx 32C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7
// #参数Yg
// set sm2_gy BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0
// #参数h
// set sm2_h 00000001
