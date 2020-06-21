part of 'package:xuper_sdk/credentials.dart';

abstract class Credentials {
  Uint8List get privateKey;
  Uint8List get publickKey;
  Address get address;

  pb.SignatureInfo sign(Uint8List data, {bool digestBeforSign = false});
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

  ECPoint _publicKey;
  Address _address;

  @override
  Uint8List get privateKey => intToBytes(_privateKey);

  @override
  Uint8List get publickKey =>
      Uint8List.view(_publicKey.getEncoded(false).buffer, 0);

  @override
  Address get address => _address;

  AK._(this._params, this._privateKey) {
    _publicKey = _params.G * _privateKey;
    _address = Address.fromPublicKey(publickKey);
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

  @override
  pb.SignatureInfo sign(Uint8List data, {bool digestBeforSign = false}) {
    final signer = ECDSASigner(
        digestBeforSign ? SHA256Digest() : null, Mac('SHA-256/HMAC'))
      ..init(true, PrivateKeyParameter(ECPrivateKey(_privateKey, _params)));

    final sig = signer.generateSignature(data) as ECSignature;

    final ecdsaSigASN = ASN1Sequence()
      ..add(ASN1Integer(sig.r))
      ..add(ASN1Integer(sig.s));

    final pubASN = ASN1Sequence()
      ..add(ASN1Integer(_publicKey.x.toBigInteger()))
      ..add(ASN1Integer(_publicKey.y.toBigInteger()));

    final pbSiginfo = pb.SignatureInfo.create();
    pbSiginfo.publicKey = base64Encode(pubASN.encodedBytes);
    pbSiginfo.sign = ecdsaSigASN.encodedBytes;

    return pbSiginfo;
  }

  bool verify(Uint8List data, pb.SignatureInfo sig,
      {bool digestBeforVerify = false}) {
    final p = (ASN1Parser(sig.sign).nextObject() as ASN1Sequence)
        .elements
        .cast<ASN1Integer>();

    final verifyer = ECDSASigner(
        digestBeforVerify ? SHA256Digest() : null, Mac('SHA-256/HMAC'))
      ..init(false, PublicKeyParameter(ECPublicKey(_publicKey, _params)));

    return verifyer.verifySignature(
        data, ECSignature(p[0].valueAsBigInteger, p[1].valueAsBigInteger));
  }
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
