part of 'package:xuper_sdk/credentials.dart';

abstract class AK {

}

final ECDomainParameters _params = ECCurve_secp256k1();
class AK_ECDSA implements AK {

    final BigInt _privateKey;
    BigInt get privateKey => _privateKey;

    final BigInt _publicKey;
    BigInt get publickKey => _publicKey;

    Address _address;
    Address get address => _address;

    AK_ECDSA(this._privateKey) : _publicKey = bytesToInt(Uint8List.view((_params.G * _privateKey).getEncoded(false).buffer, 1)) {
        _address = Address.fromPublicKey(_publicKey);
    }

    factory AK_ECDSA.generateKey() => AK_ECDSA(generateNewPrivateKey(Random.secure()));

    factory AK_ECDSA.fromHex(String hex) => AK_ECDSA(bytesToInt(hexToBytes(hex)));

    // factory AK_ECDSA.fromParams(BigInt x, BigInt y, BigInt d) {
    //
    //
    //     final key = ECPrivateKey(d, _params);
    //
    //     final pubPoint = _params.curve.createPoint(x, y);
    //
    //     final pub = ECPublicKey(pubPoint, _params);
    // }
}
