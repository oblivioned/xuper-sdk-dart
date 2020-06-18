///
//  Generated code. Do not modify.
//  source: xendorser.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'xchain.pbjson.dart' as $1;

const EndorserRequest$json = const {
  '1': 'EndorserRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'RequestName', '3': 2, '4': 1, '5': 9, '10': 'RequestName'},
    const {'1': 'BcName', '3': 3, '4': 1, '5': 9, '10': 'BcName'},
    const {'1': 'Fee', '3': 4, '4': 1, '5': 11, '6': '.pb.Transaction', '10': 'Fee'},
    const {'1': 'RequestData', '3': 5, '4': 1, '5': 12, '10': 'RequestData'},
  ],
};

const EndorserResponse$json = const {
  '1': 'EndorserResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'ResponseName', '3': 2, '4': 1, '5': 9, '10': 'ResponseName'},
    const {'1': 'EndorserAddress', '3': 3, '4': 1, '5': 9, '10': 'EndorserAddress'},
    const {'1': 'EndorserSign', '3': 4, '4': 1, '5': 11, '6': '.pb.SignatureInfo', '10': 'EndorserSign'},
    const {'1': 'ResponseData', '3': 5, '4': 1, '5': 12, '10': 'ResponseData'},
  ],
};

const xendorserServiceBase$json = const {
  '1': 'xendorser',
  '2': const [
    const {'1': 'EndorserCall', '2': '.pb.EndorserRequest', '3': '.pb.EndorserResponse', '4': const {}},
  ],
};

const xendorserServiceBase$messageJson = const {
  '.pb.EndorserRequest': EndorserRequest$json,
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
  '.pb.EndorserResponse': EndorserResponse$json,
};

