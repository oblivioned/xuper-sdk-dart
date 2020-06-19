part of 'package:xuper_sdk/credentials.dart';

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

class AK {
  final ECDomainParameters _params;
  final BigInt _privateKey;
  final _KeyDerivator _derivator;

  BigInt _publicKey;
  Address _address;

  BigInt get privateKey => _privateKey;
  BigInt get publickKey => _publicKey;
  Address get address => _address;

  AK._(this._params, this._privateKey, this._derivator) {
    _publicKey = bytesToInt(
        Uint8List.view((_params.G * privateKey).getEncoded(false).buffer, 1));
    _address = Address.fromPublicKey(_publicKey);
  }

  factory AK.generateKey({AKCurve curve = AKCurve.P256}) {
    final params = _eccurveParametersFrom(curve);
    final keyParams = ECKeyGeneratorParameters(params);
    final generator = ECKeyGenerator()
      ..init(ParametersWithRandom(keyParams, RandomBridge(Random.secure())));

    return AK._(
        params, (generator.generateKeyPair().privateKey as ECPrivateKey).d);
  }

  factory AK.fromPrivateKey(BigInt d, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), d);

  factory AK.fromHex(String hex, {AKCurve curve = AKCurve.P256}) =>
      AK._(_eccurveParametersFrom(curve), bytesToInt(hexToBytes(hex)));

  String toJson() {
    final ciphertextBytes = _encryptPrivateKey();

    final map = {
      'crypto': {
        'cipher': 'aes-128-ctr',
        'cipherparams': {'iv': bytesToHex(_iv)},
        'ciphertext': bytesToHex(ciphertextBytes),
        'kdf': _derivator.name,
        'kdfparams': _derivator.encode(),
        'mac': _generateMac(_derivator.deriveKey(_password), ciphertextBytes),
      },
      'id': uuid,
      'version': 3,
    };

    return json.encode(map);
  }

  List<int> _encryptPrivateKey() {
    final derived = _derivator.deriveKey(_password);
    final aesKey = Uint8List.view(derived.buffer, 0, 16);

    final aes = _initCipher(true, aesKey, _iv);
    return aes.process(privateKey.privateKey);
  }
}

abstract class _KeyDerivator {
  Uint8List deriveKey(Uint8List password);

  String get name;
  Map<String, dynamic> encode();
}

class _PBDKDF2KeyDerivator extends _KeyDerivator {
  final int iterations;
  final Uint8List salt;
  final int dklen;

  // The docs (https://github.com/ethereum/wiki/wiki/Web3-Secret-Storage-Definition)
  // say that HMAC with SHA-256 is the only mac supported at the moment
  static final Mac mac = HMac(SHA256Digest(), 64);

  _PBDKDF2KeyDerivator(this.iterations, this.salt, this.dklen);

  @override
  Uint8List deriveKey(Uint8List password) {
    final impl = pbkdf2.PBKDF2KeyDerivator(mac)
      ..init(Pbkdf2Parameters(salt, iterations, dklen));

    return impl.process(password);
  }

  @override
  Map<String, dynamic> encode() {
    return {
      'c': iterations,
      'dklen': dklen,
      'prf': 'hmac-sha256',
      'salt': bytesToHex(salt)
    };
  }

  @override
  final String name = 'pbkdf2';
}

class _ScryptKeyDerivator extends _KeyDerivator {
  final int dklen;
  final int n;
  final int r;
  final int p;
  final Uint8List salt;

  _ScryptKeyDerivator(this.dklen, this.n, this.r, this.p, this.salt);

  @override
  Uint8List deriveKey(Uint8List password) {
    final impl = scrypt.Scrypt()..init(ScryptParameters(n, r, p, dklen, salt));

    return impl.process(password);
  }

  @override
  Map<String, dynamic> encode() {
    return {
      'dklen': dklen,
      'n': n,
      'r': r,
      'p': p,
      'salt': bytesToHex(salt),
    };
  }

  @override
  final String name = 'scrypt';
}
