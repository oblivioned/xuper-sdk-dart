///
//  Generated code. Do not modify.
//  source: chainedbft.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const QCState$json = const {
  '1': 'QCState',
  '2': const [
    const {'1': 'NEW_VIEW', '2': 0},
    const {'1': 'PREPARE', '2': 1},
    const {'1': 'PRE_COMMIT', '2': 2},
    const {'1': 'COMMIT', '2': 3},
    const {'1': 'DECIDE', '2': 4},
  ],
};

const QuorumCert$json = const {
  '1': 'QuorumCert',
  '2': const [
    const {'1': 'ProposalId', '3': 1, '4': 1, '5': 12, '10': 'ProposalId'},
    const {'1': 'ProposalMsg', '3': 2, '4': 1, '5': 12, '10': 'ProposalMsg'},
    const {
      '1': 'Type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.pb.QCState',
      '10': 'Type'
    },
    const {'1': 'ViewNumber', '3': 4, '4': 1, '5': 3, '10': 'ViewNumber'},
    const {
      '1': 'SignInfos',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.pb.QCSignInfos',
      '10': 'SignInfos'
    },
  ],
};

const QCSignInfos$json = const {
  '1': 'QCSignInfos',
  '2': const [
    const {
      '1': 'QCSignInfos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.SignInfo',
      '10': 'QCSignInfos'
    },
  ],
};

const SignInfo$json = const {
  '1': 'SignInfo',
  '2': const [
    const {'1': 'Address', '3': 1, '4': 1, '5': 9, '10': 'Address'},
    const {'1': 'PublicKey', '3': 2, '4': 1, '5': 9, '10': 'PublicKey'},
    const {'1': 'Sign', '3': 3, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

const ChainedBftPhaseMessage$json = const {
  '1': 'ChainedBftPhaseMessage',
  '2': const [
    const {
      '1': 'Type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pb.QCState',
      '10': 'Type'
    },
    const {'1': 'ViewNumber', '3': 2, '4': 1, '5': 3, '10': 'ViewNumber'},
    const {
      '1': 'ProposalQC',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.pb.QuorumCert',
      '10': 'ProposalQC'
    },
    const {
      '1': 'JustifyQC',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.pb.QuorumCert',
      '10': 'JustifyQC'
    },
    const {'1': 'MsgDigest', '3': 5, '4': 1, '5': 12, '10': 'MsgDigest'},
    const {
      '1': 'Signature',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.pb.SignInfo',
      '10': 'Signature'
    },
  ],
};

const ChainedBftVoteMessage$json = const {
  '1': 'ChainedBftVoteMessage',
  '2': const [
    const {'1': 'ProposalId', '3': 1, '4': 1, '5': 12, '10': 'ProposalId'},
    const {
      '1': 'Signature',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.pb.SignInfo',
      '10': 'Signature'
    },
  ],
};
