part of 'package:xuper_sdk/tx.dart';

class _Error<C> {
  final C code;
  const _Error(this.code);
  String toString() => '{code=$code, domain=${code.toString()}}';
}

enum SignerErrorType {
  /// 缺失initor签名
  NoInitorSignature,

  /// 提供的AuthRequires签名不足以发送交易
  NotEnoughAuthSignature,

  /// 提供的initor签名验证失败
  InitorSignatureInvalid,

  /// 授权地址对应的签名验证失败
  AuthRequiresSignatureInvalid
}

class SignerError extends _Error<SignerErrorType> {
  const SignerError(SignerErrorType code) : super(code);
}
