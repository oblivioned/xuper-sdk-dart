part of 'package:xuper_sdk/credentials.dart';

class Address {
  final Uint8List _bytes;
  Uint8List get bytes => _bytes;

  Address(this._bytes);

  factory Address.fromBase58(String base58String) =>
      Address(Base58Decode(base58String));

  factory Address.fromPublicKey(BigInt pub) {
    // 1.Marshal Data
    final pubBytes = intToBytes(pub);
    pubBytes.insert(0, 4);

    // 2.SHA256
    final pubBytesSHA = keccak256(pubBytes);

    // 3.Ripemd160
    final pubRipemd160 = RIPEMD160Digest().process(pubBytesSHA);

    // 4.在头部写入地址版本
    // default: 1
    // CurveNist/CurveGm : 2
    // CurveNistSN: 3
    pubRipemd160.insert(0, 1);

    // 5.双重SHA256
    final doubleSha = keccak256(keccak256(pubBytes));

    // 6.最终地址
    // Ripemd160的前21个字符 + 双重SHA256的前4个字节（校验码)
    final addressBytes = pubRipemd160.sublist(0, 21)
      ..insertAll(0, doubleSha.getRange(0, 4));

    return Address(addressBytes);
  }

  @override
  String toString() => Base58Encode(_bytes);

  @override
  bool operator ==(Object other) =>
      other is Address &&
      runtimeType == other.runtimeType &&
      _bytes == other.bytes;
}
