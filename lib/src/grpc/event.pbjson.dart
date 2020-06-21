///
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const BlockStatus$json = const {
  '1': 'BlockStatus',
  '2': const [
    const {'1': 'ERROR', '2': 0},
    const {'1': 'TRUNK', '2': 1},
    const {'1': 'BRANCH', '2': 2},
    const {'1': 'NONEXIST', '2': 3},
  ],
};

const EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'UNDEFINED', '2': 0},
    const {'1': 'BLOCK', '2': 1},
    const {'1': 'TRANSACTION', '2': 2},
    const {'1': 'ACCOUNT', '2': 3},
    const {'1': 'SUBSCRIBE_RESPONSE', '2': 4},
  ],
};

const UnsubscribeStatusInfo$json = const {
  '1': 'UnsubscribeStatusInfo',
  '2': const [
    const {'1': 'UNSUBSCRIBE_UNDEFINED', '2': 0},
    const {'1': 'UNSUBSCRIBE_SUCCESS', '2': 1},
    const {'1': 'UNSUBSCRIBE_FAILED', '2': 2},
  ],
};

const BlockStatusInfo$json = const {
  '1': 'BlockStatusInfo',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'proposer', '3': 2, '4': 1, '5': 9, '10': 'proposer'},
    const {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.pb.BlockStatus', '10': 'status'},
  ],
};

const TransactionStatusInfo$json = const {
  '1': 'TransactionStatusInfo',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'initiator', '3': 2, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'auth_require', '3': 3, '4': 3, '5': 9, '10': 'authRequire'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.pb.TransactionStatus', '10': 'status'},
  ],
};

const AccountStatusInfo$json = const {
  '1': 'AccountStatusInfo',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'from_addr', '3': 2, '4': 3, '5': 9, '10': 'fromAddr'},
    const {'1': 'to_addr', '3': 3, '4': 3, '5': 9, '10': 'toAddr'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.pb.TransactionStatus', '10': 'status'},
  ],
};

const EventRequest$json = const {
  '1': 'EventRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.pb.EventType', '10': 'type'},
    const {'1': 'payload', '3': 2, '4': 1, '5': 12, '10': 'payload'},
  ],
};

const BlockEventRequest$json = const {
  '1': 'BlockEventRequest',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'proposer', '3': 2, '4': 1, '5': 9, '10': 'proposer'},
    const {'1': 'start_height', '3': 3, '4': 1, '5': 3, '10': 'startHeight'},
    const {'1': 'end_height', '3': 4, '4': 1, '5': 3, '10': 'endHeight'},
    const {'1': 'need_content', '3': 5, '4': 1, '5': 8, '10': 'needContent'},
  ],
};

const TransactionEventRequest$json = const {
  '1': 'TransactionEventRequest',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'initiator', '3': 2, '4': 1, '5': 9, '10': 'initiator'},
    const {'1': 'auth_require', '3': 3, '4': 1, '5': 9, '10': 'authRequire'},
    const {'1': 'need_content', '3': 4, '4': 1, '5': 8, '10': 'needContent'},
  ],
};

const AccountEventRequest$json = const {
  '1': 'AccountEventRequest',
  '2': const [
    const {'1': 'bcname', '3': 1, '4': 1, '5': 9, '10': 'bcname'},
    const {'1': 'from_addr', '3': 2, '4': 1, '5': 9, '10': 'fromAddr'},
    const {'1': 'to_addr', '3': 3, '4': 1, '5': 9, '10': 'toAddr'},
    const {'1': 'need_content', '3': 4, '4': 1, '5': 8, '10': 'needContent'},
  ],
};

const UnsubscribeRequest$json = const {
  '1': 'UnsubscribeRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const UnsubscribeResponse$json = const {
  '1': 'UnsubscribeResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 3, '4': 1, '5': 14, '6': '.pb.UnsubscribeStatusInfo', '10': 'status'},
  ],
};

const Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pb.EventType', '10': 'type'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 12, '10': 'payload'},
    const {'1': 'block_status', '3': 4, '4': 1, '5': 11, '6': '.pb.BlockStatusInfo', '10': 'blockStatus'},
    const {'1': 'tx_status', '3': 5, '4': 1, '5': 11, '6': '.pb.TransactionStatusInfo', '10': 'txStatus'},
    const {'1': 'account_status', '3': 6, '4': 1, '5': 11, '6': '.pb.AccountStatusInfo', '10': 'accountStatus'},
  ],
};

const BlockEvent$json = const {
  '1': 'BlockEvent',
  '2': const [
    const {'1': 'block', '3': 1, '4': 1, '5': 11, '6': '.pb.InternalBlock', '10': 'block'},
  ],
};

const TransactionEvent$json = const {
  '1': 'TransactionEvent',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.pb.Transaction', '10': 'tx'},
  ],
};

