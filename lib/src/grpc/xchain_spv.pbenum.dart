///
//  Generated code. Do not modify.
//  source: xchain_spv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ReturnCode extends $pb.ProtobufEnum {
  static const ReturnCode RETURNSUCCESS = ReturnCode._(0, 'RETURNSUCCESS');
  static const ReturnCode INTERNALERR = ReturnCode._(101000, 'INTERNALERR');
  static const ReturnCode FILENOTEXIST = ReturnCode._(101002, 'FILENOTEXIST');
  static const ReturnCode PARAMERR = ReturnCode._(101003, 'PARAMERR');
  static const ReturnCode HTTPREQUERTFAIL = ReturnCode._(101004, 'HTTPREQUERTFAIL');
  static const ReturnCode HTTPRESPONSEFAIL = ReturnCode._(101005, 'HTTPRESPONSEFAIL');
  static const ReturnCode ACCOUNTNOTEXIST = ReturnCode._(101008, 'ACCOUNTNOTEXIST');
  static const ReturnCode PWNOTEXIST = ReturnCode._(101009, 'PWNOTEXIST');
  static const ReturnCode PWEXIST = ReturnCode._(101010, 'PWEXIST');
  static const ReturnCode NOTLOGIN = ReturnCode._(101012, 'NOTLOGIN');
  static const ReturnCode CONNECTNODEFAIL = ReturnCode._(102001, 'CONNECTNODEFAIL');
  static const ReturnCode UTXONOTENOUGH = ReturnCode._(102002, 'UTXONOTENOUGH');
  static const ReturnCode ADDRESSINVALID = ReturnCode._(102003, 'ADDRESSINVALID');
  static const ReturnCode FEEINVALID = ReturnCode._(102004, 'FEEINVALID');
  static const ReturnCode CONNECTREFUSED = ReturnCode._(102005, 'CONNECTREFUSED');
  static const ReturnCode UTXOENCRYPTERR = ReturnCode._(102006, 'UTXOENCRYPTERR');
  static const ReturnCode FEENOTENOUGN = ReturnCode._(102007, 'FEENOTENOUGN');
  static const ReturnCode PARAMSINVALID = ReturnCode._(102008, 'PARAMSINVALID');
  static const ReturnCode TXSIGNERR = ReturnCode._(102009, 'TXSIGNERR');
  static const ReturnCode REPOSTTXERR = ReturnCode._(102010, 'REPOSTTXERR');
  static const ReturnCode BLOCKCHAINNOTEXIST = ReturnCode._(102011, 'BLOCKCHAINNOTEXIST');
  static const ReturnCode SERVERERR = ReturnCode._(102012, 'SERVERERR');

  static const $core.List<ReturnCode> values = <ReturnCode> [
    RETURNSUCCESS,
    INTERNALERR,
    FILENOTEXIST,
    PARAMERR,
    HTTPREQUERTFAIL,
    HTTPRESPONSEFAIL,
    ACCOUNTNOTEXIST,
    PWNOTEXIST,
    PWEXIST,
    NOTLOGIN,
    CONNECTNODEFAIL,
    UTXONOTENOUGH,
    ADDRESSINVALID,
    FEEINVALID,
    CONNECTREFUSED,
    UTXOENCRYPTERR,
    FEENOTENOUGN,
    PARAMSINVALID,
    TXSIGNERR,
    REPOSTTXERR,
    BLOCKCHAINNOTEXIST,
    SERVERERR,
  ];

  static final $core.Map<$core.int, ReturnCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ReturnCode valueOf($core.int value) => _byValue[value];

  const ReturnCode._($core.int v, $core.String n) : super(v, n);
}

