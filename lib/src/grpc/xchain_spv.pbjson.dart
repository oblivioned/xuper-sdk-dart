///
//  Generated code. Do not modify.
//  source: xchain_spv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ReturnCode$json = const {
  '1': 'ReturnCode',
  '2': const [
    const {'1': 'RETURNSUCCESS', '2': 0},
    const {'1': 'INTERNALERR', '2': 101000},
    const {'1': 'FILENOTEXIST', '2': 101002},
    const {'1': 'PARAMERR', '2': 101003},
    const {'1': 'HTTPREQUERTFAIL', '2': 101004},
    const {'1': 'HTTPRESPONSEFAIL', '2': 101005},
    const {'1': 'ACCOUNTNOTEXIST', '2': 101008},
    const {'1': 'PWNOTEXIST', '2': 101009},
    const {'1': 'PWEXIST', '2': 101010},
    const {'1': 'NOTLOGIN', '2': 101012},
    const {'1': 'CONNECTNODEFAIL', '2': 102001},
    const {'1': 'UTXONOTENOUGH', '2': 102002},
    const {'1': 'ADDRESSINVALID', '2': 102003},
    const {'1': 'FEEINVALID', '2': 102004},
    const {'1': 'CONNECTREFUSED', '2': 102005},
    const {'1': 'UTXOENCRYPTERR', '2': 102006},
    const {'1': 'FEENOTENOUGN', '2': 102007},
    const {'1': 'PARAMSINVALID', '2': 102008},
    const {'1': 'TXSIGNERR', '2': 102009},
    const {'1': 'REPOSTTXERR', '2': 102010},
    const {'1': 'BLOCKCHAINNOTEXIST', '2': 102011},
    const {'1': 'SERVERERR', '2': 102012},
  ],
};

const ECDSAAccount$json = const {
  '1': 'ECDSAAccount',
  '2': const [
    const {'1': 'entropyByte', '3': 1, '4': 1, '5': 12, '10': 'entropyByte'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {
      '1': 'jsonPrivateKey',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'jsonPrivateKey'
    },
    const {'1': 'jsonPublicKey', '3': 4, '4': 1, '5': 9, '10': 'jsonPublicKey'},
    const {'1': 'address', '3': 5, '4': 1, '5': 9, '10': 'address'},
  ],
};

const ECDSAInfo$json = const {
  '1': 'ECDSAInfo',
  '2': const [
    const {'1': 'entropyByte', '3': 1, '4': 1, '5': 12, '10': 'entropyByte'},
    const {'1': 'mnemonic', '3': 2, '4': 1, '5': 9, '10': 'mnemonic'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const ECDSAAccountFromCloud$json = const {
  '1': 'ECDSAAccountFromCloud',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {
      '1': 'jsonEncryptedPrivateKey',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'jsonEncryptedPrivateKey'
    },
    const {
      '1': 'encryptedMnemonic',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'encryptedMnemonic'
    },
  ],
};

const ECDSAAccountToCloud$json = const {
  '1': 'ECDSAAccountToCloud',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {
      '1': 'jsonEncryptedPrivateKey',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'jsonEncryptedPrivateKey'
    },
    const {
      '1': 'encryptedMnemonic',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'encryptedMnemonic'
    },
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
  ],
};

const Node$json = const {
  '1': 'Node',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 12, '10': 'host'},
    const {'1': 'utxoQueryUrl', '3': 2, '4': 1, '5': 12, '10': 'utxoQueryUrl'},
    const {'1': 'txPostUrl', '3': 3, '4': 1, '5': 12, '10': 'txPostUrl'},
    const {
      '1': 'balanceQueryUrl',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'balanceQueryUrl'
    },
  ],
};

const TxInputs$json = const {
  '1': 'TxInputs',
  '2': const [
    const {
      '1': 'txInputList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.TxInput',
      '10': 'txInputList'
    },
  ],
};

const TxOutputs$json = const {
  '1': 'TxOutputs',
  '2': const [
    const {
      '1': 'txOutputList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.TxOutput',
      '10': 'txOutputList'
    },
  ],
};

const UTXOs$json = const {
  '1': 'UTXOs',
  '2': const [
    const {
      '1': 'uTXOList',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.UTXO',
      '10': 'uTXOList'
    },
  ],
};

const UTXO$json = const {
  '1': 'UTXO',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 12, '10': 'amount'},
    const {'1': 'toAddr', '3': 2, '4': 1, '5': 12, '10': 'toAddr'},
    const {'1': 'toPubkey', '3': 3, '4': 1, '5': 12, '10': 'toPubkey'},
    const {'1': 'refTxid', '3': 4, '4': 1, '5': 12, '10': 'refTxid'},
    const {'1': 'refOffset', '3': 5, '4': 1, '5': 5, '10': 'refOffset'},
  ],
};
