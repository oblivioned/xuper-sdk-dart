///
//  Generated code. Do not modify.
//  source: xcheck.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'xchain.pbjson.dart' as $1;

const ComplianceCheckResponse$json = const {
  '1': 'ComplianceCheckResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 11, '6': '.pb.SignatureInfo', '10': 'signature'},
  ],
};

const TransferCheckResponse$json = const {
  '1': 'TransferCheckResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 11, '6': '.pb.SignatureInfo', '10': 'signature'},
  ],
};

const XcheckServiceBase$json = const {
  '1': 'Xcheck',
  '2': const [
    const {'1': 'ComplianceCheck', '2': '.pb.TxStatus', '3': '.pb.ComplianceCheckResponse'},
    const {'1': 'TransferCheck', '2': '.pb.TxStatus', '3': '.pb.TransferCheckResponse'},
  ],
};

const XcheckServiceBase$messageJson = const {
  '.pb.TxStatus': $1.TxStatus$json,
  '.pb.Header': $1.Header$json,
  '.pb.Transaction': $1.Transaction$json,
  '.pb.TxInput': $1.TxInput$json,
  '.pb.TxOutput': $1.TxOutput$json,
  '.pb.TxInputExt': $1.TxInputExt$json,
  '.pb.TxOutputExt': $1.TxOutputExt$json,
  '.pb.InvokeRequest': $1.InvokeRequest$json,
  '.pb.InvokeRequest.ArgsEntry': $1.InvokeRequest_ArgsEntry$json,
  '.pb.ResourceLimit': $1.ResourceLimit$json,
  '.pb.SignatureInfo': $1.SignatureInfo$json,
  '.pb.XuperSignature': $1.XuperSignature$json,
  '.pb.ModifyBlock': $1.ModifyBlock$json,
  '.pb.HDInfo': $1.HDInfo$json,
  '.pb.ComplianceCheckResponse': ComplianceCheckResponse$json,
  '.pb.TransferCheckResponse': TransferCheckResponse$json,
};

