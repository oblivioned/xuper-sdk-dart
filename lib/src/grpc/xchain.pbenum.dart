///
//  Generated code. Do not modify.
//  source: xchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class XChainErrorEnum extends $pb.ProtobufEnum {
  static const XChainErrorEnum SUCCESS = XChainErrorEnum._(0, 'SUCCESS');
  static const XChainErrorEnum UNKNOW_ERROR = XChainErrorEnum._(1, 'UNKNOW_ERROR');
  static const XChainErrorEnum CONNECT_REFUSE = XChainErrorEnum._(2, 'CONNECT_REFUSE');
  static const XChainErrorEnum NOT_ENOUGH_UTXO_ERROR = XChainErrorEnum._(3, 'NOT_ENOUGH_UTXO_ERROR');
  static const XChainErrorEnum UTXOVM_ALREADY_UNCONFIRM_ERROR = XChainErrorEnum._(4, 'UTXOVM_ALREADY_UNCONFIRM_ERROR');
  static const XChainErrorEnum UTXOVM_NOT_FOUND_ERROR = XChainErrorEnum._(5, 'UTXOVM_NOT_FOUND_ERROR');
  static const XChainErrorEnum INPUT_OUTPUT_NOT_EQUAL_ERROR = XChainErrorEnum._(6, 'INPUT_OUTPUT_NOT_EQUAL_ERROR');
  static const XChainErrorEnum TX_NOT_FOUND_ERROR = XChainErrorEnum._(7, 'TX_NOT_FOUND_ERROR');
  static const XChainErrorEnum TX_SIGN_ERROR = XChainErrorEnum._(8, 'TX_SIGN_ERROR');
  static const XChainErrorEnum BLOCKCHAIN_NOTEXIST = XChainErrorEnum._(9, 'BLOCKCHAIN_NOTEXIST');
  static const XChainErrorEnum VALIDATE_ERROR = XChainErrorEnum._(10, 'VALIDATE_ERROR');
  static const XChainErrorEnum CANNOT_SYNC_BLOCK_ERROR = XChainErrorEnum._(11, 'CANNOT_SYNC_BLOCK_ERROR');
  static const XChainErrorEnum CONFIRM_BLOCK_ERROR = XChainErrorEnum._(12, 'CONFIRM_BLOCK_ERROR');
  static const XChainErrorEnum UTXOVM_PLAY_ERROR = XChainErrorEnum._(13, 'UTXOVM_PLAY_ERROR');
  static const XChainErrorEnum WALK_ERROR = XChainErrorEnum._(14, 'WALK_ERROR');
  static const XChainErrorEnum NOT_READY_ERROR = XChainErrorEnum._(15, 'NOT_READY_ERROR');
  static const XChainErrorEnum BLOCK_EXIST_ERROR = XChainErrorEnum._(16, 'BLOCK_EXIST_ERROR');
  static const XChainErrorEnum ROOT_BLOCK_EXIST_ERROR = XChainErrorEnum._(17, 'ROOT_BLOCK_EXIST_ERROR');
  static const XChainErrorEnum TX_DUPLICATE_ERROR = XChainErrorEnum._(19, 'TX_DUPLICATE_ERROR');
  static const XChainErrorEnum SERVICE_REFUSED_ERROR = XChainErrorEnum._(20, 'SERVICE_REFUSED_ERROR');
  static const XChainErrorEnum TXDATA_SIGN_ERROR = XChainErrorEnum._(21, 'TXDATA_SIGN_ERROR');
  static const XChainErrorEnum TX_SLE_ERROR = XChainErrorEnum._(25, 'TX_SLE_ERROR');
  static const XChainErrorEnum TX_FEE_NOT_ENOUGH_ERROR = XChainErrorEnum._(26, 'TX_FEE_NOT_ENOUGH_ERROR');
  static const XChainErrorEnum UTXO_SIGN_ERROR = XChainErrorEnum._(28, 'UTXO_SIGN_ERROR');
  static const XChainErrorEnum DPOS_QUERY_ERROR = XChainErrorEnum._(31, 'DPOS_QUERY_ERROR');
  static const XChainErrorEnum RWSET_INVALID_ERROR = XChainErrorEnum._(33, 'RWSET_INVALID_ERROR');
  static const XChainErrorEnum RWACL_INVALID_ERROR = XChainErrorEnum._(34, 'RWACL_INVALID_ERROR');
  static const XChainErrorEnum GAS_NOT_ENOUGH_ERROR = XChainErrorEnum._(35, 'GAS_NOT_ENOUGH_ERROR');
  static const XChainErrorEnum TX_VERSION_INVALID_ERROR = XChainErrorEnum._(36, 'TX_VERSION_INVALID_ERROR');
  static const XChainErrorEnum COMPLIANCE_CHECK_NOT_APPROVED = XChainErrorEnum._(37, 'COMPLIANCE_CHECK_NOT_APPROVED');
  static const XChainErrorEnum ACCOUNT_CONTRACT_STATUS_ERROR = XChainErrorEnum._(38, 'ACCOUNT_CONTRACT_STATUS_ERROR');
  static const XChainErrorEnum TX_VERIFICATION_ERROR = XChainErrorEnum._(40, 'TX_VERIFICATION_ERROR');

  static const $core.List<XChainErrorEnum> values = <XChainErrorEnum> [
    SUCCESS,
    UNKNOW_ERROR,
    CONNECT_REFUSE,
    NOT_ENOUGH_UTXO_ERROR,
    UTXOVM_ALREADY_UNCONFIRM_ERROR,
    UTXOVM_NOT_FOUND_ERROR,
    INPUT_OUTPUT_NOT_EQUAL_ERROR,
    TX_NOT_FOUND_ERROR,
    TX_SIGN_ERROR,
    BLOCKCHAIN_NOTEXIST,
    VALIDATE_ERROR,
    CANNOT_SYNC_BLOCK_ERROR,
    CONFIRM_BLOCK_ERROR,
    UTXOVM_PLAY_ERROR,
    WALK_ERROR,
    NOT_READY_ERROR,
    BLOCK_EXIST_ERROR,
    ROOT_BLOCK_EXIST_ERROR,
    TX_DUPLICATE_ERROR,
    SERVICE_REFUSED_ERROR,
    TXDATA_SIGN_ERROR,
    TX_SLE_ERROR,
    TX_FEE_NOT_ENOUGH_ERROR,
    UTXO_SIGN_ERROR,
    DPOS_QUERY_ERROR,
    RWSET_INVALID_ERROR,
    RWACL_INVALID_ERROR,
    GAS_NOT_ENOUGH_ERROR,
    TX_VERSION_INVALID_ERROR,
    COMPLIANCE_CHECK_NOT_APPROVED,
    ACCOUNT_CONTRACT_STATUS_ERROR,
    TX_VERIFICATION_ERROR,
  ];

  static final $core.Map<$core.int, XChainErrorEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static XChainErrorEnum valueOf($core.int value) => _byValue[value];

  const XChainErrorEnum._($core.int v, $core.String n) : super(v, n);
}

class TransactionStatus extends $pb.ProtobufEnum {
  static const TransactionStatus UNDEFINE = TransactionStatus._(0, 'UNDEFINE');
  static const TransactionStatus NOEXIST = TransactionStatus._(1, 'NOEXIST');
  static const TransactionStatus CONFIRM = TransactionStatus._(2, 'CONFIRM');
  static const TransactionStatus FURCATION = TransactionStatus._(3, 'FURCATION');
  static const TransactionStatus UNCONFIRM = TransactionStatus._(4, 'UNCONFIRM');
  static const TransactionStatus FAILED = TransactionStatus._(5, 'FAILED');

  static const $core.List<TransactionStatus> values = <TransactionStatus> [
    UNDEFINE,
    NOEXIST,
    CONFIRM,
    FURCATION,
    UNCONFIRM,
    FAILED,
  ];

  static final $core.Map<$core.int, TransactionStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionStatus valueOf($core.int value) => _byValue[value];

  const TransactionStatus._($core.int v, $core.String n) : super(v, n);
}

class ViewOption extends $pb.ProtobufEnum {
  static const ViewOption NONE = ViewOption._(0, 'NONE');
  static const ViewOption LEDGER = ViewOption._(1, 'LEDGER');
  static const ViewOption UTXOINFO = ViewOption._(2, 'UTXOINFO');
  static const ViewOption BRANCHINFO = ViewOption._(3, 'BRANCHINFO');
  static const ViewOption PEERS = ViewOption._(4, 'PEERS');

  static const $core.List<ViewOption> values = <ViewOption> [
    NONE,
    LEDGER,
    UTXOINFO,
    BRANCHINFO,
    PEERS,
  ];

  static final $core.Map<$core.int, ViewOption> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ViewOption valueOf($core.int value) => _byValue[value];

  const ViewOption._($core.int v, $core.String n) : super(v, n);
}

class PermissionRule extends $pb.ProtobufEnum {
  static const PermissionRule NULL = PermissionRule._(0, 'NULL');
  static const PermissionRule SIGN_THRESHOLD = PermissionRule._(1, 'SIGN_THRESHOLD');
  static const PermissionRule SIGN_AKSET = PermissionRule._(2, 'SIGN_AKSET');
  static const PermissionRule SIGN_RATE = PermissionRule._(3, 'SIGN_RATE');
  static const PermissionRule SIGN_SUM = PermissionRule._(4, 'SIGN_SUM');
  static const PermissionRule CA_SERVER = PermissionRule._(5, 'CA_SERVER');
  static const PermissionRule COMMUNITY_VOTE = PermissionRule._(6, 'COMMUNITY_VOTE');

  static const $core.List<PermissionRule> values = <PermissionRule> [
    NULL,
    SIGN_THRESHOLD,
    SIGN_AKSET,
    SIGN_RATE,
    SIGN_SUM,
    CA_SERVER,
    COMMUNITY_VOTE,
  ];

  static final $core.Map<$core.int, PermissionRule> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PermissionRule valueOf($core.int value) => _byValue[value];

  const PermissionRule._($core.int v, $core.String n) : super(v, n);
}

class ResourceType extends $pb.ProtobufEnum {
  static const ResourceType CPU = ResourceType._(0, 'CPU');
  static const ResourceType MEMORY = ResourceType._(1, 'MEMORY');
  static const ResourceType DISK = ResourceType._(2, 'DISK');
  static const ResourceType XFEE = ResourceType._(3, 'XFEE');

  static const $core.List<ResourceType> values = <ResourceType> [
    CPU,
    MEMORY,
    DISK,
    XFEE,
  ];

  static final $core.Map<$core.int, ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResourceType valueOf($core.int value) => _byValue[value];

  const ResourceType._($core.int v, $core.String n) : super(v, n);
}

class Block_EBlockStatus extends $pb.ProtobufEnum {
  static const Block_EBlockStatus ERROR = Block_EBlockStatus._(0, 'ERROR');
  static const Block_EBlockStatus TRUNK = Block_EBlockStatus._(1, 'TRUNK');
  static const Block_EBlockStatus BRANCH = Block_EBlockStatus._(2, 'BRANCH');
  static const Block_EBlockStatus NOEXIST = Block_EBlockStatus._(3, 'NOEXIST');

  static const $core.List<Block_EBlockStatus> values = <Block_EBlockStatus> [
    ERROR,
    TRUNK,
    BRANCH,
    NOEXIST,
  ];

  static final $core.Map<$core.int, Block_EBlockStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Block_EBlockStatus valueOf($core.int value) => _byValue[value];

  const Block_EBlockStatus._($core.int v, $core.String n) : super(v, n);
}

