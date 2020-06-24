part of 'package:xuper_sdk/credentials.dart';

class Address {
  final Uint8List _data;
  Uint8List get bytes => utf8.encode(toString());

  Address._(this._data);

  factory Address.fromString(String address) => Address.fromBase58(address);

  factory Address.fromBase58(String base58String) =>
      Address._(Base58Decode(base58String));

  factory Address.fromPublicKey(Uint8List pub) {
    // 1.Marshal Data 4为常量，ASN1编码中定义的这个常量4，应该是表示类型
    // final pubBytes = intToBytes(pub);

    // 2.SHA256
    final pubBytesSHA = keccak256(pub);

    // 3.Ripemd160
    // 4.在头部写入地址版本
    final pubRipemd160p21 = Uint8List.fromList(
        Uint8List.fromList([1]) + RIPEMD160Digest().process(pubBytesSHA));

    // 5.双重SHA256
    final doubleSha = keccak256(keccak256(pubRipemd160p21));

    // 6.最终地址
    // Ripemd160的前21个字符 + 双重SHA256的前4个字节（校验码)
    return Address._(
        Uint8List.fromList(pubRipemd160p21 + doubleSha.sublist(0, 4)));
  }

  @override
  String toString() => Base58Encode(_data);

  @override
  int get hashCode => toString().hashCode;

  @override
  bool operator ==(Object other) =>
      other is Address &&
      toString() == other.toString();
}
