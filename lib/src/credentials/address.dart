part of 'package:xuper_sdk/credentials.dart';

class Address {
  final Uint8List _bytes;
  Uint8List get bytes => _bytes;

  Address._(this._bytes);

  factory Address.fromPublicKeyBytes(Uint8List pub) => Address.fromPublicKey(bytesToInt(pub));

  factory Address.fromBase58(String base58String) =>
      Address._(Base58Decode(base58String));

  factory Address.fromPublicKey(BigInt pub) {

    // 1.Marshal Data 4为常量，暂时不知表示的意思
    final pubBytes = intToBytes(pub);

    // 2.SHA256
    final pubBytesSHA = keccak256(pubBytes);

    // 3.Ripemd160
    // 4.在头部写入地址版本
    final pubRipemd160p21 = Uint8List.fromList(Uint8List.fromList([1]) + RIPEMD160Digest().process(pubBytesSHA));

    // 5.双重SHA256
    final doubleSha = keccak256(keccak256(pubRipemd160p21));

    // 6.最终地址
    // Ripemd160的前21个字符 + 双重SHA256的前4个字节（校验码)
    return Address._(Uint8List.fromList(pubRipemd160p21 + doubleSha.sublist(0, 4)) );
  }

  @override
  String toString() => Base58Encode(_bytes);

  @override
  bool operator ==(Object other) =>
      other is Address &&
      runtimeType == other.runtimeType &&
      _bytes == other.bytes;
}
