///
//  Generated code. Do not modify.
//  source: xchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const XChainErrorEnum$json = const {
  '1': 'XChainErrorEnum',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'UNKNOW_ERROR', '2': 1},
    const {'1': 'CONNECT_REFUSE', '2': 2},
    const {'1': 'NOT_ENOUGH_UTXO_ERROR', '2': 3},
    const {'1': 'UTXOVM_ALREADY_UNCONFIRM_ERROR', '2': 4},
    const {'1': 'UTXOVM_NOT_FOUND_ERROR', '2': 5},
    const {'1': 'INPUT_OUTPUT_NOT_EQUAL_ERROR', '2': 6},
    const {'1': 'TX_NOT_FOUND_ERROR', '2': 7},
    const {'1': 'TX_SIGN_ERROR', '2': 8},
    const {'1': 'BLOCKCHAIN_NOTEXIST', '2': 9},
    const {'1': 'VALIDATE_ERROR', '2': 10},
    const {'1': 'CANNOT_SYNC_BLOCK_ERROR', '2': 11},
    const {'1': 'CONFIRM_BLOCK_ERROR', '2': 12},
    const {'1': 'UTXOVM_PLAY_ERROR', '2': 13},
    const {'1': 'WALK_ERROR', '2': 14},
    const {'1': 'NOT_READY_ERROR', '2': 15},
    const {'1': 'BLOCK_EXIST_ERROR', '2': 16},
    const {'1': 'ROOT_BLOCK_EXIST_ERROR', '2': 17},
    const {'1': 'TX_DUPLICATE_ERROR', '2': 19},
    const {'1': 'SERVICE_REFUSED_ERROR', '2': 20},
    const {'1': 'TXDATA_SIGN_ERROR', '2': 21},
    const {'1': 'TX_SLE_ERROR', '2': 25},
    const {'1': 'TX_FEE_NOT_ENOUGH_ERROR', '2': 26},
    const {'1': 'UTXO_SIGN_ERROR', '2': 28},
    const {'1': 'DPOS_QUERY_ERROR', '2': 31},
    const {'1': 'RWSET_INVALID_ERROR', '2': 33},
    const {'1': 'RWACL_INVALID_ERROR', '2': 34},
    const {'1': 'GAS_NOT_ENOUGH_ERROR', '2': 35},
    const {'1': 'TX_VERSION_INVALID_ERROR', '2': 36},
    const {'1': 'COMPLIANCE_CHECK_NOT_APPROVED', '2': 37},
    const {'1': 'ACCOUNT_CONTRACT_STATUS_ERROR', '2': 38},
    const {'1': 'TX_VERIFICATION_ERROR', '2': 40},
  ],
};

const TransactionStatus$json = const {
  '1': 'TransactionStatus',
  '2': const [
    const {'1': 'UNDEFINE', '2': 0},
    const {'1': 'NOEXIST', '2': 1},
    const {'1': 'CONFIRM', '2': 2},
    const {'1': 'FURCATION', '2': 3},
    const {'1': 'UNCONFIRM', '2': 4},
    const {'1': 'FAILED', '2': 5},
  ],
};

const ViewOption$json = const {
  '1': 'ViewOption',
  '2': const [
    const {'1': 'NONE', '2': 0},
    const {'1': 'LEDGER', '2': 1},
    const {'1': 'UTXOINFO', '2': 2},
    const {'1': 'BRANCHINFO', '2': 3},
    const {'1': 'PEERS', '2': 4},
  ],
};

const PermissionRule$json = const {
  '1': 'PermissionRule',
  '2': const [
    const {'1': 'NULL', '2': 0},
    const {'1': 'SIGN_THRESHOLD', '2': 1},
    const {'1': 'SIGN_AKSET', '2': 2},
    const {'1': 'SIGN_RATE', '2': 3},
    const {'1': 'SIGN_SUM', '2': 4},
    const {'1': 'CA_SERVER', '2': 5},
    const {'1': 'COMMUNITY_VOTE', '2': 6},
  ],
};

const ResourceType$json = const {
  '1': 'ResourceType',
  '2': const [
    const {'1': 'CPU', '2': 0},
    const {'1': 'MEMORY', '2': 1},
    const {'1': 'DISK', '2': 2},
    const {'1': 'XFEE', '2': 3},
  ],
};

const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'logid', '3': 1, '4': 1, '5': 9, '10': 'logid'},
    const {'1': 'from_node', '3': 2, '4': 1, '5': 9, '10': 'fromNode'},
    const {'1': 'error', '3': 3, '4': 1, '5': 14, '6': '.pb.XChainErrorEnum', '10': 'error'},
  ],
};

const TxDataAccount$json = const {
  '1': 'TxDataAccount',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'frozen_height', '3': 3, '4': 1, '5': 3, '10': 'frozenHeight'},
  ],
};

const TxData$json = const {
  '1': 'TxData',
  '2': const [
    const {'1': 'header', '3': 13, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'from_addr', '3': 3, '4': 1, '5': 9, '10': 'fromAddr'},
    const {'1': 'from_pubkey', '3': 4, '4': 1, '5': 9, '10': 'fromPubkey'},
    const {'1': 'from_scrkey', '3': 5, '4': 1, '5': 9, '10': 'fromScrkey'},
    const {'1': 'user_sign', '3': 14, '4': 1, '5': 12, '10': 'userSign'},
    const {'1': 'account', '3': 6, '4': 3, '5': 11, '6': '.pb.TxDataAccount', '10': 'account'},
    const {'1': 'nonce', '3': 8, '4': 1, '5': 9, '10': 'nonce'},
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'desc', '3': 12, '4': 1, '5': 12, '10': 'desc'},
    const {'1': 'version', '3': 15, '4': 1, '5': 5, '10': 'version'},
  ],
};

const TxStatus$json = const {
  '1': 'TxStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'txid', '3': 3, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.pb.TransactionStatus', '10': 'status'},
    const {'1': 'distance', '3': 5, '4': 1, '5': 3, '10': 'distance'},
    const {'1': 'tx', '3': 7, '4': 1, '5': 11, '6': '.pb.Transaction', '10': 'tx'},
  ],
};

const BatchTxs$json = const {
  '1': 'BatchTxs',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'Txs', '3': 2, '4': 3, '5': 11, '6': '.pb.TxStatus', '10': 'Txs'},
  ],
};

const Block$json = const {
  '1': 'Block',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'blockid', '3': 3, '4': 1, '5': 12, '10': 'blockid'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.pb.Block.EBlockStatus', '10': 'status'},
    const {'1': 'block', '3': 5, '4': 1, '5': 11, '6': '.pb.InternalBlock', '10': 'block'},
  ],
  '4': const [Block_EBlockStatus$json],
};

const Block_EBlockStatus$json = const {
  '1': 'EBlockStatus',
  '2': const [
    const {'1': 'ERROR', '2': 0},
    const {'1': 'TRUNK', '2': 1},
    const {'1': 'BRANCH', '2': 2},
    const {'1': 'NOEXIST', '2': 3},
  ],
};

const BlockID$json = const {
  '1': 'BlockID',
  '2': const [
    const {'1': 'header', '3': 4, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'blockid', '3': 2, '4': 1, '5': 12, '10': 'blockid'},
    const {'1': 'need_content', '3': 3, '4': 1, '5': 8, '10': 'needContent'},
  ],
};

const BlockHeight$json = const {
  '1': 'BlockHeight',
  '2': const [
    const {'1': 'header', '3': 3, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'height', '3': 2, '4': 1, '5': 3, '10': 'height'},
  ],
};

const CommonReply$json = const {
  '1': 'CommonReply',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
  ],
};

const CommonIn$json = const {
  '1': 'CommonIn',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'view_option', '3': 2, '4': 1, '5': 14, '6': '.pb.ViewOption', '10': 'viewOption'},
  ],
};

const TokenDetail$json = const {
  '1': 'TokenDetail',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'balance', '3': 2, '4': 1, '5': 9, '10': 'balance'},
    const {'1': 'error', '3': 3, '4': 1, '5': 14, '6': '.pb.XChainErrorEnum', '10': 'error'},
  ],
};

const AddressStatus$json = const {
  '1': 'AddressStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'bcs', '3': 3, '4': 3, '5': 11, '6': '.pb.TokenDetail', '10': 'bcs'},
  ],
};

const TokenFrozenDetail$json = const {
  '1': 'TokenFrozenDetail',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 1, '5': 9, '10': 'balance'},
    const {'1': 'isFrozen', '3': 2, '4': 1, '5': 8, '10': 'isFrozen'},
  ],
};

const TokenFrozenDetails$json = const {
  '1': 'TokenFrozenDetails',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'tfd', '3': 2, '4': 3, '5': 11, '6': '.pb.TokenFrozenDetail', '10': 'tfd'},
    const {'1': 'error', '3': 3, '4': 1, '5': 14, '6': '.pb.XChainErrorEnum', '10': 'error'},
  ],
};

const AddressBalanceStatus$json = const {
  '1': 'AddressBalanceStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'tfds', '3': 3, '4': 3, '5': 11, '6': '.pb.TokenFrozenDetails', '10': 'tfds'},
  ],
};

const TxInput$json = const {
  '1': 'TxInput',
  '2': const [
    const {'1': 'ref_txid', '3': 1, '4': 1, '5': 12, '10': 'refTxid'},
    const {'1': 'ref_offset', '3': 2, '4': 1, '5': 5, '10': 'refOffset'},
    const {'1': 'from_addr', '3': 5, '4': 1, '5': 12, '10': 'fromAddr'},
    const {'1': 'amount', '3': 6, '4': 1, '5': 12, '10': 'amount'},
    const {'1': 'frozen_height', '3': 7, '4': 1, '5': 3, '10': 'frozenHeight'},
  ],
};

const TxOutput$json = const {
  '1': 'TxOutput',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 12, '10': 'amount'},
    const {'1': 'to_addr', '3': 2, '4': 1, '5': 12, '10': 'toAddr'},
    const {'1': 'frozen_height', '3': 4, '4': 1, '5': 3, '10': 'frozenHeight'},
  ],
};

const XuperSignature$json = const {
  '1': 'XuperSignature',
  '2': const [
    const {'1': 'public_keys', '3': 1, '4': 3, '5': 12, '10': 'publicKeys'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'blockid', '3': 2, '4': 1, '5': 12, '10': 'blockid'},
    const {'1': 'tx_inputs', '3': 3, '4': 3, '5': 11, '6': '.pb.TxInput', '10': 'txInputs'},
    const {'1': 'tx_outputs', '3': 4, '4': 3, '5': 11, '6': '.pb.TxOutput', '10': 'txOutputs'},
    const {'1': 'desc', '3': 6, '4': 1, '5': 12, '10': 'desc'},
    const {'1': 'coinbase', '3': 7, '4': 1, '5': 8, '10': 'coinbase'},
    const {'1': 'nonce', '3': 8, '4': 1, '5': 9, '10': 'nonce'},
    const {'1': 'timestamp', '3': 9, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'version', '3': 10, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'autogen', '3': 11, '4': 1, '5': 8, '10': 'autogen'},
    const {'1': 'tx_inputs_ext', '3': 23, '4': 3, '5': 11, '6': '.pb.TxInputExt', '10': 'txInputsExt'},
    const {'1': 'tx_outputs_ext', '3': 24, '4': 3, '5': 11, '6': '.pb.TxOutputExt', '10': 'txOutputsExt'},
    const {'1': 'contract_requests', '3': 25, '4': 3, '5': 11, '6': '.pb.InvokeRequest', '10': 'contractRequests'},
    const {'1': 'initiator', '3': 26, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'auth_require', '3': 27, '4': 3, '5': 9, '10': 'authRequire'},
    const {'1': 'initiator_signs', '3': 28, '4': 3, '5': 11, '6': '.pb.SignatureInfo', '10': 'initiatorSigns'},
    const {'1': 'auth_require_signs', '3': 29, '4': 3, '5': 11, '6': '.pb.SignatureInfo', '10': 'authRequireSigns'},
    const {'1': 'received_timestamp', '3': 30, '4': 1, '5': 3, '10': 'receivedTimestamp'},
    const {'1': 'xuper_sign', '3': 31, '4': 1, '5': 11, '6': '.pb.XuperSignature', '10': 'xuperSign'},
    const {'1': 'modify_block', '3': 32, '4': 1, '5': 11, '6': '.pb.ModifyBlock', '10': 'modifyBlock'},
    const {'1': 'HD_info', '3': 33, '4': 1, '5': 11, '6': '.pb.HDInfo', '10': 'HDInfo'},
  ],
};

const LedgerMeta$json = const {
  '1': 'LedgerMeta',
  '2': const [
    const {'1': 'root_blockid', '3': 1, '4': 1, '5': 12, '10': 'rootBlockid'},
    const {'1': 'tip_blockid', '3': 2, '4': 1, '5': 12, '10': 'tipBlockid'},
    const {'1': 'trunk_height', '3': 3, '4': 1, '5': 3, '10': 'trunkHeight'},
  ],
};

const UtxoMeta$json = const {
  '1': 'UtxoMeta',
  '2': const [
    const {'1': 'latest_blockid', '3': 1, '4': 1, '5': 12, '10': 'latestBlockid'},
    const {'1': 'lock_key_list', '3': 2, '4': 3, '5': 9, '10': 'lockKeyList'},
    const {'1': 'utxo_total', '3': 3, '4': 1, '5': 9, '10': 'utxoTotal'},
    const {'1': 'avgDelay', '3': 4, '4': 1, '5': 3, '10': 'avgDelay'},
    const {'1': 'unconfirmTxAmount', '3': 5, '4': 1, '5': 3, '10': 'unconfirmTxAmount'},
    const {'1': 'max_block_size', '3': 6, '4': 1, '5': 3, '10': 'maxBlockSize'},
    const {'1': 'reserved_contracts', '3': 7, '4': 3, '5': 11, '6': '.pb.InvokeRequest', '10': 'reservedContracts'},
    const {'1': 'forbidden_contract', '3': 8, '4': 1, '5': 11, '6': '.pb.InvokeRequest', '10': 'forbiddenContract'},
    const {'1': 'new_account_resource_amount', '3': 9, '4': 1, '5': 3, '10': 'newAccountResourceAmount'},
    const {'1': 'irreversibleBlockHeight', '3': 10, '4': 1, '5': 3, '10': 'irreversibleBlockHeight'},
    const {'1': 'irreversibleSlideWindow', '3': 11, '4': 1, '5': 3, '10': 'irreversibleSlideWindow'},
    const {'1': 'gasPrice', '3': 12, '4': 1, '5': 11, '6': '.pb.GasPrice', '10': 'gasPrice'},
    const {'1': 'group_chain_contract', '3': 13, '4': 1, '5': 11, '6': '.pb.InvokeRequest', '10': 'groupChainContract'},
  ],
};

const GasPrice$json = const {
  '1': 'GasPrice',
  '2': const [
    const {'1': 'cpu_rate', '3': 1, '4': 1, '5': 3, '10': 'cpuRate'},
    const {'1': 'mem_rate', '3': 2, '4': 1, '5': 3, '10': 'memRate'},
    const {'1': 'disk_rate', '3': 3, '4': 1, '5': 3, '10': 'diskRate'},
    const {'1': 'xfee_rate', '3': 4, '4': 1, '5': 3, '10': 'xfeeRate'},
  ],
};

const InternalBlock$json = const {
  '1': 'InternalBlock',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'nonce', '3': 2, '4': 1, '5': 5, '10': 'nonce'},
    const {'1': 'blockid', '3': 3, '4': 1, '5': 12, '10': 'blockid'},
    const {'1': 'pre_hash', '3': 4, '4': 1, '5': 12, '10': 'preHash'},
    const {'1': 'proposer', '3': 5, '4': 1, '5': 12, '10': 'proposer'},
    const {'1': 'sign', '3': 6, '4': 1, '5': 12, '10': 'sign'},
    const {'1': 'pubkey', '3': 7, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'merkle_root', '3': 8, '4': 1, '5': 12, '10': 'merkleRoot'},
    const {'1': 'height', '3': 9, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'timestamp', '3': 10, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'transactions', '3': 11, '4': 3, '5': 11, '6': '.pb.Transaction', '10': 'transactions'},
    const {'1': 'tx_count', '3': 12, '4': 1, '5': 5, '10': 'txCount'},
    const {'1': 'merkle_tree', '3': 13, '4': 3, '5': 12, '10': 'merkleTree'},
    const {'1': 'curTerm', '3': 16, '4': 1, '5': 3, '10': 'curTerm'},
    const {'1': 'curBlockNum', '3': 17, '4': 1, '5': 3, '10': 'curBlockNum'},
    const {'1': 'failed_txs', '3': 18, '4': 3, '5': 11, '6': '.pb.InternalBlock.FailedTxsEntry', '10': 'failedTxs'},
    const {'1': 'targetBits', '3': 19, '4': 1, '5': 5, '10': 'targetBits'},
    const {'1': 'Justify', '3': 20, '4': 1, '5': 11, '6': '.pb.QuorumCert', '10': 'Justify'},
    const {'1': 'in_trunk', '3': 14, '4': 1, '5': 8, '10': 'inTrunk'},
    const {'1': 'next_hash', '3': 15, '4': 1, '5': 12, '10': 'nextHash'},
  ],
  '3': const [InternalBlock_FailedTxsEntry$json],
};

const InternalBlock_FailedTxsEntry$json = const {
  '1': 'FailedTxsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const BCStatus$json = const {
  '1': 'BCStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'meta', '3': 3, '4': 1, '5': 11, '6': '.pb.LedgerMeta', '10': 'meta'},
    const {'1': 'block', '3': 4, '4': 1, '5': 11, '6': '.pb.InternalBlock', '10': 'block'},
    const {'1': 'utxoMeta', '3': 5, '4': 1, '5': 11, '6': '.pb.UtxoMeta', '10': 'utxoMeta'},
    const {'1': 'branchBlockid', '3': 6, '4': 3, '5': 9, '10': 'branchBlockid'},
  ],
};

const BCTipStatus$json = const {
  '1': 'BCTipStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'is_trunk_tip', '3': 2, '4': 1, '5': 8, '10': 'isTrunkTip'},
  ],
};

const BlockChains$json = const {
  '1': 'BlockChains',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'blockchains', '3': 2, '4': 3, '5': 9, '10': 'blockchains'},
  ],
};

const Speeds$json = const {
  '1': 'Speeds',
  '2': const [
    const {'1': 'SumSpeeds', '3': 1, '4': 3, '5': 11, '6': '.pb.Speeds.SumSpeedsEntry', '10': 'SumSpeeds'},
    const {'1': 'BcSpeeds', '3': 2, '4': 3, '5': 11, '6': '.pb.Speeds.BcSpeedsEntry', '10': 'BcSpeeds'},
  ],
  '3': const [Speeds_SumSpeedsEntry$json, Speeds_BcSpeedsEntry$json],
};

const Speeds_SumSpeedsEntry$json = const {
  '1': 'SumSpeedsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Speeds_BcSpeedsEntry$json = const {
  '1': 'BcSpeedsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pb.BCSpeeds', '10': 'value'},
  ],
  '7': const {'7': true},
};

const BCSpeeds$json = const {
  '1': 'BCSpeeds',
  '2': const [
    const {'1': 'BcSpeed', '3': 1, '4': 3, '5': 11, '6': '.pb.BCSpeeds.BcSpeedEntry', '10': 'BcSpeed'},
  ],
  '3': const [BCSpeeds_BcSpeedEntry$json],
};

const BCSpeeds_BcSpeedEntry$json = const {
  '1': 'BcSpeedEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': const {'7': true},
};

const SystemsStatus$json = const {
  '1': 'SystemsStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcs_status', '3': 2, '4': 3, '5': 11, '6': '.pb.BCStatus', '10': 'bcsStatus'},
    const {'1': 'speeds', '3': 3, '4': 1, '5': 11, '6': '.pb.Speeds', '10': 'speeds'},
    const {'1': 'peerUrls', '3': 4, '4': 3, '5': 9, '10': 'peerUrls'},
  ],
};

const SystemsStatusReply$json = const {
  '1': 'SystemsStatusReply',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'systems_status', '3': 2, '4': 1, '5': 11, '6': '.pb.SystemsStatus', '10': 'systemsStatus'},
  ],
};

const RawUrl$json = const {
  '1': 'RawUrl',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'rawUrl', '3': 2, '4': 1, '5': 9, '10': 'rawUrl'},
  ],
};

const Utxo$json = const {
  '1': 'Utxo',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 12, '10': 'amount'},
    const {'1': 'toAddr', '3': 2, '4': 1, '5': 12, '10': 'toAddr'},
    const {'1': 'toPubkey', '3': 3, '4': 1, '5': 12, '10': 'toPubkey'},
    const {'1': 'refTxid', '3': 4, '4': 1, '5': 12, '10': 'refTxid'},
    const {'1': 'refOffset', '3': 5, '4': 1, '5': 5, '10': 'refOffset'},
  ],
};

const UtxoInput$json = const {
  '1': 'UtxoInput',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'publickey', '3': 4, '4': 1, '5': 9, '10': 'publickey'},
    const {'1': 'totalNeed', '3': 5, '4': 1, '5': 9, '10': 'totalNeed'},
    const {'1': 'userSign', '3': 7, '4': 1, '5': 12, '10': 'userSign'},
    const {'1': 'needLock', '3': 8, '4': 1, '5': 8, '10': 'needLock'},
  ],
};

const UtxoOutput$json = const {
  '1': 'UtxoOutput',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'utxoList', '3': 2, '4': 3, '5': 11, '6': '.pb.Utxo', '10': 'utxoList'},
    const {'1': 'totalSelected', '3': 3, '4': 1, '5': 9, '10': 'totalSelected'},
  ],
};

const NativeCodeDesc$json = const {
  '1': 'NativeCodeDesc',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'digest', '3': 3, '4': 1, '5': 12, '10': 'digest'},
    const {'1': 'prevVersion', '3': 4, '4': 1, '5': 9, '10': 'prevVersion'},
    const {'1': 'xuperApiVersion', '3': 5, '4': 1, '5': 5, '10': 'xuperApiVersion'},
  ],
};

const WasmCodeDesc$json = const {
  '1': 'WasmCodeDesc',
  '2': const [
    const {'1': 'runtime', '3': 1, '4': 1, '5': 9, '10': 'runtime'},
    const {'1': 'compiler', '3': 2, '4': 1, '5': 9, '10': 'compiler'},
    const {'1': 'digest', '3': 3, '4': 1, '5': 12, '10': 'digest'},
    const {'1': 'vm_compiler', '3': 4, '4': 1, '5': 9, '10': 'vmCompiler'},
    const {'1': 'contract_type', '3': 5, '4': 1, '5': 9, '10': 'contractType'},
  ],
};

const DeployNativeCodeRequest$json = const {
  '1': 'DeployNativeCodeRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 11, '6': '.pb.NativeCodeDesc', '10': 'desc'},
    const {'1': 'code', '3': 4, '4': 1, '5': 12, '10': 'code'},
    const {'1': 'address', '3': 5, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'pubkey', '3': 6, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'sign', '3': 7, '4': 1, '5': 12, '10': 'sign'},
  ],
};

const DeployNativeCodeResponse$json = const {
  '1': 'DeployNativeCodeResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
  ],
};

const NativeCodeStatus$json = const {
  '1': 'NativeCodeStatus',
  '2': const [
    const {'1': 'desc', '3': 1, '4': 1, '5': 11, '6': '.pb.NativeCodeDesc', '10': 'desc'},
    const {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'healthy', '3': 3, '4': 1, '5': 8, '10': 'healthy'},
  ],
};

const NativeCodeStatusRequest$json = const {
  '1': 'NativeCodeStatusRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
  ],
};

const NativeCodeStatusResponse$json = const {
  '1': 'NativeCodeStatusResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'status', '3': 2, '4': 3, '5': 11, '6': '.pb.NativeCodeStatus', '10': 'status'},
  ],
};

const DposCandidatesRequest$json = const {
  '1': 'DposCandidatesRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
  ],
};

const DposCandidatesResponse$json = const {
  '1': 'DposCandidatesResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'candidatesInfo', '3': 2, '4': 3, '5': 9, '10': 'candidatesInfo'},
  ],
};

const DposNominateRecordsRequest$json = const {
  '1': 'DposNominateRecordsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const DposNominateInfo$json = const {
  '1': 'DposNominateInfo',
  '2': const [
    const {'1': 'candidate', '3': 1, '4': 1, '5': 9, '10': 'candidate'},
    const {'1': 'txid', '3': 2, '4': 1, '5': 9, '10': 'txid'},
  ],
};

const DposNominateRecordsResponse$json = const {
  '1': 'DposNominateRecordsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'nominateRecords', '3': 2, '4': 3, '5': 11, '6': '.pb.DposNominateInfo', '10': 'nominateRecords'},
  ],
};

const DposNomineeRecordsRequest$json = const {
  '1': 'DposNomineeRecordsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const DposNomineeRecordsResponse$json = const {
  '1': 'DposNomineeRecordsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'txid', '3': 2, '4': 1, '5': 9, '10': 'txid'},
  ],
};

const DposVoteRecordsRequest$json = const {
  '1': 'DposVoteRecordsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const voteRecord$json = const {
  '1': 'voteRecord',
  '2': const [
    const {'1': 'candidate', '3': 1, '4': 1, '5': 9, '10': 'candidate'},
    const {'1': 'txid', '3': 2, '4': 1, '5': 9, '10': 'txid'},
  ],
};

const DposVoteRecordsResponse$json = const {
  '1': 'DposVoteRecordsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'voteTxidRecords', '3': 2, '4': 3, '5': 11, '6': '.pb.voteRecord', '10': 'voteTxidRecords'},
  ],
};

const DposVotedRecordsRequest$json = const {
  '1': 'DposVotedRecordsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const votedRecord$json = const {
  '1': 'votedRecord',
  '2': const [
    const {'1': 'voter', '3': 1, '4': 1, '5': 9, '10': 'voter'},
    const {'1': 'txid', '3': 2, '4': 1, '5': 9, '10': 'txid'},
  ],
};

const DposVotedRecordsResponse$json = const {
  '1': 'DposVotedRecordsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'votedTxidRecords', '3': 2, '4': 3, '5': 11, '6': '.pb.votedRecord', '10': 'votedTxidRecords'},
  ],
};

const DposCheckResultsRequest$json = const {
  '1': 'DposCheckResultsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'term', '3': 3, '4': 1, '5': 3, '10': 'term'},
  ],
};

const DposCheckResultsResponse$json = const {
  '1': 'DposCheckResultsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'term', '3': 2, '4': 1, '5': 3, '10': 'term'},
    const {'1': 'checkResult', '3': 3, '4': 3, '5': 9, '10': 'checkResult'},
  ],
};

const DposStatusRequest$json = const {
  '1': 'DposStatusRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
  ],
};

const DposStatusResponse$json = const {
  '1': 'DposStatusResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.pb.DposStatus', '10': 'status'},
  ],
};

const DposStatus$json = const {
  '1': 'DposStatus',
  '2': const [
    const {'1': 'term', '3': 1, '4': 1, '5': 3, '10': 'term'},
    const {'1': 'block_num', '3': 2, '4': 1, '5': 3, '10': 'blockNum'},
    const {'1': 'proposer', '3': 3, '4': 1, '5': 9, '10': 'proposer'},
    const {'1': 'proposer_num', '3': 4, '4': 1, '5': 3, '10': 'proposerNum'},
    const {'1': 'checkResult', '3': 5, '4': 3, '5': 9, '10': 'checkResult'},
  ],
};

const InvokeRPCRequest$json = const {
  '1': 'InvokeRPCRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'requests', '3': 3, '4': 3, '5': 11, '6': '.pb.InvokeRequest', '10': 'requests'},
    const {'1': 'initiator', '3': 4, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'auth_require', '3': 5, '4': 3, '5': 9, '10': 'authRequire'},
  ],
};

const InvokeRPCResponse$json = const {
  '1': 'InvokeRPCResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'response', '3': 3, '4': 1, '5': 11, '6': '.pb.InvokeResponse', '10': 'response'},
  ],
};

const InvokeRequest$json = const {
  '1': 'InvokeRequest',
  '2': const [
    const {'1': 'module_name', '3': 1, '4': 1, '5': 9, '10': 'moduleName'},
    const {'1': 'contract_name', '3': 2, '4': 1, '5': 9, '10': 'contractName'},
    const {'1': 'method_name', '3': 3, '4': 1, '5': 9, '10': 'methodName'},
    const {'1': 'args', '3': 4, '4': 3, '5': 11, '6': '.pb.InvokeRequest.ArgsEntry', '10': 'args'},
    const {'1': 'resource_limits', '3': 5, '4': 3, '5': 11, '6': '.pb.ResourceLimit', '10': 'resourceLimits'},
    const {'1': 'amount', '3': 6, '4': 1, '5': 9, '10': 'amount'},
  ],
  '3': const [InvokeRequest_ArgsEntry$json],
};

const InvokeRequest_ArgsEntry$json = const {
  '1': 'ArgsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

const InvokeResponse$json = const {
  '1': 'InvokeResponse',
  '2': const [
    const {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.pb.TxInputExt', '10': 'inputs'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.pb.TxOutputExt', '10': 'outputs'},
    const {'1': 'response', '3': 3, '4': 3, '5': 12, '10': 'response'},
    const {'1': 'gas_used', '3': 4, '4': 1, '5': 3, '10': 'gasUsed'},
    const {'1': 'requests', '3': 5, '4': 3, '5': 11, '6': '.pb.InvokeRequest', '10': 'requests'},
    const {'1': 'responses', '3': 6, '4': 3, '5': 11, '6': '.pb.ContractResponse', '10': 'responses'},
    const {'1': 'utxoInputs', '3': 7, '4': 3, '5': 11, '6': '.pb.TxInput', '10': 'utxoInputs'},
    const {'1': 'utxoOutputs', '3': 8, '4': 3, '5': 11, '6': '.pb.TxOutput', '10': 'utxoOutputs'},
  ],
};

const TxInputExt$json = const {
  '1': 'TxInputExt',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 1, '5': 9, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'ref_txid', '3': 3, '4': 1, '5': 12, '10': 'refTxid'},
    const {'1': 'ref_offset', '3': 4, '4': 1, '5': 5, '10': 'refOffset'},
  ],
};

const TxOutputExt$json = const {
  '1': 'TxOutputExt',
  '2': const [
    const {'1': 'bucket', '3': 1, '4': 1, '5': 9, '10': 'bucket'},
    const {'1': 'key', '3': 2, '4': 1, '5': 12, '10': 'key'},
    const {'1': 'value', '3': 3, '4': 1, '5': 12, '10': 'value'},
  ],
};

const SignatureInfo$json = const {
  '1': 'SignatureInfo',
  '2': const [
    const {'1': 'PublicKey', '3': 1, '4': 1, '5': 9, '10': 'PublicKey'},
    const {'1': 'Sign', '3': 2, '4': 1, '5': 12, '10': 'Sign'},
  ],
};

const PermissionModel$json = const {
  '1': 'PermissionModel',
  '2': const [
    const {'1': 'rule', '3': 1, '4': 1, '5': 14, '6': '.pb.PermissionRule', '10': 'rule'},
    const {'1': 'acceptValue', '3': 2, '4': 1, '5': 1, '10': 'acceptValue'},
  ],
};

const AkSet$json = const {
  '1': 'AkSet',
  '2': const [
    const {'1': 'aks', '3': 1, '4': 3, '5': 9, '10': 'aks'},
  ],
};

const AkSets$json = const {
  '1': 'AkSets',
  '2': const [
    const {'1': 'sets', '3': 1, '4': 3, '5': 11, '6': '.pb.AkSets.SetsEntry', '10': 'sets'},
    const {'1': 'expression', '3': 2, '4': 1, '5': 9, '10': 'expression'},
  ],
  '3': const [AkSets_SetsEntry$json],
};

const AkSets_SetsEntry$json = const {
  '1': 'SetsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pb.AkSet', '10': 'value'},
  ],
  '7': const {'7': true},
};

const Acl$json = const {
  '1': 'Acl',
  '2': const [
    const {'1': 'pm', '3': 1, '4': 1, '5': 11, '6': '.pb.PermissionModel', '10': 'pm'},
    const {'1': 'aksWeight', '3': 2, '4': 3, '5': 11, '6': '.pb.Acl.AksWeightEntry', '10': 'aksWeight'},
    const {'1': 'akSets', '3': 3, '4': 1, '5': 11, '6': '.pb.AkSets', '10': 'akSets'},
  ],
  '3': const [Acl_AksWeightEntry$json],
};

const Acl_AksWeightEntry$json = const {
  '1': 'AksWeightEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': const {'7': true},
};

const AclStatus$json = const {
  '1': 'AclStatus',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'accountName', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'contractName', '3': 4, '4': 1, '5': 9, '10': 'contractName'},
    const {'1': 'methodName', '3': 5, '4': 1, '5': 9, '10': 'methodName'},
    const {'1': 'confirmed', '3': 6, '4': 1, '5': 8, '10': 'confirmed'},
    const {'1': 'acl', '3': 7, '4': 1, '5': 11, '6': '.pb.Acl', '10': 'acl'},
  ],
};

const IdentityAuth$json = const {
  '1': 'IdentityAuth',
  '2': const [
    const {'1': 'sign', '3': 1, '4': 1, '5': 12, '10': 'sign'},
    const {'1': 'pubkey', '3': 2, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'addr', '3': 3, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'peerID', '3': 4, '4': 1, '5': 9, '10': 'peerID'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

const IdentityAuths$json = const {
  '1': 'IdentityAuths',
  '2': const [
    const {'1': 'auth', '3': 1, '4': 3, '5': 11, '6': '.pb.IdentityAuth', '10': 'auth'},
  ],
};

const ResourceLimit$json = const {
  '1': 'ResourceLimit',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.ResourceType', '10': 'type'},
    const {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
  ],
};

const AK2AccountRequest$json = const {
  '1': 'AK2AccountRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

const AK2AccountResponse$json = const {
  '1': 'AK2AccountResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'account', '3': 3, '4': 3, '5': 9, '10': 'account'},
  ],
};

const GetAccountContractsRequest$json = const {
  '1': 'GetAccountContractsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'account', '3': 3, '4': 1, '5': 9, '10': 'account'},
  ],
};

const GetAccountContractsResponse$json = const {
  '1': 'GetAccountContractsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'contracts_status', '3': 2, '4': 3, '5': 11, '6': '.pb.ContractStatus', '10': 'contractsStatus'},
  ],
};

const ContractStatus$json = const {
  '1': 'ContractStatus',
  '2': const [
    const {'1': 'contract_name', '3': 1, '4': 1, '5': 9, '10': 'contractName'},
    const {'1': 'txid', '3': 2, '4': 1, '5': 9, '10': 'txid'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 12, '10': 'desc'},
    const {'1': 'is_banned', '3': 4, '4': 1, '5': 8, '10': 'isBanned'},
    const {'1': 'timestamp', '3': 5, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'runtime', '3': 6, '4': 1, '5': 9, '10': 'runtime'},
  ],
};

const PreExecWithSelectUTXORequest$json = const {
  '1': 'PreExecWithSelectUTXORequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'totalAmount', '3': 4, '4': 1, '5': 3, '10': 'totalAmount'},
    const {'1': 'signInfo', '3': 6, '4': 1, '5': 11, '6': '.pb.SignatureInfo', '10': 'signInfo'},
    const {'1': 'needLock', '3': 7, '4': 1, '5': 8, '10': 'needLock'},
    const {'1': 'request', '3': 5, '4': 1, '5': 11, '6': '.pb.InvokeRPCRequest', '10': 'request'},
  ],
};

const PreExecWithSelectUTXOResponse$json = const {
  '1': 'PreExecWithSelectUTXOResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'response', '3': 3, '4': 1, '5': 11, '6': '.pb.InvokeResponse', '10': 'response'},
    const {'1': 'utxoOutput', '3': 4, '4': 1, '5': 11, '6': '.pb.UtxoOutput', '10': 'utxoOutput'},
  ],
};

const ContractResponse$json = const {
  '1': 'ContractResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

const ModifyBlock$json = const {
  '1': 'ModifyBlock',
  '2': const [
    const {'1': 'effective_txid', '3': 1, '4': 1, '5': 9, '10': 'effectiveTxid'},
    const {'1': 'marked', '3': 2, '4': 1, '5': 8, '10': 'marked'},
    const {'1': 'effective_height', '3': 3, '4': 1, '5': 3, '10': 'effectiveHeight'},
    const {'1': 'public_key', '3': 4, '4': 1, '5': 9, '10': 'publicKey'},
    const {'1': 'sign', '3': 5, '4': 1, '5': 9, '10': 'sign'},
  ],
};

const HDInfo$json = const {
  '1': 'HDInfo',
  '2': const [
    const {'1': 'hd_public_key', '3': 1, '4': 1, '5': 12, '10': 'hdPublicKey'},
    const {'1': 'original_hash', '3': 2, '4': 1, '5': 12, '10': 'originalHash'},
  ],
};

const UtxoRecordDetail$json = const {
  '1': 'UtxoRecordDetail',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'accountName', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'openUtxoRecord', '3': 4, '4': 1, '5': 11, '6': '.pb.UtxoRecord', '10': 'openUtxoRecord'},
    const {'1': 'lockedUtxoRecord', '3': 5, '4': 1, '5': 11, '6': '.pb.UtxoRecord', '10': 'lockedUtxoRecord'},
    const {'1': 'frozenUtxoRecord', '3': 6, '4': 1, '5': 11, '6': '.pb.UtxoRecord', '10': 'frozenUtxoRecord'},
    const {'1': 'displayCount', '3': 7, '4': 1, '5': 3, '10': 'displayCount'},
  ],
};

const UtxoRecord$json = const {
  '1': 'UtxoRecord',
  '2': const [
    const {'1': 'utxoCount', '3': 1, '4': 1, '5': 9, '10': 'utxoCount'},
    const {'1': 'utxoAmount', '3': 2, '4': 1, '5': 9, '10': 'utxoAmount'},
    const {'1': 'item', '3': 3, '4': 3, '5': 11, '6': '.pb.UtxoKey', '10': 'item'},
  ],
};

const UtxoKey$json = const {
  '1': 'UtxoKey',
  '2': const [
    const {'1': 'refTxid', '3': 1, '4': 1, '5': 9, '10': 'refTxid'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 9, '10': 'offset'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 9, '10': 'amount'},
  ],
};

const ContractStatDataRequest$json = const {
  '1': 'ContractStatDataRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
  ],
};

const ContractStatDataResponse$json = const {
  '1': 'ContractStatDataResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.pb.ContractStatData', '10': 'data'},
  ],
};

const ContractStatData$json = const {
  '1': 'ContractStatData',
  '2': const [
    const {'1': 'accountCount', '3': 1, '4': 1, '5': 3, '10': 'accountCount'},
    const {'1': 'contractCount', '3': 2, '4': 1, '5': 3, '10': 'contractCount'},
  ],
};

const AddressContractsRequest$json = const {
  '1': 'AddressContractsRequest',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'bcname', '3': 2, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'need_content', '3': 4, '4': 1, '5': 8, '10': 'needContent'},
  ],
};

const ContractList$json = const {
  '1': 'ContractList',
  '2': const [
    const {'1': 'contract_status', '3': 1, '4': 3, '5': 11, '6': '.pb.ContractStatus', '10': 'contractStatus'},
  ],
};

const AddressContractsResponse$json = const {
  '1': 'AddressContractsResponse',
  '2': const [
    const {'1': 'header', '3': 1, '4': 1, '5': 11, '6': '.pb.Header', '10': 'header'},
    const {'1': 'contracts', '3': 2, '4': 3, '5': 11, '6': '.pb.AddressContractsResponse.ContractsEntry', '10': 'contracts'},
  ],
  '3': const [AddressContractsResponse_ContractsEntry$json],
};

const AddressContractsResponse_ContractsEntry$json = const {
  '1': 'ContractsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pb.ContractList', '10': 'value'},
  ],
  '7': const {'7': true},
};

const CrossQueryRequest$json = const {
  '1': 'CrossQueryRequest',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'initiator', '3': 3, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'auth_require', '3': 4, '4': 3, '5': 9, '10': 'authRequire'},
    const {'1': 'request', '3': 5, '4': 1, '5': 11, '6': '.pb.InvokeRequest', '10': 'request'},
  ],
};

const CrossQueryResponse$json = const {
  '1': 'CrossQueryResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 11, '6': '.pb.ContractResponse', '10': 'response'},
  ],
};

const CrossChainMeta$json = const {
  '1': 'CrossChainMeta',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'min_endorsor_num', '3': 2, '4': 1, '5': 3, '10': 'minEndorsorNum'},
  ],
};

const CrossEndorsor$json = const {
  '1': 'CrossEndorsor',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'pub_key', '3': 2, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'host', '3': 3, '4': 1, '5': 9, '10': 'host'},
  ],
};

const CrossQueryMeta$json = const {
  '1': 'CrossQueryMeta',
  '2': const [
    const {'1': 'chain_meta', '3': 1, '4': 1, '5': 11, '6': '.pb.CrossChainMeta', '10': 'chainMeta'},
    const {'1': 'endorsors', '3': 2, '4': 3, '5': 11, '6': '.pb.CrossEndorsor', '10': 'endorsors'},
  ],
};

const CrossQueryInfo$json = const {
  '1': 'CrossQueryInfo',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.pb.CrossQueryRequest', '10': 'request'},
    const {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.pb.CrossQueryResponse', '10': 'response'},
    const {'1': 'signs', '3': 3, '4': 3, '5': 11, '6': '.pb.SignatureInfo', '10': 'signs'},
  ],
};

