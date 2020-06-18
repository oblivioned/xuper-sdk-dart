part of 'package:xuper_sdk/crypto.dart';

final SHA256Digest sha256digest = SHA256Digest();

Uint8List keccak256(Uint8List input) {
  sha256digest.reset();
  return sha256digest.process(input);
}

Uint8List keccakUtf8(String input) {
  return keccak256(uint8ListFromList(utf8.encode(input)));
}

Uint8List keccakAscii(String input) {
  return keccak256(ascii.encode(input));
}
