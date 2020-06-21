///
//  Generated code. Do not modify.
//  source: xchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chainedbft.pb.dart' as $4;

import 'xchain.pbenum.dart';

export 'xchain.pbenum.dart';

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Header', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'logid')
    ..aOS(2, 'fromNode')
    ..e<XChainErrorEnum>(3, 'error', $pb.PbFieldType.OE, defaultOrMaker: XChainErrorEnum.SUCCESS, valueOf: XChainErrorEnum.valueOf, enumValues: XChainErrorEnum.values)
    ..hasRequiredFields = false
  ;

  Header._() : super();
  factory Header() => create();
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Header clone() => Header()..mergeFromMessage(this);
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get logid => $_getSZ(0);
  @$pb.TagNumber(1)
  set logid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogid() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromNode => $_getSZ(1);
  @$pb.TagNumber(2)
  set fromNode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromNode() => clearField(2);

  @$pb.TagNumber(3)
  XChainErrorEnum get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(XChainErrorEnum v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class TxDataAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxDataAccount', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'amount')
    ..aInt64(3, 'frozenHeight')
    ..hasRequiredFields = false
  ;

  TxDataAccount._() : super();
  factory TxDataAccount() => create();
  factory TxDataAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxDataAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxDataAccount clone() => TxDataAccount()..mergeFromMessage(this);
  TxDataAccount copyWith(void Function(TxDataAccount) updates) => super.copyWith((message) => updates(message as TxDataAccount));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxDataAccount create() => TxDataAccount._();
  TxDataAccount createEmptyInstance() => create();
  static $pb.PbList<TxDataAccount> createRepeated() => $pb.PbList<TxDataAccount>();
  @$core.pragma('dart2js:noInline')
  static TxDataAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxDataAccount>(create);
  static TxDataAccount _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get amount => $_getSZ(1);
  @$pb.TagNumber(2)
  set amount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get frozenHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set frozenHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrozenHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrozenHeight() => clearField(3);
}

class TxData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxData', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'txid', $pb.PbFieldType.OY)
    ..aOS(2, 'bcname')
    ..aOS(3, 'fromAddr')
    ..aOS(4, 'fromPubkey')
    ..aOS(5, 'fromScrkey')
    ..pc<TxDataAccount>(6, 'account', $pb.PbFieldType.PM, subBuilder: TxDataAccount.create)
    ..aOS(8, 'nonce')
    ..aInt64(9, 'timestamp')
    ..a<$core.List<$core.int>>(12, 'desc', $pb.PbFieldType.OY)
    ..aOM<Header>(13, 'header', subBuilder: Header.create)
    ..a<$core.List<$core.int>>(14, 'userSign', $pb.PbFieldType.OY)
    ..a<$core.int>(15, 'version', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TxData._() : super();
  factory TxData() => create();
  factory TxData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxData clone() => TxData()..mergeFromMessage(this);
  TxData copyWith(void Function(TxData) updates) => super.copyWith((message) => updates(message as TxData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxData create() => TxData._();
  TxData createEmptyInstance() => create();
  static $pb.PbList<TxData> createRepeated() => $pb.PbList<TxData>();
  @$core.pragma('dart2js:noInline')
  static TxData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxData>(create);
  static TxData _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txid => $_getN(0);
  @$pb.TagNumber(1)
  set txid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fromAddr => $_getSZ(2);
  @$pb.TagNumber(3)
  set fromAddr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromAddr() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get fromPubkey => $_getSZ(3);
  @$pb.TagNumber(4)
  set fromPubkey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromPubkey() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromPubkey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fromScrkey => $_getSZ(4);
  @$pb.TagNumber(5)
  set fromScrkey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFromScrkey() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromScrkey() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<TxDataAccount> get account => $_getList(5);

  @$pb.TagNumber(8)
  $core.String get nonce => $_getSZ(6);
  @$pb.TagNumber(8)
  set nonce($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasNonce() => $_has(6);
  @$pb.TagNumber(8)
  void clearNonce() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(9)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(9)
  void clearTimestamp() => clearField(9);

  @$pb.TagNumber(12)
  $core.List<$core.int> get desc => $_getN(8);
  @$pb.TagNumber(12)
  set desc($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasDesc() => $_has(8);
  @$pb.TagNumber(12)
  void clearDesc() => clearField(12);

  @$pb.TagNumber(13)
  Header get header => $_getN(9);
  @$pb.TagNumber(13)
  set header(Header v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasHeader() => $_has(9);
  @$pb.TagNumber(13)
  void clearHeader() => clearField(13);
  @$pb.TagNumber(13)
  Header ensureHeader() => $_ensure(9);

  @$pb.TagNumber(14)
  $core.List<$core.int> get userSign => $_getN(10);
  @$pb.TagNumber(14)
  set userSign($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasUserSign() => $_has(10);
  @$pb.TagNumber(14)
  void clearUserSign() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get version => $_getIZ(11);
  @$pb.TagNumber(15)
  set version($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(15)
  $core.bool hasVersion() => $_has(11);
  @$pb.TagNumber(15)
  void clearVersion() => clearField(15);
}

class TxStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..a<$core.List<$core.int>>(3, 'txid', $pb.PbFieldType.OY)
    ..e<TransactionStatus>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: TransactionStatus.UNDEFINE, valueOf: TransactionStatus.valueOf, enumValues: TransactionStatus.values)
    ..aInt64(5, 'distance')
    ..aOM<Transaction>(7, 'tx', subBuilder: Transaction.create)
    ..hasRequiredFields = false
  ;

  TxStatus._() : super();
  factory TxStatus() => create();
  factory TxStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxStatus clone() => TxStatus()..mergeFromMessage(this);
  TxStatus copyWith(void Function(TxStatus) updates) => super.copyWith((message) => updates(message as TxStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxStatus create() => TxStatus._();
  TxStatus createEmptyInstance() => create();
  static $pb.PbList<TxStatus> createRepeated() => $pb.PbList<TxStatus>();
  @$core.pragma('dart2js:noInline')
  static TxStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxStatus>(create);
  static TxStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get txid => $_getN(2);
  @$pb.TagNumber(3)
  set txid($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxid() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxid() => clearField(3);

  @$pb.TagNumber(4)
  TransactionStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TransactionStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get distance => $_getI64(4);
  @$pb.TagNumber(5)
  set distance($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => clearField(5);

  @$pb.TagNumber(7)
  Transaction get tx => $_getN(5);
  @$pb.TagNumber(7)
  set tx(Transaction v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTx() => $_has(5);
  @$pb.TagNumber(7)
  void clearTx() => clearField(7);
  @$pb.TagNumber(7)
  Transaction ensureTx() => $_ensure(5);
}

class BatchTxs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BatchTxs', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<TxStatus>(2, 'Txs', $pb.PbFieldType.PM, protoName: 'Txs', subBuilder: TxStatus.create)
    ..hasRequiredFields = false
  ;

  BatchTxs._() : super();
  factory BatchTxs() => create();
  factory BatchTxs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchTxs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BatchTxs clone() => BatchTxs()..mergeFromMessage(this);
  BatchTxs copyWith(void Function(BatchTxs) updates) => super.copyWith((message) => updates(message as BatchTxs));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BatchTxs create() => BatchTxs._();
  BatchTxs createEmptyInstance() => create();
  static $pb.PbList<BatchTxs> createRepeated() => $pb.PbList<BatchTxs>();
  @$core.pragma('dart2js:noInline')
  static BatchTxs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchTxs>(create);
  static BatchTxs _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<TxStatus> get txs => $_getList(1);
}

class Block extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Block', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..a<$core.List<$core.int>>(3, 'blockid', $pb.PbFieldType.OY)
    ..e<Block_EBlockStatus>(4, 'status', $pb.PbFieldType.OE, defaultOrMaker: Block_EBlockStatus.ERROR, valueOf: Block_EBlockStatus.valueOf, enumValues: Block_EBlockStatus.values)
    ..aOM<InternalBlock>(5, 'block', subBuilder: InternalBlock.create)
    ..hasRequiredFields = false
  ;

  Block._() : super();
  factory Block() => create();
  factory Block.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Block.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Block clone() => Block()..mergeFromMessage(this);
  Block copyWith(void Function(Block) updates) => super.copyWith((message) => updates(message as Block));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Block create() => Block._();
  Block createEmptyInstance() => create();
  static $pb.PbList<Block> createRepeated() => $pb.PbList<Block>();
  @$core.pragma('dart2js:noInline')
  static Block getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Block>(create);
  static Block _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get blockid => $_getN(2);
  @$pb.TagNumber(3)
  set blockid($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlockid() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockid() => clearField(3);

  @$pb.TagNumber(4)
  Block_EBlockStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(Block_EBlockStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  InternalBlock get block => $_getN(4);
  @$pb.TagNumber(5)
  set block(InternalBlock v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlock() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlock() => clearField(5);
  @$pb.TagNumber(5)
  InternalBlock ensureBlock() => $_ensure(4);
}

class BlockID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockID', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..a<$core.List<$core.int>>(2, 'blockid', $pb.PbFieldType.OY)
    ..aOB(3, 'needContent')
    ..aOM<Header>(4, 'header', subBuilder: Header.create)
    ..hasRequiredFields = false
  ;

  BlockID._() : super();
  factory BlockID() => create();
  factory BlockID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockID clone() => BlockID()..mergeFromMessage(this);
  BlockID copyWith(void Function(BlockID) updates) => super.copyWith((message) => updates(message as BlockID));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockID create() => BlockID._();
  BlockID createEmptyInstance() => create();
  static $pb.PbList<BlockID> createRepeated() => $pb.PbList<BlockID>();
  @$core.pragma('dart2js:noInline')
  static BlockID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockID>(create);
  static BlockID _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get blockid => $_getN(1);
  @$pb.TagNumber(2)
  set blockid($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockid() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needContent => $_getBF(2);
  @$pb.TagNumber(3)
  set needContent($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeedContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedContent() => clearField(3);

  @$pb.TagNumber(4)
  Header get header => $_getN(3);
  @$pb.TagNumber(4)
  set header(Header v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeader() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeader() => clearField(4);
  @$pb.TagNumber(4)
  Header ensureHeader() => $_ensure(3);
}

class BlockHeight extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockHeight', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aInt64(2, 'height')
    ..aOM<Header>(3, 'header', subBuilder: Header.create)
    ..hasRequiredFields = false
  ;

  BlockHeight._() : super();
  factory BlockHeight() => create();
  factory BlockHeight.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeight.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockHeight clone() => BlockHeight()..mergeFromMessage(this);
  BlockHeight copyWith(void Function(BlockHeight) updates) => super.copyWith((message) => updates(message as BlockHeight));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockHeight create() => BlockHeight._();
  BlockHeight createEmptyInstance() => create();
  static $pb.PbList<BlockHeight> createRepeated() => $pb.PbList<BlockHeight>();
  @$core.pragma('dart2js:noInline')
  static BlockHeight getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeight>(create);
  static BlockHeight _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get height => $_getI64(1);
  @$pb.TagNumber(2)
  set height($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);

  @$pb.TagNumber(3)
  Header get header => $_getN(2);
  @$pb.TagNumber(3)
  set header(Header v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeader() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeader() => clearField(3);
  @$pb.TagNumber(3)
  Header ensureHeader() => $_ensure(2);
}

class CommonReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommonReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..hasRequiredFields = false
  ;

  CommonReply._() : super();
  factory CommonReply() => create();
  factory CommonReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommonReply clone() => CommonReply()..mergeFromMessage(this);
  CommonReply copyWith(void Function(CommonReply) updates) => super.copyWith((message) => updates(message as CommonReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommonReply create() => CommonReply._();
  CommonReply createEmptyInstance() => create();
  static $pb.PbList<CommonReply> createRepeated() => $pb.PbList<CommonReply>();
  @$core.pragma('dart2js:noInline')
  static CommonReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonReply>(create);
  static CommonReply _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);
}

class CommonIn extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommonIn', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..e<ViewOption>(2, 'viewOption', $pb.PbFieldType.OE, defaultOrMaker: ViewOption.NONE, valueOf: ViewOption.valueOf, enumValues: ViewOption.values)
    ..hasRequiredFields = false
  ;

  CommonIn._() : super();
  factory CommonIn() => create();
  factory CommonIn.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonIn.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommonIn clone() => CommonIn()..mergeFromMessage(this);
  CommonIn copyWith(void Function(CommonIn) updates) => super.copyWith((message) => updates(message as CommonIn));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommonIn create() => CommonIn._();
  CommonIn createEmptyInstance() => create();
  static $pb.PbList<CommonIn> createRepeated() => $pb.PbList<CommonIn>();
  @$core.pragma('dart2js:noInline')
  static CommonIn getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonIn>(create);
  static CommonIn _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  ViewOption get viewOption => $_getN(1);
  @$pb.TagNumber(2)
  set viewOption(ViewOption v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasViewOption() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewOption() => clearField(2);
}

class TokenDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenDetail', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aOS(2, 'balance')
    ..e<XChainErrorEnum>(3, 'error', $pb.PbFieldType.OE, defaultOrMaker: XChainErrorEnum.SUCCESS, valueOf: XChainErrorEnum.valueOf, enumValues: XChainErrorEnum.values)
    ..hasRequiredFields = false
  ;

  TokenDetail._() : super();
  factory TokenDetail() => create();
  factory TokenDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenDetail clone() => TokenDetail()..mergeFromMessage(this);
  TokenDetail copyWith(void Function(TokenDetail) updates) => super.copyWith((message) => updates(message as TokenDetail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenDetail create() => TokenDetail._();
  TokenDetail createEmptyInstance() => create();
  static $pb.PbList<TokenDetail> createRepeated() => $pb.PbList<TokenDetail>();
  @$core.pragma('dart2js:noInline')
  static TokenDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenDetail>(create);
  static TokenDetail _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get balance => $_getSZ(1);
  @$pb.TagNumber(2)
  set balance($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);

  @$pb.TagNumber(3)
  XChainErrorEnum get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(XChainErrorEnum v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class AddressStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddressStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'address')
    ..pc<TokenDetail>(3, 'bcs', $pb.PbFieldType.PM, subBuilder: TokenDetail.create)
    ..hasRequiredFields = false
  ;

  AddressStatus._() : super();
  factory AddressStatus() => create();
  factory AddressStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddressStatus clone() => AddressStatus()..mergeFromMessage(this);
  AddressStatus copyWith(void Function(AddressStatus) updates) => super.copyWith((message) => updates(message as AddressStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressStatus create() => AddressStatus._();
  AddressStatus createEmptyInstance() => create();
  static $pb.PbList<AddressStatus> createRepeated() => $pb.PbList<AddressStatus>();
  @$core.pragma('dart2js:noInline')
  static AddressStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressStatus>(create);
  static AddressStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TokenDetail> get bcs => $_getList(2);
}

class TokenFrozenDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenFrozenDetail', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'balance')
    ..aOB(2, 'isFrozen', protoName: 'isFrozen')
    ..hasRequiredFields = false
  ;

  TokenFrozenDetail._() : super();
  factory TokenFrozenDetail() => create();
  factory TokenFrozenDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenFrozenDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenFrozenDetail clone() => TokenFrozenDetail()..mergeFromMessage(this);
  TokenFrozenDetail copyWith(void Function(TokenFrozenDetail) updates) => super.copyWith((message) => updates(message as TokenFrozenDetail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenFrozenDetail create() => TokenFrozenDetail._();
  TokenFrozenDetail createEmptyInstance() => create();
  static $pb.PbList<TokenFrozenDetail> createRepeated() => $pb.PbList<TokenFrozenDetail>();
  @$core.pragma('dart2js:noInline')
  static TokenFrozenDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenFrozenDetail>(create);
  static TokenFrozenDetail _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get balance => $_getSZ(0);
  @$pb.TagNumber(1)
  set balance($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isFrozen_2 => $_getBF(1);
  @$pb.TagNumber(2)
  set isFrozen_2($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsFrozen_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsFrozen_2() => clearField(2);
}

class TokenFrozenDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenFrozenDetails', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..pc<TokenFrozenDetail>(2, 'tfd', $pb.PbFieldType.PM, subBuilder: TokenFrozenDetail.create)
    ..e<XChainErrorEnum>(3, 'error', $pb.PbFieldType.OE, defaultOrMaker: XChainErrorEnum.SUCCESS, valueOf: XChainErrorEnum.valueOf, enumValues: XChainErrorEnum.values)
    ..hasRequiredFields = false
  ;

  TokenFrozenDetails._() : super();
  factory TokenFrozenDetails() => create();
  factory TokenFrozenDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenFrozenDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenFrozenDetails clone() => TokenFrozenDetails()..mergeFromMessage(this);
  TokenFrozenDetails copyWith(void Function(TokenFrozenDetails) updates) => super.copyWith((message) => updates(message as TokenFrozenDetails));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenFrozenDetails create() => TokenFrozenDetails._();
  TokenFrozenDetails createEmptyInstance() => create();
  static $pb.PbList<TokenFrozenDetails> createRepeated() => $pb.PbList<TokenFrozenDetails>();
  @$core.pragma('dart2js:noInline')
  static TokenFrozenDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenFrozenDetails>(create);
  static TokenFrozenDetails _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<TokenFrozenDetail> get tfd => $_getList(1);

  @$pb.TagNumber(3)
  XChainErrorEnum get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(XChainErrorEnum v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class AddressBalanceStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddressBalanceStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'address')
    ..pc<TokenFrozenDetails>(3, 'tfds', $pb.PbFieldType.PM, subBuilder: TokenFrozenDetails.create)
    ..hasRequiredFields = false
  ;

  AddressBalanceStatus._() : super();
  factory AddressBalanceStatus() => create();
  factory AddressBalanceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressBalanceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddressBalanceStatus clone() => AddressBalanceStatus()..mergeFromMessage(this);
  AddressBalanceStatus copyWith(void Function(AddressBalanceStatus) updates) => super.copyWith((message) => updates(message as AddressBalanceStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressBalanceStatus create() => AddressBalanceStatus._();
  AddressBalanceStatus createEmptyInstance() => create();
  static $pb.PbList<AddressBalanceStatus> createRepeated() => $pb.PbList<AddressBalanceStatus>();
  @$core.pragma('dart2js:noInline')
  static AddressBalanceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressBalanceStatus>(create);
  static AddressBalanceStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TokenFrozenDetails> get tfds => $_getList(2);
}

class TxInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxInput', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'refTxid', $pb.PbFieldType.OY)
    ..a<$core.int>(2, 'refOffset', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(5, 'fromAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'amount', $pb.PbFieldType.OY)
    ..aInt64(7, 'frozenHeight')
    ..hasRequiredFields = false
  ;

  TxInput._() : super();
  factory TxInput() => create();
  factory TxInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxInput clone() => TxInput()..mergeFromMessage(this);
  TxInput copyWith(void Function(TxInput) updates) => super.copyWith((message) => updates(message as TxInput));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxInput create() => TxInput._();
  TxInput createEmptyInstance() => create();
  static $pb.PbList<TxInput> createRepeated() => $pb.PbList<TxInput>();
  @$core.pragma('dart2js:noInline')
  static TxInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxInput>(create);
  static TxInput _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get refTxid => $_getN(0);
  @$pb.TagNumber(1)
  set refTxid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get refOffset => $_getIZ(1);
  @$pb.TagNumber(2)
  set refOffset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefOffset() => clearField(2);

  @$pb.TagNumber(5)
  $core.List<$core.int> get fromAddr => $_getN(2);
  @$pb.TagNumber(5)
  set fromAddr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasFromAddr() => $_has(2);
  @$pb.TagNumber(5)
  void clearFromAddr() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get amount => $_getN(3);
  @$pb.TagNumber(6)
  set amount($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(6)
  void clearAmount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get frozenHeight => $_getI64(4);
  @$pb.TagNumber(7)
  set frozenHeight($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasFrozenHeight() => $_has(4);
  @$pb.TagNumber(7)
  void clearFrozenHeight() => clearField(7);
}

class TxOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxOutput', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'amount', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'toAddr', $pb.PbFieldType.OY)
    ..aInt64(4, 'frozenHeight')
    ..hasRequiredFields = false
  ;

  TxOutput._() : super();
  factory TxOutput() => create();
  factory TxOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxOutput clone() => TxOutput()..mergeFromMessage(this);
  TxOutput copyWith(void Function(TxOutput) updates) => super.copyWith((message) => updates(message as TxOutput));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxOutput create() => TxOutput._();
  TxOutput createEmptyInstance() => create();
  static $pb.PbList<TxOutput> createRepeated() => $pb.PbList<TxOutput>();
  @$core.pragma('dart2js:noInline')
  static TxOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxOutput>(create);
  static TxOutput _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get amount => $_getN(0);
  @$pb.TagNumber(1)
  set amount($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get toAddr => $_getN(1);
  @$pb.TagNumber(2)
  set toAddr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearToAddr() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get frozenHeight => $_getI64(2);
  @$pb.TagNumber(4)
  set frozenHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrozenHeight() => $_has(2);
  @$pb.TagNumber(4)
  void clearFrozenHeight() => clearField(4);
}

class XuperSignature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('XuperSignature', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'publicKeys', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  XuperSignature._() : super();
  factory XuperSignature() => create();
  factory XuperSignature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory XuperSignature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  XuperSignature clone() => XuperSignature()..mergeFromMessage(this);
  XuperSignature copyWith(void Function(XuperSignature) updates) => super.copyWith((message) => updates(message as XuperSignature));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static XuperSignature create() => XuperSignature._();
  XuperSignature createEmptyInstance() => create();
  static $pb.PbList<XuperSignature> createRepeated() => $pb.PbList<XuperSignature>();
  @$core.pragma('dart2js:noInline')
  static XuperSignature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<XuperSignature>(create);
  static XuperSignature _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get publicKeys => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Transaction', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'txid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'blockid', $pb.PbFieldType.OY)
    ..pc<TxInput>(3, 'txInputs', $pb.PbFieldType.PM, subBuilder: TxInput.create)
    ..pc<TxOutput>(4, 'txOutputs', $pb.PbFieldType.PM, subBuilder: TxOutput.create)
    ..a<$core.List<$core.int>>(6, 'desc', $pb.PbFieldType.OY)
    ..aOB(7, 'coinbase')
    ..aOS(8, 'nonce')
    ..aInt64(9, 'timestamp')
    ..a<$core.int>(10, 'version', $pb.PbFieldType.O3)
    ..aOB(11, 'autogen')
    ..pc<TxInputExt>(23, 'txInputsExt', $pb.PbFieldType.PM, subBuilder: TxInputExt.create)
    ..pc<TxOutputExt>(24, 'txOutputsExt', $pb.PbFieldType.PM, subBuilder: TxOutputExt.create)
    ..pc<InvokeRequest>(25, 'contractRequests', $pb.PbFieldType.PM, subBuilder: InvokeRequest.create)
    ..aOS(26, 'initiator')
    ..pPS(27, 'authRequire')
    ..pc<SignatureInfo>(28, 'initiatorSigns', $pb.PbFieldType.PM, subBuilder: SignatureInfo.create)
    ..pc<SignatureInfo>(29, 'authRequireSigns', $pb.PbFieldType.PM, subBuilder: SignatureInfo.create)
    ..aInt64(30, 'receivedTimestamp')
    ..aOM<XuperSignature>(31, 'xuperSign', subBuilder: XuperSignature.create)
    ..aOM<ModifyBlock>(32, 'modifyBlock', subBuilder: ModifyBlock.create)
    ..aOM<HDInfo>(33, 'HDInfo', protoName: 'HD_info', subBuilder: HDInfo.create)
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction() => create();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Transaction clone() => Transaction()..mergeFromMessage(this);
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txid => $_getN(0);
  @$pb.TagNumber(1)
  set txid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get blockid => $_getN(1);
  @$pb.TagNumber(2)
  set blockid($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<TxInput> get txInputs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<TxOutput> get txOutputs => $_getList(3);

  @$pb.TagNumber(6)
  $core.List<$core.int> get desc => $_getN(4);
  @$pb.TagNumber(6)
  set desc($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasDesc() => $_has(4);
  @$pb.TagNumber(6)
  void clearDesc() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get coinbase => $_getBF(5);
  @$pb.TagNumber(7)
  set coinbase($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCoinbase() => $_has(5);
  @$pb.TagNumber(7)
  void clearCoinbase() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get nonce => $_getSZ(6);
  @$pb.TagNumber(8)
  set nonce($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasNonce() => $_has(6);
  @$pb.TagNumber(8)
  void clearNonce() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get timestamp => $_getI64(7);
  @$pb.TagNumber(9)
  set timestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(7);
  @$pb.TagNumber(9)
  void clearTimestamp() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get version => $_getIZ(8);
  @$pb.TagNumber(10)
  set version($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasVersion() => $_has(8);
  @$pb.TagNumber(10)
  void clearVersion() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get autogen => $_getBF(9);
  @$pb.TagNumber(11)
  set autogen($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasAutogen() => $_has(9);
  @$pb.TagNumber(11)
  void clearAutogen() => clearField(11);

  @$pb.TagNumber(23)
  $core.List<TxInputExt> get txInputsExt => $_getList(10);

  @$pb.TagNumber(24)
  $core.List<TxOutputExt> get txOutputsExt => $_getList(11);

  @$pb.TagNumber(25)
  $core.List<InvokeRequest> get contractRequests => $_getList(12);

  @$pb.TagNumber(26)
  $core.String get initiator => $_getSZ(13);
  @$pb.TagNumber(26)
  set initiator($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(26)
  $core.bool hasInitiator() => $_has(13);
  @$pb.TagNumber(26)
  void clearInitiator() => clearField(26);

  @$pb.TagNumber(27)
  $core.List<$core.String> get authRequire => $_getList(14);

  @$pb.TagNumber(28)
  $core.List<SignatureInfo> get initiatorSigns => $_getList(15);

  @$pb.TagNumber(29)
  $core.List<SignatureInfo> get authRequireSigns => $_getList(16);

  @$pb.TagNumber(30)
  $fixnum.Int64 get receivedTimestamp => $_getI64(17);
  @$pb.TagNumber(30)
  set receivedTimestamp($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(30)
  $core.bool hasReceivedTimestamp() => $_has(17);
  @$pb.TagNumber(30)
  void clearReceivedTimestamp() => clearField(30);

  @$pb.TagNumber(31)
  XuperSignature get xuperSign => $_getN(18);
  @$pb.TagNumber(31)
  set xuperSign(XuperSignature v) { setField(31, v); }
  @$pb.TagNumber(31)
  $core.bool hasXuperSign() => $_has(18);
  @$pb.TagNumber(31)
  void clearXuperSign() => clearField(31);
  @$pb.TagNumber(31)
  XuperSignature ensureXuperSign() => $_ensure(18);

  @$pb.TagNumber(32)
  ModifyBlock get modifyBlock => $_getN(19);
  @$pb.TagNumber(32)
  set modifyBlock(ModifyBlock v) { setField(32, v); }
  @$pb.TagNumber(32)
  $core.bool hasModifyBlock() => $_has(19);
  @$pb.TagNumber(32)
  void clearModifyBlock() => clearField(32);
  @$pb.TagNumber(32)
  ModifyBlock ensureModifyBlock() => $_ensure(19);

  @$pb.TagNumber(33)
  HDInfo get hDInfo => $_getN(20);
  @$pb.TagNumber(33)
  set hDInfo(HDInfo v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasHDInfo() => $_has(20);
  @$pb.TagNumber(33)
  void clearHDInfo() => clearField(33);
  @$pb.TagNumber(33)
  HDInfo ensureHDInfo() => $_ensure(20);
}

class LedgerMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LedgerMeta', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'rootBlockid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'tipBlockid', $pb.PbFieldType.OY)
    ..aInt64(3, 'trunkHeight')
    ..hasRequiredFields = false
  ;

  LedgerMeta._() : super();
  factory LedgerMeta() => create();
  factory LedgerMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedgerMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LedgerMeta clone() => LedgerMeta()..mergeFromMessage(this);
  LedgerMeta copyWith(void Function(LedgerMeta) updates) => super.copyWith((message) => updates(message as LedgerMeta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LedgerMeta create() => LedgerMeta._();
  LedgerMeta createEmptyInstance() => create();
  static $pb.PbList<LedgerMeta> createRepeated() => $pb.PbList<LedgerMeta>();
  @$core.pragma('dart2js:noInline')
  static LedgerMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedgerMeta>(create);
  static LedgerMeta _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rootBlockid => $_getN(0);
  @$pb.TagNumber(1)
  set rootBlockid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRootBlockid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootBlockid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get tipBlockid => $_getN(1);
  @$pb.TagNumber(2)
  set tipBlockid($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTipBlockid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTipBlockid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get trunkHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set trunkHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTrunkHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrunkHeight() => clearField(3);
}

class UtxoMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoMeta', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'latestBlockid', $pb.PbFieldType.OY)
    ..pPS(2, 'lockKeyList')
    ..aOS(3, 'utxoTotal')
    ..aInt64(4, 'avgDelay', protoName: 'avgDelay')
    ..aInt64(5, 'unconfirmTxAmount', protoName: 'unconfirmTxAmount')
    ..aInt64(6, 'maxBlockSize')
    ..pc<InvokeRequest>(7, 'reservedContracts', $pb.PbFieldType.PM, subBuilder: InvokeRequest.create)
    ..aOM<InvokeRequest>(8, 'forbiddenContract', subBuilder: InvokeRequest.create)
    ..aInt64(9, 'newAccountResourceAmount')
    ..aInt64(10, 'irreversibleBlockHeight', protoName: 'irreversibleBlockHeight')
    ..aInt64(11, 'irreversibleSlideWindow', protoName: 'irreversibleSlideWindow')
    ..aOM<GasPrice>(12, 'gasPrice', protoName: 'gasPrice', subBuilder: GasPrice.create)
    ..aOM<InvokeRequest>(13, 'groupChainContract', subBuilder: InvokeRequest.create)
    ..hasRequiredFields = false
  ;

  UtxoMeta._() : super();
  factory UtxoMeta() => create();
  factory UtxoMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoMeta clone() => UtxoMeta()..mergeFromMessage(this);
  UtxoMeta copyWith(void Function(UtxoMeta) updates) => super.copyWith((message) => updates(message as UtxoMeta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoMeta create() => UtxoMeta._();
  UtxoMeta createEmptyInstance() => create();
  static $pb.PbList<UtxoMeta> createRepeated() => $pb.PbList<UtxoMeta>();
  @$core.pragma('dart2js:noInline')
  static UtxoMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoMeta>(create);
  static UtxoMeta _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get latestBlockid => $_getN(0);
  @$pb.TagNumber(1)
  set latestBlockid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatestBlockid() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatestBlockid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get lockKeyList => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get utxoTotal => $_getSZ(2);
  @$pb.TagNumber(3)
  set utxoTotal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUtxoTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearUtxoTotal() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get avgDelay => $_getI64(3);
  @$pb.TagNumber(4)
  set avgDelay($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvgDelay() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvgDelay() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get unconfirmTxAmount => $_getI64(4);
  @$pb.TagNumber(5)
  set unconfirmTxAmount($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnconfirmTxAmount() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnconfirmTxAmount() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get maxBlockSize => $_getI64(5);
  @$pb.TagNumber(6)
  set maxBlockSize($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxBlockSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxBlockSize() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<InvokeRequest> get reservedContracts => $_getList(6);

  @$pb.TagNumber(8)
  InvokeRequest get forbiddenContract => $_getN(7);
  @$pb.TagNumber(8)
  set forbiddenContract(InvokeRequest v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasForbiddenContract() => $_has(7);
  @$pb.TagNumber(8)
  void clearForbiddenContract() => clearField(8);
  @$pb.TagNumber(8)
  InvokeRequest ensureForbiddenContract() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get newAccountResourceAmount => $_getI64(8);
  @$pb.TagNumber(9)
  set newAccountResourceAmount($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasNewAccountResourceAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearNewAccountResourceAmount() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get irreversibleBlockHeight => $_getI64(9);
  @$pb.TagNumber(10)
  set irreversibleBlockHeight($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIrreversibleBlockHeight() => $_has(9);
  @$pb.TagNumber(10)
  void clearIrreversibleBlockHeight() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get irreversibleSlideWindow => $_getI64(10);
  @$pb.TagNumber(11)
  set irreversibleSlideWindow($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIrreversibleSlideWindow() => $_has(10);
  @$pb.TagNumber(11)
  void clearIrreversibleSlideWindow() => clearField(11);

  @$pb.TagNumber(12)
  GasPrice get gasPrice => $_getN(11);
  @$pb.TagNumber(12)
  set gasPrice(GasPrice v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasGasPrice() => $_has(11);
  @$pb.TagNumber(12)
  void clearGasPrice() => clearField(12);
  @$pb.TagNumber(12)
  GasPrice ensureGasPrice() => $_ensure(11);

  @$pb.TagNumber(13)
  InvokeRequest get groupChainContract => $_getN(12);
  @$pb.TagNumber(13)
  set groupChainContract(InvokeRequest v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasGroupChainContract() => $_has(12);
  @$pb.TagNumber(13)
  void clearGroupChainContract() => clearField(13);
  @$pb.TagNumber(13)
  InvokeRequest ensureGroupChainContract() => $_ensure(12);
}

class GasPrice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GasPrice', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aInt64(1, 'cpuRate')
    ..aInt64(2, 'memRate')
    ..aInt64(3, 'diskRate')
    ..aInt64(4, 'xfeeRate')
    ..hasRequiredFields = false
  ;

  GasPrice._() : super();
  factory GasPrice() => create();
  factory GasPrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GasPrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GasPrice clone() => GasPrice()..mergeFromMessage(this);
  GasPrice copyWith(void Function(GasPrice) updates) => super.copyWith((message) => updates(message as GasPrice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GasPrice create() => GasPrice._();
  GasPrice createEmptyInstance() => create();
  static $pb.PbList<GasPrice> createRepeated() => $pb.PbList<GasPrice>();
  @$core.pragma('dart2js:noInline')
  static GasPrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GasPrice>(create);
  static GasPrice _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cpuRate => $_getI64(0);
  @$pb.TagNumber(1)
  set cpuRate($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCpuRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpuRate() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get memRate => $_getI64(1);
  @$pb.TagNumber(2)
  set memRate($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemRate() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get diskRate => $_getI64(2);
  @$pb.TagNumber(3)
  set diskRate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiskRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiskRate() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get xfeeRate => $_getI64(3);
  @$pb.TagNumber(4)
  set xfeeRate($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasXfeeRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearXfeeRate() => clearField(4);
}

class InternalBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InternalBlock', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'version', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'nonce', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, 'blockid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'preHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'proposer', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(6, 'sign', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'pubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(8, 'merkleRoot', $pb.PbFieldType.OY)
    ..aInt64(9, 'height')
    ..aInt64(10, 'timestamp')
    ..pc<Transaction>(11, 'transactions', $pb.PbFieldType.PM, subBuilder: Transaction.create)
    ..a<$core.int>(12, 'txCount', $pb.PbFieldType.O3)
    ..p<$core.List<$core.int>>(13, 'merkleTree', $pb.PbFieldType.PY)
    ..aOB(14, 'inTrunk')
    ..a<$core.List<$core.int>>(15, 'nextHash', $pb.PbFieldType.OY)
    ..aInt64(16, 'curTerm', protoName: 'curTerm')
    ..aInt64(17, 'curBlockNum', protoName: 'curBlockNum')
    ..m<$core.String, $core.String>(18, 'failedTxs', entryClassName: 'InternalBlock.FailedTxsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pb'))
    ..a<$core.int>(19, 'targetBits', $pb.PbFieldType.O3, protoName: 'targetBits')
    ..aOM<$4.QuorumCert>(20, 'Justify', protoName: 'Justify', subBuilder: $4.QuorumCert.create)
    ..hasRequiredFields = false
  ;

  InternalBlock._() : super();
  factory InternalBlock() => create();
  factory InternalBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InternalBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InternalBlock clone() => InternalBlock()..mergeFromMessage(this);
  InternalBlock copyWith(void Function(InternalBlock) updates) => super.copyWith((message) => updates(message as InternalBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InternalBlock create() => InternalBlock._();
  InternalBlock createEmptyInstance() => create();
  static $pb.PbList<InternalBlock> createRepeated() => $pb.PbList<InternalBlock>();
  @$core.pragma('dart2js:noInline')
  static InternalBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InternalBlock>(create);
  static InternalBlock _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get nonce => $_getIZ(1);
  @$pb.TagNumber(2)
  set nonce($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get blockid => $_getN(2);
  @$pb.TagNumber(3)
  set blockid($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlockid() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockid() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get preHash => $_getN(3);
  @$pb.TagNumber(4)
  set preHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPreHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreHash() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get proposer => $_getN(4);
  @$pb.TagNumber(5)
  set proposer($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProposer() => $_has(4);
  @$pb.TagNumber(5)
  void clearProposer() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get sign => $_getN(5);
  @$pb.TagNumber(6)
  set sign($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSign() => $_has(5);
  @$pb.TagNumber(6)
  void clearSign() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get pubkey => $_getN(6);
  @$pb.TagNumber(7)
  set pubkey($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPubkey() => $_has(6);
  @$pb.TagNumber(7)
  void clearPubkey() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get merkleRoot => $_getN(7);
  @$pb.TagNumber(8)
  set merkleRoot($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMerkleRoot() => $_has(7);
  @$pb.TagNumber(8)
  void clearMerkleRoot() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get height => $_getI64(8);
  @$pb.TagNumber(9)
  set height($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get timestamp => $_getI64(9);
  @$pb.TagNumber(10)
  set timestamp($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearTimestamp() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<Transaction> get transactions => $_getList(10);

  @$pb.TagNumber(12)
  $core.int get txCount => $_getIZ(11);
  @$pb.TagNumber(12)
  set txCount($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTxCount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTxCount() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.List<$core.int>> get merkleTree => $_getList(12);

  @$pb.TagNumber(14)
  $core.bool get inTrunk => $_getBF(13);
  @$pb.TagNumber(14)
  set inTrunk($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasInTrunk() => $_has(13);
  @$pb.TagNumber(14)
  void clearInTrunk() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get nextHash => $_getN(14);
  @$pb.TagNumber(15)
  set nextHash($core.List<$core.int> v) { $_setBytes(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasNextHash() => $_has(14);
  @$pb.TagNumber(15)
  void clearNextHash() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get curTerm => $_getI64(15);
  @$pb.TagNumber(16)
  set curTerm($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCurTerm() => $_has(15);
  @$pb.TagNumber(16)
  void clearCurTerm() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get curBlockNum => $_getI64(16);
  @$pb.TagNumber(17)
  set curBlockNum($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasCurBlockNum() => $_has(16);
  @$pb.TagNumber(17)
  void clearCurBlockNum() => clearField(17);

  @$pb.TagNumber(18)
  $core.Map<$core.String, $core.String> get failedTxs => $_getMap(17);

  @$pb.TagNumber(19)
  $core.int get targetBits => $_getIZ(18);
  @$pb.TagNumber(19)
  set targetBits($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTargetBits() => $_has(18);
  @$pb.TagNumber(19)
  void clearTargetBits() => clearField(19);

  @$pb.TagNumber(20)
  $4.QuorumCert get justify => $_getN(19);
  @$pb.TagNumber(20)
  set justify($4.QuorumCert v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasJustify() => $_has(19);
  @$pb.TagNumber(20)
  void clearJustify() => clearField(20);
  @$pb.TagNumber(20)
  $4.QuorumCert ensureJustify() => $_ensure(19);
}

class BCStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BCStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOM<LedgerMeta>(3, 'meta', subBuilder: LedgerMeta.create)
    ..aOM<InternalBlock>(4, 'block', subBuilder: InternalBlock.create)
    ..aOM<UtxoMeta>(5, 'utxoMeta', protoName: 'utxoMeta', subBuilder: UtxoMeta.create)
    ..pPS(6, 'branchBlockid', protoName: 'branchBlockid')
    ..hasRequiredFields = false
  ;

  BCStatus._() : super();
  factory BCStatus() => create();
  factory BCStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BCStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BCStatus clone() => BCStatus()..mergeFromMessage(this);
  BCStatus copyWith(void Function(BCStatus) updates) => super.copyWith((message) => updates(message as BCStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BCStatus create() => BCStatus._();
  BCStatus createEmptyInstance() => create();
  static $pb.PbList<BCStatus> createRepeated() => $pb.PbList<BCStatus>();
  @$core.pragma('dart2js:noInline')
  static BCStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BCStatus>(create);
  static BCStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  LedgerMeta get meta => $_getN(2);
  @$pb.TagNumber(3)
  set meta(LedgerMeta v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMeta() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeta() => clearField(3);
  @$pb.TagNumber(3)
  LedgerMeta ensureMeta() => $_ensure(2);

  @$pb.TagNumber(4)
  InternalBlock get block => $_getN(3);
  @$pb.TagNumber(4)
  set block(InternalBlock v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlock() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlock() => clearField(4);
  @$pb.TagNumber(4)
  InternalBlock ensureBlock() => $_ensure(3);

  @$pb.TagNumber(5)
  UtxoMeta get utxoMeta => $_getN(4);
  @$pb.TagNumber(5)
  set utxoMeta(UtxoMeta v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUtxoMeta() => $_has(4);
  @$pb.TagNumber(5)
  void clearUtxoMeta() => clearField(5);
  @$pb.TagNumber(5)
  UtxoMeta ensureUtxoMeta() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get branchBlockid => $_getList(5);
}

class BCTipStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BCTipStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOB(2, 'isTrunkTip')
    ..hasRequiredFields = false
  ;

  BCTipStatus._() : super();
  factory BCTipStatus() => create();
  factory BCTipStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BCTipStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BCTipStatus clone() => BCTipStatus()..mergeFromMessage(this);
  BCTipStatus copyWith(void Function(BCTipStatus) updates) => super.copyWith((message) => updates(message as BCTipStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BCTipStatus create() => BCTipStatus._();
  BCTipStatus createEmptyInstance() => create();
  static $pb.PbList<BCTipStatus> createRepeated() => $pb.PbList<BCTipStatus>();
  @$core.pragma('dart2js:noInline')
  static BCTipStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BCTipStatus>(create);
  static BCTipStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get isTrunkTip => $_getBF(1);
  @$pb.TagNumber(2)
  set isTrunkTip($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsTrunkTip() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsTrunkTip() => clearField(2);
}

class BlockChains extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlockChains', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pPS(2, 'blockchains')
    ..hasRequiredFields = false
  ;

  BlockChains._() : super();
  factory BlockChains() => create();
  factory BlockChains.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockChains.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlockChains clone() => BlockChains()..mergeFromMessage(this);
  BlockChains copyWith(void Function(BlockChains) updates) => super.copyWith((message) => updates(message as BlockChains));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockChains create() => BlockChains._();
  BlockChains createEmptyInstance() => create();
  static $pb.PbList<BlockChains> createRepeated() => $pb.PbList<BlockChains>();
  @$core.pragma('dart2js:noInline')
  static BlockChains getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockChains>(create);
  static BlockChains _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get blockchains => $_getList(1);
}

class Speeds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Speeds', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..m<$core.String, $core.double>(1, 'SumSpeeds', protoName: 'SumSpeeds', entryClassName: 'Speeds.SumSpeedsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OD, packageName: const $pb.PackageName('pb'))
    ..m<$core.String, BCSpeeds>(2, 'BcSpeeds', protoName: 'BcSpeeds', entryClassName: 'Speeds.BcSpeedsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: BCSpeeds.create, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  Speeds._() : super();
  factory Speeds() => create();
  factory Speeds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Speeds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Speeds clone() => Speeds()..mergeFromMessage(this);
  Speeds copyWith(void Function(Speeds) updates) => super.copyWith((message) => updates(message as Speeds));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Speeds create() => Speeds._();
  Speeds createEmptyInstance() => create();
  static $pb.PbList<Speeds> createRepeated() => $pb.PbList<Speeds>();
  @$core.pragma('dart2js:noInline')
  static Speeds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Speeds>(create);
  static Speeds _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.double> get sumSpeeds => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, BCSpeeds> get bcSpeeds => $_getMap(1);
}

class BCSpeeds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BCSpeeds', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..m<$core.String, $core.double>(1, 'BcSpeed', protoName: 'BcSpeed', entryClassName: 'BCSpeeds.BcSpeedEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OD, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  BCSpeeds._() : super();
  factory BCSpeeds() => create();
  factory BCSpeeds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BCSpeeds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BCSpeeds clone() => BCSpeeds()..mergeFromMessage(this);
  BCSpeeds copyWith(void Function(BCSpeeds) updates) => super.copyWith((message) => updates(message as BCSpeeds));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BCSpeeds create() => BCSpeeds._();
  BCSpeeds createEmptyInstance() => create();
  static $pb.PbList<BCSpeeds> createRepeated() => $pb.PbList<BCSpeeds>();
  @$core.pragma('dart2js:noInline')
  static BCSpeeds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BCSpeeds>(create);
  static BCSpeeds _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.double> get bcSpeed => $_getMap(0);
}

class SystemsStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SystemsStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<BCStatus>(2, 'bcsStatus', $pb.PbFieldType.PM, subBuilder: BCStatus.create)
    ..aOM<Speeds>(3, 'speeds', subBuilder: Speeds.create)
    ..pPS(4, 'peerUrls', protoName: 'peerUrls')
    ..hasRequiredFields = false
  ;

  SystemsStatus._() : super();
  factory SystemsStatus() => create();
  factory SystemsStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemsStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SystemsStatus clone() => SystemsStatus()..mergeFromMessage(this);
  SystemsStatus copyWith(void Function(SystemsStatus) updates) => super.copyWith((message) => updates(message as SystemsStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemsStatus create() => SystemsStatus._();
  SystemsStatus createEmptyInstance() => create();
  static $pb.PbList<SystemsStatus> createRepeated() => $pb.PbList<SystemsStatus>();
  @$core.pragma('dart2js:noInline')
  static SystemsStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemsStatus>(create);
  static SystemsStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<BCStatus> get bcsStatus => $_getList(1);

  @$pb.TagNumber(3)
  Speeds get speeds => $_getN(2);
  @$pb.TagNumber(3)
  set speeds(Speeds v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpeeds() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeeds() => clearField(3);
  @$pb.TagNumber(3)
  Speeds ensureSpeeds() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get peerUrls => $_getList(3);
}

class SystemsStatusReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SystemsStatusReply', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOM<SystemsStatus>(2, 'systemsStatus', subBuilder: SystemsStatus.create)
    ..hasRequiredFields = false
  ;

  SystemsStatusReply._() : super();
  factory SystemsStatusReply() => create();
  factory SystemsStatusReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemsStatusReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SystemsStatusReply clone() => SystemsStatusReply()..mergeFromMessage(this);
  SystemsStatusReply copyWith(void Function(SystemsStatusReply) updates) => super.copyWith((message) => updates(message as SystemsStatusReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemsStatusReply create() => SystemsStatusReply._();
  SystemsStatusReply createEmptyInstance() => create();
  static $pb.PbList<SystemsStatusReply> createRepeated() => $pb.PbList<SystemsStatusReply>();
  @$core.pragma('dart2js:noInline')
  static SystemsStatusReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemsStatusReply>(create);
  static SystemsStatusReply _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  SystemsStatus get systemsStatus => $_getN(1);
  @$pb.TagNumber(2)
  set systemsStatus(SystemsStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemsStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemsStatus() => clearField(2);
  @$pb.TagNumber(2)
  SystemsStatus ensureSystemsStatus() => $_ensure(1);
}

class RawUrl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RawUrl', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'rawUrl', protoName: 'rawUrl')
    ..hasRequiredFields = false
  ;

  RawUrl._() : super();
  factory RawUrl() => create();
  factory RawUrl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawUrl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RawUrl clone() => RawUrl()..mergeFromMessage(this);
  RawUrl copyWith(void Function(RawUrl) updates) => super.copyWith((message) => updates(message as RawUrl));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawUrl create() => RawUrl._();
  RawUrl createEmptyInstance() => create();
  static $pb.PbList<RawUrl> createRepeated() => $pb.PbList<RawUrl>();
  @$core.pragma('dart2js:noInline')
  static RawUrl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawUrl>(create);
  static RawUrl _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get rawUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set rawUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRawUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawUrl() => clearField(2);
}

class Utxo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Utxo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'amount', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'toAddr', $pb.PbFieldType.OY, protoName: 'toAddr')
    ..a<$core.List<$core.int>>(3, 'toPubkey', $pb.PbFieldType.OY, protoName: 'toPubkey')
    ..a<$core.List<$core.int>>(4, 'refTxid', $pb.PbFieldType.OY, protoName: 'refTxid')
    ..a<$core.int>(5, 'refOffset', $pb.PbFieldType.O3, protoName: 'refOffset')
    ..hasRequiredFields = false
  ;

  Utxo._() : super();
  factory Utxo() => create();
  factory Utxo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Utxo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Utxo clone() => Utxo()..mergeFromMessage(this);
  Utxo copyWith(void Function(Utxo) updates) => super.copyWith((message) => updates(message as Utxo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Utxo create() => Utxo._();
  Utxo createEmptyInstance() => create();
  static $pb.PbList<Utxo> createRepeated() => $pb.PbList<Utxo>();
  @$core.pragma('dart2js:noInline')
  static Utxo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Utxo>(create);
  static Utxo _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get amount => $_getN(0);
  @$pb.TagNumber(1)
  set amount($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get toAddr => $_getN(1);
  @$pb.TagNumber(2)
  set toAddr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearToAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get toPubkey => $_getN(2);
  @$pb.TagNumber(3)
  set toPubkey($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToPubkey() => $_has(2);
  @$pb.TagNumber(3)
  void clearToPubkey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get refTxid => $_getN(3);
  @$pb.TagNumber(4)
  set refTxid($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRefTxid() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefTxid() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get refOffset => $_getIZ(4);
  @$pb.TagNumber(5)
  set refOffset($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRefOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefOffset() => clearField(5);
}

class UtxoInput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoInput', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..aOS(4, 'publickey')
    ..aOS(5, 'totalNeed', protoName: 'totalNeed')
    ..a<$core.List<$core.int>>(7, 'userSign', $pb.PbFieldType.OY, protoName: 'userSign')
    ..aOB(8, 'needLock', protoName: 'needLock')
    ..hasRequiredFields = false
  ;

  UtxoInput._() : super();
  factory UtxoInput() => create();
  factory UtxoInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoInput clone() => UtxoInput()..mergeFromMessage(this);
  UtxoInput copyWith(void Function(UtxoInput) updates) => super.copyWith((message) => updates(message as UtxoInput));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoInput create() => UtxoInput._();
  UtxoInput createEmptyInstance() => create();
  static $pb.PbList<UtxoInput> createRepeated() => $pb.PbList<UtxoInput>();
  @$core.pragma('dart2js:noInline')
  static UtxoInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoInput>(create);
  static UtxoInput _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get publickey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publickey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublickey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublickey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get totalNeed => $_getSZ(4);
  @$pb.TagNumber(5)
  set totalNeed($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalNeed() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalNeed() => clearField(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get userSign => $_getN(5);
  @$pb.TagNumber(7)
  set userSign($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserSign() => $_has(5);
  @$pb.TagNumber(7)
  void clearUserSign() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get needLock => $_getBF(6);
  @$pb.TagNumber(8)
  set needLock($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasNeedLock() => $_has(6);
  @$pb.TagNumber(8)
  void clearNeedLock() => clearField(8);
}

class UtxoOutput extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoOutput', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<Utxo>(2, 'utxoList', $pb.PbFieldType.PM, protoName: 'utxoList', subBuilder: Utxo.create)
    ..aOS(3, 'totalSelected', protoName: 'totalSelected')
    ..hasRequiredFields = false
  ;

  UtxoOutput._() : super();
  factory UtxoOutput() => create();
  factory UtxoOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoOutput clone() => UtxoOutput()..mergeFromMessage(this);
  UtxoOutput copyWith(void Function(UtxoOutput) updates) => super.copyWith((message) => updates(message as UtxoOutput));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoOutput create() => UtxoOutput._();
  UtxoOutput createEmptyInstance() => create();
  static $pb.PbList<UtxoOutput> createRepeated() => $pb.PbList<UtxoOutput>();
  @$core.pragma('dart2js:noInline')
  static UtxoOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoOutput>(create);
  static UtxoOutput _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Utxo> get utxoList => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get totalSelected => $_getSZ(2);
  @$pb.TagNumber(3)
  set totalSelected($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSelected() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSelected() => clearField(3);
}

class NativeCodeDesc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NativeCodeDesc', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'name')
    ..aOS(2, 'version')
    ..a<$core.List<$core.int>>(3, 'digest', $pb.PbFieldType.OY)
    ..aOS(4, 'prevVersion', protoName: 'prevVersion')
    ..a<$core.int>(5, 'xuperApiVersion', $pb.PbFieldType.O3, protoName: 'xuperApiVersion')
    ..hasRequiredFields = false
  ;

  NativeCodeDesc._() : super();
  factory NativeCodeDesc() => create();
  factory NativeCodeDesc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NativeCodeDesc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NativeCodeDesc clone() => NativeCodeDesc()..mergeFromMessage(this);
  NativeCodeDesc copyWith(void Function(NativeCodeDesc) updates) => super.copyWith((message) => updates(message as NativeCodeDesc));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NativeCodeDesc create() => NativeCodeDesc._();
  NativeCodeDesc createEmptyInstance() => create();
  static $pb.PbList<NativeCodeDesc> createRepeated() => $pb.PbList<NativeCodeDesc>();
  @$core.pragma('dart2js:noInline')
  static NativeCodeDesc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NativeCodeDesc>(create);
  static NativeCodeDesc _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get digest => $_getN(2);
  @$pb.TagNumber(3)
  set digest($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get prevVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set prevVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrevVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrevVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get xuperApiVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set xuperApiVersion($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasXuperApiVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearXuperApiVersion() => clearField(5);
}

class WasmCodeDesc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WasmCodeDesc', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'runtime')
    ..aOS(2, 'compiler')
    ..a<$core.List<$core.int>>(3, 'digest', $pb.PbFieldType.OY)
    ..aOS(4, 'vmCompiler')
    ..aOS(5, 'contractType')
    ..hasRequiredFields = false
  ;

  WasmCodeDesc._() : super();
  factory WasmCodeDesc() => create();
  factory WasmCodeDesc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WasmCodeDesc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WasmCodeDesc clone() => WasmCodeDesc()..mergeFromMessage(this);
  WasmCodeDesc copyWith(void Function(WasmCodeDesc) updates) => super.copyWith((message) => updates(message as WasmCodeDesc));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WasmCodeDesc create() => WasmCodeDesc._();
  WasmCodeDesc createEmptyInstance() => create();
  static $pb.PbList<WasmCodeDesc> createRepeated() => $pb.PbList<WasmCodeDesc>();
  @$core.pragma('dart2js:noInline')
  static WasmCodeDesc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WasmCodeDesc>(create);
  static WasmCodeDesc _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get runtime => $_getSZ(0);
  @$pb.TagNumber(1)
  set runtime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRuntime() => $_has(0);
  @$pb.TagNumber(1)
  void clearRuntime() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get compiler => $_getSZ(1);
  @$pb.TagNumber(2)
  set compiler($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCompiler() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompiler() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get digest => $_getN(2);
  @$pb.TagNumber(3)
  set digest($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get vmCompiler => $_getSZ(3);
  @$pb.TagNumber(4)
  set vmCompiler($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVmCompiler() => $_has(3);
  @$pb.TagNumber(4)
  void clearVmCompiler() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contractType => $_getSZ(4);
  @$pb.TagNumber(5)
  set contractType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContractType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContractType() => clearField(5);
}

class DeployNativeCodeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployNativeCodeRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOM<NativeCodeDesc>(3, 'desc', subBuilder: NativeCodeDesc.create)
    ..a<$core.List<$core.int>>(4, 'code', $pb.PbFieldType.OY)
    ..aOS(5, 'address')
    ..a<$core.List<$core.int>>(6, 'pubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(7, 'sign', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  DeployNativeCodeRequest._() : super();
  factory DeployNativeCodeRequest() => create();
  factory DeployNativeCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployNativeCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployNativeCodeRequest clone() => DeployNativeCodeRequest()..mergeFromMessage(this);
  DeployNativeCodeRequest copyWith(void Function(DeployNativeCodeRequest) updates) => super.copyWith((message) => updates(message as DeployNativeCodeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployNativeCodeRequest create() => DeployNativeCodeRequest._();
  DeployNativeCodeRequest createEmptyInstance() => create();
  static $pb.PbList<DeployNativeCodeRequest> createRepeated() => $pb.PbList<DeployNativeCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeployNativeCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployNativeCodeRequest>(create);
  static DeployNativeCodeRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  NativeCodeDesc get desc => $_getN(2);
  @$pb.TagNumber(3)
  set desc(NativeCodeDesc v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);
  @$pb.TagNumber(3)
  NativeCodeDesc ensureDesc() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get code => $_getN(3);
  @$pb.TagNumber(4)
  set code($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get address => $_getSZ(4);
  @$pb.TagNumber(5)
  set address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get pubkey => $_getN(5);
  @$pb.TagNumber(6)
  set pubkey($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPubkey() => $_has(5);
  @$pb.TagNumber(6)
  void clearPubkey() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get sign => $_getN(6);
  @$pb.TagNumber(7)
  set sign($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSign() => $_has(6);
  @$pb.TagNumber(7)
  void clearSign() => clearField(7);
}

class DeployNativeCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeployNativeCodeResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..hasRequiredFields = false
  ;

  DeployNativeCodeResponse._() : super();
  factory DeployNativeCodeResponse() => create();
  factory DeployNativeCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployNativeCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DeployNativeCodeResponse clone() => DeployNativeCodeResponse()..mergeFromMessage(this);
  DeployNativeCodeResponse copyWith(void Function(DeployNativeCodeResponse) updates) => super.copyWith((message) => updates(message as DeployNativeCodeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployNativeCodeResponse create() => DeployNativeCodeResponse._();
  DeployNativeCodeResponse createEmptyInstance() => create();
  static $pb.PbList<DeployNativeCodeResponse> createRepeated() => $pb.PbList<DeployNativeCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeployNativeCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployNativeCodeResponse>(create);
  static DeployNativeCodeResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);
}

class NativeCodeStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NativeCodeStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<NativeCodeDesc>(1, 'desc', subBuilder: NativeCodeDesc.create)
    ..a<$core.int>(2, 'status', $pb.PbFieldType.O3)
    ..aOB(3, 'healthy')
    ..hasRequiredFields = false
  ;

  NativeCodeStatus._() : super();
  factory NativeCodeStatus() => create();
  factory NativeCodeStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NativeCodeStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NativeCodeStatus clone() => NativeCodeStatus()..mergeFromMessage(this);
  NativeCodeStatus copyWith(void Function(NativeCodeStatus) updates) => super.copyWith((message) => updates(message as NativeCodeStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatus create() => NativeCodeStatus._();
  NativeCodeStatus createEmptyInstance() => create();
  static $pb.PbList<NativeCodeStatus> createRepeated() => $pb.PbList<NativeCodeStatus>();
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NativeCodeStatus>(create);
  static NativeCodeStatus _defaultInstance;

  @$pb.TagNumber(1)
  NativeCodeDesc get desc => $_getN(0);
  @$pb.TagNumber(1)
  set desc(NativeCodeDesc v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDesc() => $_has(0);
  @$pb.TagNumber(1)
  void clearDesc() => clearField(1);
  @$pb.TagNumber(1)
  NativeCodeDesc ensureDesc() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get healthy => $_getBF(2);
  @$pb.TagNumber(3)
  set healthy($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHealthy() => $_has(2);
  @$pb.TagNumber(3)
  void clearHealthy() => clearField(3);
}

class NativeCodeStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NativeCodeStatusRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..hasRequiredFields = false
  ;

  NativeCodeStatusRequest._() : super();
  factory NativeCodeStatusRequest() => create();
  factory NativeCodeStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NativeCodeStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NativeCodeStatusRequest clone() => NativeCodeStatusRequest()..mergeFromMessage(this);
  NativeCodeStatusRequest copyWith(void Function(NativeCodeStatusRequest) updates) => super.copyWith((message) => updates(message as NativeCodeStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatusRequest create() => NativeCodeStatusRequest._();
  NativeCodeStatusRequest createEmptyInstance() => create();
  static $pb.PbList<NativeCodeStatusRequest> createRepeated() => $pb.PbList<NativeCodeStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NativeCodeStatusRequest>(create);
  static NativeCodeStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);
}

class NativeCodeStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NativeCodeStatusResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<NativeCodeStatus>(2, 'status', $pb.PbFieldType.PM, subBuilder: NativeCodeStatus.create)
    ..hasRequiredFields = false
  ;

  NativeCodeStatusResponse._() : super();
  factory NativeCodeStatusResponse() => create();
  factory NativeCodeStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NativeCodeStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NativeCodeStatusResponse clone() => NativeCodeStatusResponse()..mergeFromMessage(this);
  NativeCodeStatusResponse copyWith(void Function(NativeCodeStatusResponse) updates) => super.copyWith((message) => updates(message as NativeCodeStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatusResponse create() => NativeCodeStatusResponse._();
  NativeCodeStatusResponse createEmptyInstance() => create();
  static $pb.PbList<NativeCodeStatusResponse> createRepeated() => $pb.PbList<NativeCodeStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static NativeCodeStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NativeCodeStatusResponse>(create);
  static NativeCodeStatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<NativeCodeStatus> get status => $_getList(1);
}

class DposCandidatesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposCandidatesRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..hasRequiredFields = false
  ;

  DposCandidatesRequest._() : super();
  factory DposCandidatesRequest() => create();
  factory DposCandidatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposCandidatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposCandidatesRequest clone() => DposCandidatesRequest()..mergeFromMessage(this);
  DposCandidatesRequest copyWith(void Function(DposCandidatesRequest) updates) => super.copyWith((message) => updates(message as DposCandidatesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposCandidatesRequest create() => DposCandidatesRequest._();
  DposCandidatesRequest createEmptyInstance() => create();
  static $pb.PbList<DposCandidatesRequest> createRepeated() => $pb.PbList<DposCandidatesRequest>();
  @$core.pragma('dart2js:noInline')
  static DposCandidatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposCandidatesRequest>(create);
  static DposCandidatesRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);
}

class DposCandidatesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposCandidatesResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pPS(2, 'candidatesInfo', protoName: 'candidatesInfo')
    ..hasRequiredFields = false
  ;

  DposCandidatesResponse._() : super();
  factory DposCandidatesResponse() => create();
  factory DposCandidatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposCandidatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposCandidatesResponse clone() => DposCandidatesResponse()..mergeFromMessage(this);
  DposCandidatesResponse copyWith(void Function(DposCandidatesResponse) updates) => super.copyWith((message) => updates(message as DposCandidatesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposCandidatesResponse create() => DposCandidatesResponse._();
  DposCandidatesResponse createEmptyInstance() => create();
  static $pb.PbList<DposCandidatesResponse> createRepeated() => $pb.PbList<DposCandidatesResponse>();
  @$core.pragma('dart2js:noInline')
  static DposCandidatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposCandidatesResponse>(create);
  static DposCandidatesResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get candidatesInfo => $_getList(1);
}

class DposNominateRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposNominateRecordsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  DposNominateRecordsRequest._() : super();
  factory DposNominateRecordsRequest() => create();
  factory DposNominateRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposNominateRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposNominateRecordsRequest clone() => DposNominateRecordsRequest()..mergeFromMessage(this);
  DposNominateRecordsRequest copyWith(void Function(DposNominateRecordsRequest) updates) => super.copyWith((message) => updates(message as DposNominateRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposNominateRecordsRequest create() => DposNominateRecordsRequest._();
  DposNominateRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<DposNominateRecordsRequest> createRepeated() => $pb.PbList<DposNominateRecordsRequest>();
  @$core.pragma('dart2js:noInline')
  static DposNominateRecordsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposNominateRecordsRequest>(create);
  static DposNominateRecordsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class DposNominateInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposNominateInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'candidate')
    ..aOS(2, 'txid')
    ..hasRequiredFields = false
  ;

  DposNominateInfo._() : super();
  factory DposNominateInfo() => create();
  factory DposNominateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposNominateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposNominateInfo clone() => DposNominateInfo()..mergeFromMessage(this);
  DposNominateInfo copyWith(void Function(DposNominateInfo) updates) => super.copyWith((message) => updates(message as DposNominateInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposNominateInfo create() => DposNominateInfo._();
  DposNominateInfo createEmptyInstance() => create();
  static $pb.PbList<DposNominateInfo> createRepeated() => $pb.PbList<DposNominateInfo>();
  @$core.pragma('dart2js:noInline')
  static DposNominateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposNominateInfo>(create);
  static DposNominateInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get candidate => $_getSZ(0);
  @$pb.TagNumber(1)
  set candidate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCandidate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCandidate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txid => $_getSZ(1);
  @$pb.TagNumber(2)
  set txid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxid() => clearField(2);
}

class DposNominateRecordsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposNominateRecordsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<DposNominateInfo>(2, 'nominateRecords', $pb.PbFieldType.PM, protoName: 'nominateRecords', subBuilder: DposNominateInfo.create)
    ..hasRequiredFields = false
  ;

  DposNominateRecordsResponse._() : super();
  factory DposNominateRecordsResponse() => create();
  factory DposNominateRecordsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposNominateRecordsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposNominateRecordsResponse clone() => DposNominateRecordsResponse()..mergeFromMessage(this);
  DposNominateRecordsResponse copyWith(void Function(DposNominateRecordsResponse) updates) => super.copyWith((message) => updates(message as DposNominateRecordsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposNominateRecordsResponse create() => DposNominateRecordsResponse._();
  DposNominateRecordsResponse createEmptyInstance() => create();
  static $pb.PbList<DposNominateRecordsResponse> createRepeated() => $pb.PbList<DposNominateRecordsResponse>();
  @$core.pragma('dart2js:noInline')
  static DposNominateRecordsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposNominateRecordsResponse>(create);
  static DposNominateRecordsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<DposNominateInfo> get nominateRecords => $_getList(1);
}

class DposNomineeRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposNomineeRecordsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  DposNomineeRecordsRequest._() : super();
  factory DposNomineeRecordsRequest() => create();
  factory DposNomineeRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposNomineeRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposNomineeRecordsRequest clone() => DposNomineeRecordsRequest()..mergeFromMessage(this);
  DposNomineeRecordsRequest copyWith(void Function(DposNomineeRecordsRequest) updates) => super.copyWith((message) => updates(message as DposNomineeRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposNomineeRecordsRequest create() => DposNomineeRecordsRequest._();
  DposNomineeRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<DposNomineeRecordsRequest> createRepeated() => $pb.PbList<DposNomineeRecordsRequest>();
  @$core.pragma('dart2js:noInline')
  static DposNomineeRecordsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposNomineeRecordsRequest>(create);
  static DposNomineeRecordsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class DposNomineeRecordsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposNomineeRecordsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'txid')
    ..hasRequiredFields = false
  ;

  DposNomineeRecordsResponse._() : super();
  factory DposNomineeRecordsResponse() => create();
  factory DposNomineeRecordsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposNomineeRecordsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposNomineeRecordsResponse clone() => DposNomineeRecordsResponse()..mergeFromMessage(this);
  DposNomineeRecordsResponse copyWith(void Function(DposNomineeRecordsResponse) updates) => super.copyWith((message) => updates(message as DposNomineeRecordsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposNomineeRecordsResponse create() => DposNomineeRecordsResponse._();
  DposNomineeRecordsResponse createEmptyInstance() => create();
  static $pb.PbList<DposNomineeRecordsResponse> createRepeated() => $pb.PbList<DposNomineeRecordsResponse>();
  @$core.pragma('dart2js:noInline')
  static DposNomineeRecordsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposNomineeRecordsResponse>(create);
  static DposNomineeRecordsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get txid => $_getSZ(1);
  @$pb.TagNumber(2)
  set txid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxid() => clearField(2);
}

class DposVoteRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposVoteRecordsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  DposVoteRecordsRequest._() : super();
  factory DposVoteRecordsRequest() => create();
  factory DposVoteRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposVoteRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposVoteRecordsRequest clone() => DposVoteRecordsRequest()..mergeFromMessage(this);
  DposVoteRecordsRequest copyWith(void Function(DposVoteRecordsRequest) updates) => super.copyWith((message) => updates(message as DposVoteRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposVoteRecordsRequest create() => DposVoteRecordsRequest._();
  DposVoteRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<DposVoteRecordsRequest> createRepeated() => $pb.PbList<DposVoteRecordsRequest>();
  @$core.pragma('dart2js:noInline')
  static DposVoteRecordsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposVoteRecordsRequest>(create);
  static DposVoteRecordsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class voteRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('voteRecord', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'candidate')
    ..aOS(2, 'txid')
    ..hasRequiredFields = false
  ;

  voteRecord._() : super();
  factory voteRecord() => create();
  factory voteRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory voteRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  voteRecord clone() => voteRecord()..mergeFromMessage(this);
  voteRecord copyWith(void Function(voteRecord) updates) => super.copyWith((message) => updates(message as voteRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static voteRecord create() => voteRecord._();
  voteRecord createEmptyInstance() => create();
  static $pb.PbList<voteRecord> createRepeated() => $pb.PbList<voteRecord>();
  @$core.pragma('dart2js:noInline')
  static voteRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<voteRecord>(create);
  static voteRecord _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get candidate => $_getSZ(0);
  @$pb.TagNumber(1)
  set candidate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCandidate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCandidate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txid => $_getSZ(1);
  @$pb.TagNumber(2)
  set txid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxid() => clearField(2);
}

class DposVoteRecordsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposVoteRecordsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<voteRecord>(2, 'voteTxidRecords', $pb.PbFieldType.PM, protoName: 'voteTxidRecords', subBuilder: voteRecord.create)
    ..hasRequiredFields = false
  ;

  DposVoteRecordsResponse._() : super();
  factory DposVoteRecordsResponse() => create();
  factory DposVoteRecordsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposVoteRecordsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposVoteRecordsResponse clone() => DposVoteRecordsResponse()..mergeFromMessage(this);
  DposVoteRecordsResponse copyWith(void Function(DposVoteRecordsResponse) updates) => super.copyWith((message) => updates(message as DposVoteRecordsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposVoteRecordsResponse create() => DposVoteRecordsResponse._();
  DposVoteRecordsResponse createEmptyInstance() => create();
  static $pb.PbList<DposVoteRecordsResponse> createRepeated() => $pb.PbList<DposVoteRecordsResponse>();
  @$core.pragma('dart2js:noInline')
  static DposVoteRecordsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposVoteRecordsResponse>(create);
  static DposVoteRecordsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<voteRecord> get voteTxidRecords => $_getList(1);
}

class DposVotedRecordsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposVotedRecordsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  DposVotedRecordsRequest._() : super();
  factory DposVotedRecordsRequest() => create();
  factory DposVotedRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposVotedRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposVotedRecordsRequest clone() => DposVotedRecordsRequest()..mergeFromMessage(this);
  DposVotedRecordsRequest copyWith(void Function(DposVotedRecordsRequest) updates) => super.copyWith((message) => updates(message as DposVotedRecordsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposVotedRecordsRequest create() => DposVotedRecordsRequest._();
  DposVotedRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<DposVotedRecordsRequest> createRepeated() => $pb.PbList<DposVotedRecordsRequest>();
  @$core.pragma('dart2js:noInline')
  static DposVotedRecordsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposVotedRecordsRequest>(create);
  static DposVotedRecordsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class votedRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('votedRecord', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'voter')
    ..aOS(2, 'txid')
    ..hasRequiredFields = false
  ;

  votedRecord._() : super();
  factory votedRecord() => create();
  factory votedRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory votedRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  votedRecord clone() => votedRecord()..mergeFromMessage(this);
  votedRecord copyWith(void Function(votedRecord) updates) => super.copyWith((message) => updates(message as votedRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static votedRecord create() => votedRecord._();
  votedRecord createEmptyInstance() => create();
  static $pb.PbList<votedRecord> createRepeated() => $pb.PbList<votedRecord>();
  @$core.pragma('dart2js:noInline')
  static votedRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<votedRecord>(create);
  static votedRecord _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get voter => $_getSZ(0);
  @$pb.TagNumber(1)
  set voter($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoter() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoter() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txid => $_getSZ(1);
  @$pb.TagNumber(2)
  set txid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxid() => clearField(2);
}

class DposVotedRecordsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposVotedRecordsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<votedRecord>(2, 'votedTxidRecords', $pb.PbFieldType.PM, protoName: 'votedTxidRecords', subBuilder: votedRecord.create)
    ..hasRequiredFields = false
  ;

  DposVotedRecordsResponse._() : super();
  factory DposVotedRecordsResponse() => create();
  factory DposVotedRecordsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposVotedRecordsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposVotedRecordsResponse clone() => DposVotedRecordsResponse()..mergeFromMessage(this);
  DposVotedRecordsResponse copyWith(void Function(DposVotedRecordsResponse) updates) => super.copyWith((message) => updates(message as DposVotedRecordsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposVotedRecordsResponse create() => DposVotedRecordsResponse._();
  DposVotedRecordsResponse createEmptyInstance() => create();
  static $pb.PbList<DposVotedRecordsResponse> createRepeated() => $pb.PbList<DposVotedRecordsResponse>();
  @$core.pragma('dart2js:noInline')
  static DposVotedRecordsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposVotedRecordsResponse>(create);
  static DposVotedRecordsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<votedRecord> get votedTxidRecords => $_getList(1);
}

class DposCheckResultsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposCheckResultsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aInt64(3, 'term')
    ..hasRequiredFields = false
  ;

  DposCheckResultsRequest._() : super();
  factory DposCheckResultsRequest() => create();
  factory DposCheckResultsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposCheckResultsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposCheckResultsRequest clone() => DposCheckResultsRequest()..mergeFromMessage(this);
  DposCheckResultsRequest copyWith(void Function(DposCheckResultsRequest) updates) => super.copyWith((message) => updates(message as DposCheckResultsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposCheckResultsRequest create() => DposCheckResultsRequest._();
  DposCheckResultsRequest createEmptyInstance() => create();
  static $pb.PbList<DposCheckResultsRequest> createRepeated() => $pb.PbList<DposCheckResultsRequest>();
  @$core.pragma('dart2js:noInline')
  static DposCheckResultsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposCheckResultsRequest>(create);
  static DposCheckResultsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get term => $_getI64(2);
  @$pb.TagNumber(3)
  set term($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerm() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerm() => clearField(3);
}

class DposCheckResultsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposCheckResultsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aInt64(2, 'term')
    ..pPS(3, 'checkResult', protoName: 'checkResult')
    ..hasRequiredFields = false
  ;

  DposCheckResultsResponse._() : super();
  factory DposCheckResultsResponse() => create();
  factory DposCheckResultsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposCheckResultsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposCheckResultsResponse clone() => DposCheckResultsResponse()..mergeFromMessage(this);
  DposCheckResultsResponse copyWith(void Function(DposCheckResultsResponse) updates) => super.copyWith((message) => updates(message as DposCheckResultsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposCheckResultsResponse create() => DposCheckResultsResponse._();
  DposCheckResultsResponse createEmptyInstance() => create();
  static $pb.PbList<DposCheckResultsResponse> createRepeated() => $pb.PbList<DposCheckResultsResponse>();
  @$core.pragma('dart2js:noInline')
  static DposCheckResultsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposCheckResultsResponse>(create);
  static DposCheckResultsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get term => $_getI64(1);
  @$pb.TagNumber(2)
  set term($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTerm() => $_has(1);
  @$pb.TagNumber(2)
  void clearTerm() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get checkResult => $_getList(2);
}

class DposStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposStatusRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..hasRequiredFields = false
  ;

  DposStatusRequest._() : super();
  factory DposStatusRequest() => create();
  factory DposStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposStatusRequest clone() => DposStatusRequest()..mergeFromMessage(this);
  DposStatusRequest copyWith(void Function(DposStatusRequest) updates) => super.copyWith((message) => updates(message as DposStatusRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposStatusRequest create() => DposStatusRequest._();
  DposStatusRequest createEmptyInstance() => create();
  static $pb.PbList<DposStatusRequest> createRepeated() => $pb.PbList<DposStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static DposStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposStatusRequest>(create);
  static DposStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);
}

class DposStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposStatusResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOM<DposStatus>(2, 'status', subBuilder: DposStatus.create)
    ..hasRequiredFields = false
  ;

  DposStatusResponse._() : super();
  factory DposStatusResponse() => create();
  factory DposStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposStatusResponse clone() => DposStatusResponse()..mergeFromMessage(this);
  DposStatusResponse copyWith(void Function(DposStatusResponse) updates) => super.copyWith((message) => updates(message as DposStatusResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposStatusResponse create() => DposStatusResponse._();
  DposStatusResponse createEmptyInstance() => create();
  static $pb.PbList<DposStatusResponse> createRepeated() => $pb.PbList<DposStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static DposStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposStatusResponse>(create);
  static DposStatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  DposStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(DposStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  DposStatus ensureStatus() => $_ensure(1);
}

class DposStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DposStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aInt64(1, 'term')
    ..aInt64(2, 'blockNum')
    ..aOS(3, 'proposer')
    ..aInt64(4, 'proposerNum')
    ..pPS(5, 'checkResult', protoName: 'checkResult')
    ..hasRequiredFields = false
  ;

  DposStatus._() : super();
  factory DposStatus() => create();
  factory DposStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DposStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DposStatus clone() => DposStatus()..mergeFromMessage(this);
  DposStatus copyWith(void Function(DposStatus) updates) => super.copyWith((message) => updates(message as DposStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DposStatus create() => DposStatus._();
  DposStatus createEmptyInstance() => create();
  static $pb.PbList<DposStatus> createRepeated() => $pb.PbList<DposStatus>();
  @$core.pragma('dart2js:noInline')
  static DposStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DposStatus>(create);
  static DposStatus _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get term => $_getI64(0);
  @$pb.TagNumber(1)
  set term($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTerm() => $_has(0);
  @$pb.TagNumber(1)
  void clearTerm() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockNum => $_getI64(1);
  @$pb.TagNumber(2)
  set blockNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockNum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get proposer => $_getSZ(2);
  @$pb.TagNumber(3)
  set proposer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProposer() => $_has(2);
  @$pb.TagNumber(3)
  void clearProposer() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get proposerNum => $_getI64(3);
  @$pb.TagNumber(4)
  set proposerNum($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProposerNum() => $_has(3);
  @$pb.TagNumber(4)
  void clearProposerNum() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get checkResult => $_getList(4);
}

class InvokeRPCRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvokeRPCRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..pc<InvokeRequest>(3, 'requests', $pb.PbFieldType.PM, subBuilder: InvokeRequest.create)
    ..aOS(4, 'initiator')
    ..pPS(5, 'authRequire')
    ..hasRequiredFields = false
  ;

  InvokeRPCRequest._() : super();
  factory InvokeRPCRequest() => create();
  factory InvokeRPCRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvokeRPCRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InvokeRPCRequest clone() => InvokeRPCRequest()..mergeFromMessage(this);
  InvokeRPCRequest copyWith(void Function(InvokeRPCRequest) updates) => super.copyWith((message) => updates(message as InvokeRPCRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeRPCRequest create() => InvokeRPCRequest._();
  InvokeRPCRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeRPCRequest> createRepeated() => $pb.PbList<InvokeRPCRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeRPCRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvokeRPCRequest>(create);
  static InvokeRPCRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<InvokeRequest> get requests => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get initiator => $_getSZ(3);
  @$pb.TagNumber(4)
  set initiator($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInitiator() => $_has(3);
  @$pb.TagNumber(4)
  void clearInitiator() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get authRequire => $_getList(4);
}

class InvokeRPCResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvokeRPCResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOM<InvokeResponse>(3, 'response', subBuilder: InvokeResponse.create)
    ..hasRequiredFields = false
  ;

  InvokeRPCResponse._() : super();
  factory InvokeRPCResponse() => create();
  factory InvokeRPCResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvokeRPCResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InvokeRPCResponse clone() => InvokeRPCResponse()..mergeFromMessage(this);
  InvokeRPCResponse copyWith(void Function(InvokeRPCResponse) updates) => super.copyWith((message) => updates(message as InvokeRPCResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeRPCResponse create() => InvokeRPCResponse._();
  InvokeRPCResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeRPCResponse> createRepeated() => $pb.PbList<InvokeRPCResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeRPCResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvokeRPCResponse>(create);
  static InvokeRPCResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  InvokeResponse get response => $_getN(2);
  @$pb.TagNumber(3)
  set response(InvokeResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);
  @$pb.TagNumber(3)
  InvokeResponse ensureResponse() => $_ensure(2);
}

class InvokeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvokeRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'moduleName')
    ..aOS(2, 'contractName')
    ..aOS(3, 'methodName')
    ..m<$core.String, $core.List<$core.int>>(4, 'args', entryClassName: 'InvokeRequest.ArgsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pb'))
    ..pc<ResourceLimit>(5, 'resourceLimits', $pb.PbFieldType.PM, subBuilder: ResourceLimit.create)
    ..aOS(6, 'amount')
    ..hasRequiredFields = false
  ;

  InvokeRequest._() : super();
  factory InvokeRequest() => create();
  factory InvokeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvokeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InvokeRequest clone() => InvokeRequest()..mergeFromMessage(this);
  InvokeRequest copyWith(void Function(InvokeRequest) updates) => super.copyWith((message) => updates(message as InvokeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeRequest create() => InvokeRequest._();
  InvokeRequest createEmptyInstance() => create();
  static $pb.PbList<InvokeRequest> createRepeated() => $pb.PbList<InvokeRequest>();
  @$core.pragma('dart2js:noInline')
  static InvokeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvokeRequest>(create);
  static InvokeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get moduleName => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModuleName() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contractName => $_getSZ(1);
  @$pb.TagNumber(2)
  set contractName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractName() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get methodName => $_getSZ(2);
  @$pb.TagNumber(3)
  set methodName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMethodName() => $_has(2);
  @$pb.TagNumber(3)
  void clearMethodName() => clearField(3);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.List<$core.int>> get args => $_getMap(3);

  @$pb.TagNumber(5)
  $core.List<ResourceLimit> get resourceLimits => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get amount => $_getSZ(5);
  @$pb.TagNumber(6)
  set amount($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmount() => clearField(6);
}

class InvokeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvokeResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<TxInputExt>(1, 'inputs', $pb.PbFieldType.PM, subBuilder: TxInputExt.create)
    ..pc<TxOutputExt>(2, 'outputs', $pb.PbFieldType.PM, subBuilder: TxOutputExt.create)
    ..p<$core.List<$core.int>>(3, 'response', $pb.PbFieldType.PY)
    ..aInt64(4, 'gasUsed')
    ..pc<InvokeRequest>(5, 'requests', $pb.PbFieldType.PM, subBuilder: InvokeRequest.create)
    ..pc<ContractResponse>(6, 'responses', $pb.PbFieldType.PM, subBuilder: ContractResponse.create)
    ..pc<TxInput>(7, 'utxoInputs', $pb.PbFieldType.PM, protoName: 'utxoInputs', subBuilder: TxInput.create)
    ..pc<TxOutput>(8, 'utxoOutputs', $pb.PbFieldType.PM, protoName: 'utxoOutputs', subBuilder: TxOutput.create)
    ..hasRequiredFields = false
  ;

  InvokeResponse._() : super();
  factory InvokeResponse() => create();
  factory InvokeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvokeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InvokeResponse clone() => InvokeResponse()..mergeFromMessage(this);
  InvokeResponse copyWith(void Function(InvokeResponse) updates) => super.copyWith((message) => updates(message as InvokeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvokeResponse create() => InvokeResponse._();
  InvokeResponse createEmptyInstance() => create();
  static $pb.PbList<InvokeResponse> createRepeated() => $pb.PbList<InvokeResponse>();
  @$core.pragma('dart2js:noInline')
  static InvokeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvokeResponse>(create);
  static InvokeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TxInputExt> get inputs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TxOutputExt> get outputs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get response => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get gasUsed => $_getI64(3);
  @$pb.TagNumber(4)
  set gasUsed($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGasUsed() => $_has(3);
  @$pb.TagNumber(4)
  void clearGasUsed() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<InvokeRequest> get requests => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<ContractResponse> get responses => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<TxInput> get utxoInputs => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<TxOutput> get utxoOutputs => $_getList(7);
}

class TxInputExt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxInputExt', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bucket')
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'refTxid', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'refOffset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  TxInputExt._() : super();
  factory TxInputExt() => create();
  factory TxInputExt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxInputExt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxInputExt clone() => TxInputExt()..mergeFromMessage(this);
  TxInputExt copyWith(void Function(TxInputExt) updates) => super.copyWith((message) => updates(message as TxInputExt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxInputExt create() => TxInputExt._();
  TxInputExt createEmptyInstance() => create();
  static $pb.PbList<TxInputExt> createRepeated() => $pb.PbList<TxInputExt>();
  @$core.pragma('dart2js:noInline')
  static TxInputExt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxInputExt>(create);
  static TxInputExt _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bucket => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get refTxid => $_getN(2);
  @$pb.TagNumber(3)
  set refTxid($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRefTxid() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefTxid() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get refOffset => $_getIZ(3);
  @$pb.TagNumber(4)
  set refOffset($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRefOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefOffset() => clearField(4);
}

class TxOutputExt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxOutputExt', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bucket')
    ..a<$core.List<$core.int>>(2, 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TxOutputExt._() : super();
  factory TxOutputExt() => create();
  factory TxOutputExt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxOutputExt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxOutputExt clone() => TxOutputExt()..mergeFromMessage(this);
  TxOutputExt copyWith(void Function(TxOutputExt) updates) => super.copyWith((message) => updates(message as TxOutputExt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxOutputExt create() => TxOutputExt._();
  TxOutputExt createEmptyInstance() => create();
  static $pb.PbList<TxOutputExt> createRepeated() => $pb.PbList<TxOutputExt>();
  @$core.pragma('dart2js:noInline')
  static TxOutputExt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxOutputExt>(create);
  static TxOutputExt _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bucket => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get key => $_getN(1);
  @$pb.TagNumber(2)
  set key($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class SignatureInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignatureInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'PublicKey', protoName: 'PublicKey')
    ..a<$core.List<$core.int>>(2, 'Sign', $pb.PbFieldType.OY, protoName: 'Sign')
    ..hasRequiredFields = false
  ;

  SignatureInfo._() : super();
  factory SignatureInfo() => create();
  factory SignatureInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignatureInfo clone() => SignatureInfo()..mergeFromMessage(this);
  SignatureInfo copyWith(void Function(SignatureInfo) updates) => super.copyWith((message) => updates(message as SignatureInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureInfo create() => SignatureInfo._();
  SignatureInfo createEmptyInstance() => create();
  static $pb.PbList<SignatureInfo> createRepeated() => $pb.PbList<SignatureInfo>();
  @$core.pragma('dart2js:noInline')
  static SignatureInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureInfo>(create);
  static SignatureInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get publicKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set publicKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get sign => $_getN(1);
  @$pb.TagNumber(2)
  set sign($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearSign() => clearField(2);
}

class PermissionModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PermissionModel', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<PermissionRule>(1, 'rule', $pb.PbFieldType.OE, defaultOrMaker: PermissionRule.NULL, valueOf: PermissionRule.valueOf, enumValues: PermissionRule.values)
    ..a<$core.double>(2, 'acceptValue', $pb.PbFieldType.OD, protoName: 'acceptValue')
    ..hasRequiredFields = false
  ;

  PermissionModel._() : super();
  factory PermissionModel() => create();
  factory PermissionModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PermissionModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PermissionModel clone() => PermissionModel()..mergeFromMessage(this);
  PermissionModel copyWith(void Function(PermissionModel) updates) => super.copyWith((message) => updates(message as PermissionModel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PermissionModel create() => PermissionModel._();
  PermissionModel createEmptyInstance() => create();
  static $pb.PbList<PermissionModel> createRepeated() => $pb.PbList<PermissionModel>();
  @$core.pragma('dart2js:noInline')
  static PermissionModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PermissionModel>(create);
  static PermissionModel _defaultInstance;

  @$pb.TagNumber(1)
  PermissionRule get rule => $_getN(0);
  @$pb.TagNumber(1)
  set rule(PermissionRule v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearRule() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get acceptValue => $_getN(1);
  @$pb.TagNumber(2)
  set acceptValue($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceptValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptValue() => clearField(2);
}

class AkSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AkSet', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pPS(1, 'aks')
    ..hasRequiredFields = false
  ;

  AkSet._() : super();
  factory AkSet() => create();
  factory AkSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AkSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AkSet clone() => AkSet()..mergeFromMessage(this);
  AkSet copyWith(void Function(AkSet) updates) => super.copyWith((message) => updates(message as AkSet));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AkSet create() => AkSet._();
  AkSet createEmptyInstance() => create();
  static $pb.PbList<AkSet> createRepeated() => $pb.PbList<AkSet>();
  @$core.pragma('dart2js:noInline')
  static AkSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AkSet>(create);
  static AkSet _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get aks => $_getList(0);
}

class AkSets extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AkSets', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..m<$core.String, AkSet>(1, 'sets', entryClassName: 'AkSets.SetsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: AkSet.create, packageName: const $pb.PackageName('pb'))
    ..aOS(2, 'expression')
    ..hasRequiredFields = false
  ;

  AkSets._() : super();
  factory AkSets() => create();
  factory AkSets.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AkSets.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AkSets clone() => AkSets()..mergeFromMessage(this);
  AkSets copyWith(void Function(AkSets) updates) => super.copyWith((message) => updates(message as AkSets));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AkSets create() => AkSets._();
  AkSets createEmptyInstance() => create();
  static $pb.PbList<AkSets> createRepeated() => $pb.PbList<AkSets>();
  @$core.pragma('dart2js:noInline')
  static AkSets getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AkSets>(create);
  static AkSets _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, AkSet> get sets => $_getMap(0);

  @$pb.TagNumber(2)
  $core.String get expression => $_getSZ(1);
  @$pb.TagNumber(2)
  set expression($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpression() => clearField(2);
}

class Acl extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Acl', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<PermissionModel>(1, 'pm', subBuilder: PermissionModel.create)
    ..m<$core.String, $core.double>(2, 'aksWeight', protoName: 'aksWeight', entryClassName: 'Acl.AksWeightEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OD, packageName: const $pb.PackageName('pb'))
    ..aOM<AkSets>(3, 'akSets', protoName: 'akSets', subBuilder: AkSets.create)
    ..hasRequiredFields = false
  ;

  Acl._() : super();
  factory Acl() => create();
  factory Acl.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Acl.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Acl clone() => Acl()..mergeFromMessage(this);
  Acl copyWith(void Function(Acl) updates) => super.copyWith((message) => updates(message as Acl));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Acl create() => Acl._();
  Acl createEmptyInstance() => create();
  static $pb.PbList<Acl> createRepeated() => $pb.PbList<Acl>();
  @$core.pragma('dart2js:noInline')
  static Acl getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Acl>(create);
  static Acl _defaultInstance;

  @$pb.TagNumber(1)
  PermissionModel get pm => $_getN(0);
  @$pb.TagNumber(1)
  set pm(PermissionModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPm() => $_has(0);
  @$pb.TagNumber(1)
  void clearPm() => clearField(1);
  @$pb.TagNumber(1)
  PermissionModel ensurePm() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.double> get aksWeight => $_getMap(1);

  @$pb.TagNumber(3)
  AkSets get akSets => $_getN(2);
  @$pb.TagNumber(3)
  set akSets(AkSets v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAkSets() => $_has(2);
  @$pb.TagNumber(3)
  void clearAkSets() => clearField(3);
  @$pb.TagNumber(3)
  AkSets ensureAkSets() => $_ensure(2);
}

class AclStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AclStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'accountName', protoName: 'accountName')
    ..aOS(4, 'contractName', protoName: 'contractName')
    ..aOS(5, 'methodName', protoName: 'methodName')
    ..aOB(6, 'confirmed')
    ..aOM<Acl>(7, 'acl', subBuilder: Acl.create)
    ..hasRequiredFields = false
  ;

  AclStatus._() : super();
  factory AclStatus() => create();
  factory AclStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AclStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AclStatus clone() => AclStatus()..mergeFromMessage(this);
  AclStatus copyWith(void Function(AclStatus) updates) => super.copyWith((message) => updates(message as AclStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AclStatus create() => AclStatus._();
  AclStatus createEmptyInstance() => create();
  static $pb.PbList<AclStatus> createRepeated() => $pb.PbList<AclStatus>();
  @$core.pragma('dart2js:noInline')
  static AclStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AclStatus>(create);
  static AclStatus _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contractName => $_getSZ(3);
  @$pb.TagNumber(4)
  set contractName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContractName() => $_has(3);
  @$pb.TagNumber(4)
  void clearContractName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get methodName => $_getSZ(4);
  @$pb.TagNumber(5)
  set methodName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMethodName() => $_has(4);
  @$pb.TagNumber(5)
  void clearMethodName() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get confirmed => $_getBF(5);
  @$pb.TagNumber(6)
  set confirmed($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfirmed() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfirmed() => clearField(6);

  @$pb.TagNumber(7)
  Acl get acl => $_getN(6);
  @$pb.TagNumber(7)
  set acl(Acl v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAcl() => $_has(6);
  @$pb.TagNumber(7)
  void clearAcl() => clearField(7);
  @$pb.TagNumber(7)
  Acl ensureAcl() => $_ensure(6);
}

class IdentityAuth extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IdentityAuth', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sign', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'pubkey', $pb.PbFieldType.OY)
    ..aOS(3, 'addr')
    ..aOS(4, 'peerID', protoName: 'peerID')
    ..aOS(5, 'timestamp')
    ..hasRequiredFields = false
  ;

  IdentityAuth._() : super();
  factory IdentityAuth() => create();
  factory IdentityAuth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdentityAuth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IdentityAuth clone() => IdentityAuth()..mergeFromMessage(this);
  IdentityAuth copyWith(void Function(IdentityAuth) updates) => super.copyWith((message) => updates(message as IdentityAuth));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IdentityAuth create() => IdentityAuth._();
  IdentityAuth createEmptyInstance() => create();
  static $pb.PbList<IdentityAuth> createRepeated() => $pb.PbList<IdentityAuth>();
  @$core.pragma('dart2js:noInline')
  static IdentityAuth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdentityAuth>(create);
  static IdentityAuth _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sign => $_getN(0);
  @$pb.TagNumber(1)
  set sign($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSign() => $_has(0);
  @$pb.TagNumber(1)
  void clearSign() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pubkey => $_getN(1);
  @$pb.TagNumber(2)
  set pubkey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubkey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get addr => $_getSZ(2);
  @$pb.TagNumber(3)
  set addr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddr() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get peerID => $_getSZ(3);
  @$pb.TagNumber(4)
  set peerID($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPeerID() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeerID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timestamp => $_getSZ(4);
  @$pb.TagNumber(5)
  set timestamp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
}

class IdentityAuths extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IdentityAuths', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<IdentityAuth>(1, 'auth', $pb.PbFieldType.PM, subBuilder: IdentityAuth.create)
    ..hasRequiredFields = false
  ;

  IdentityAuths._() : super();
  factory IdentityAuths() => create();
  factory IdentityAuths.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdentityAuths.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IdentityAuths clone() => IdentityAuths()..mergeFromMessage(this);
  IdentityAuths copyWith(void Function(IdentityAuths) updates) => super.copyWith((message) => updates(message as IdentityAuths));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IdentityAuths create() => IdentityAuths._();
  IdentityAuths createEmptyInstance() => create();
  static $pb.PbList<IdentityAuths> createRepeated() => $pb.PbList<IdentityAuths>();
  @$core.pragma('dart2js:noInline')
  static IdentityAuths getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdentityAuths>(create);
  static IdentityAuths _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<IdentityAuth> get auth => $_getList(0);
}

class ResourceLimit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ResourceLimit', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..e<ResourceType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: ResourceType.CPU, valueOf: ResourceType.valueOf, enumValues: ResourceType.values)
    ..aInt64(2, 'limit')
    ..hasRequiredFields = false
  ;

  ResourceLimit._() : super();
  factory ResourceLimit() => create();
  factory ResourceLimit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceLimit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ResourceLimit clone() => ResourceLimit()..mergeFromMessage(this);
  ResourceLimit copyWith(void Function(ResourceLimit) updates) => super.copyWith((message) => updates(message as ResourceLimit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceLimit create() => ResourceLimit._();
  ResourceLimit createEmptyInstance() => create();
  static $pb.PbList<ResourceLimit> createRepeated() => $pb.PbList<ResourceLimit>();
  @$core.pragma('dart2js:noInline')
  static ResourceLimit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceLimit>(create);
  static ResourceLimit _defaultInstance;

  @$pb.TagNumber(1)
  ResourceType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResourceType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class AK2AccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AK2AccountRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  AK2AccountRequest._() : super();
  factory AK2AccountRequest() => create();
  factory AK2AccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AK2AccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AK2AccountRequest clone() => AK2AccountRequest()..mergeFromMessage(this);
  AK2AccountRequest copyWith(void Function(AK2AccountRequest) updates) => super.copyWith((message) => updates(message as AK2AccountRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AK2AccountRequest create() => AK2AccountRequest._();
  AK2AccountRequest createEmptyInstance() => create();
  static $pb.PbList<AK2AccountRequest> createRepeated() => $pb.PbList<AK2AccountRequest>();
  @$core.pragma('dart2js:noInline')
  static AK2AccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AK2AccountRequest>(create);
  static AK2AccountRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class AK2AccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AK2AccountResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..pPS(3, 'account')
    ..hasRequiredFields = false
  ;

  AK2AccountResponse._() : super();
  factory AK2AccountResponse() => create();
  factory AK2AccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AK2AccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AK2AccountResponse clone() => AK2AccountResponse()..mergeFromMessage(this);
  AK2AccountResponse copyWith(void Function(AK2AccountResponse) updates) => super.copyWith((message) => updates(message as AK2AccountResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AK2AccountResponse create() => AK2AccountResponse._();
  AK2AccountResponse createEmptyInstance() => create();
  static $pb.PbList<AK2AccountResponse> createRepeated() => $pb.PbList<AK2AccountResponse>();
  @$core.pragma('dart2js:noInline')
  static AK2AccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AK2AccountResponse>(create);
  static AK2AccountResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get account => $_getList(2);
}

class GetAccountContractsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountContractsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'account')
    ..hasRequiredFields = false
  ;

  GetAccountContractsRequest._() : super();
  factory GetAccountContractsRequest() => create();
  factory GetAccountContractsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountContractsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountContractsRequest clone() => GetAccountContractsRequest()..mergeFromMessage(this);
  GetAccountContractsRequest copyWith(void Function(GetAccountContractsRequest) updates) => super.copyWith((message) => updates(message as GetAccountContractsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountContractsRequest create() => GetAccountContractsRequest._();
  GetAccountContractsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountContractsRequest> createRepeated() => $pb.PbList<GetAccountContractsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountContractsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountContractsRequest>(create);
  static GetAccountContractsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get account => $_getSZ(2);
  @$pb.TagNumber(3)
  set account($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
}

class GetAccountContractsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAccountContractsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..pc<ContractStatus>(2, 'contractsStatus', $pb.PbFieldType.PM, subBuilder: ContractStatus.create)
    ..hasRequiredFields = false
  ;

  GetAccountContractsResponse._() : super();
  factory GetAccountContractsResponse() => create();
  factory GetAccountContractsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountContractsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAccountContractsResponse clone() => GetAccountContractsResponse()..mergeFromMessage(this);
  GetAccountContractsResponse copyWith(void Function(GetAccountContractsResponse) updates) => super.copyWith((message) => updates(message as GetAccountContractsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountContractsResponse create() => GetAccountContractsResponse._();
  GetAccountContractsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountContractsResponse> createRepeated() => $pb.PbList<GetAccountContractsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountContractsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountContractsResponse>(create);
  static GetAccountContractsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ContractStatus> get contractsStatus => $_getList(1);
}

class ContractStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractStatus', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'contractName')
    ..aOS(2, 'txid')
    ..a<$core.List<$core.int>>(3, 'desc', $pb.PbFieldType.OY)
    ..aOB(4, 'isBanned')
    ..aInt64(5, 'timestamp')
    ..aOS(6, 'runtime')
    ..hasRequiredFields = false
  ;

  ContractStatus._() : super();
  factory ContractStatus() => create();
  factory ContractStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractStatus clone() => ContractStatus()..mergeFromMessage(this);
  ContractStatus copyWith(void Function(ContractStatus) updates) => super.copyWith((message) => updates(message as ContractStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractStatus create() => ContractStatus._();
  ContractStatus createEmptyInstance() => create();
  static $pb.PbList<ContractStatus> createRepeated() => $pb.PbList<ContractStatus>();
  @$core.pragma('dart2js:noInline')
  static ContractStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractStatus>(create);
  static ContractStatus _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractName => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractName() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txid => $_getSZ(1);
  @$pb.TagNumber(2)
  set txid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxid() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get desc => $_getN(2);
  @$pb.TagNumber(3)
  set desc($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isBanned => $_getBF(3);
  @$pb.TagNumber(4)
  set isBanned($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsBanned() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsBanned() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get runtime => $_getSZ(5);
  @$pb.TagNumber(6)
  set runtime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRuntime() => $_has(5);
  @$pb.TagNumber(6)
  void clearRuntime() => clearField(6);
}

class PreExecWithSelectUTXORequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PreExecWithSelectUTXORequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..aInt64(4, 'totalAmount', protoName: 'totalAmount')
    ..aOM<InvokeRPCRequest>(5, 'request', subBuilder: InvokeRPCRequest.create)
    ..aOM<SignatureInfo>(6, 'signInfo', protoName: 'signInfo', subBuilder: SignatureInfo.create)
    ..aOB(7, 'needLock', protoName: 'needLock')
    ..hasRequiredFields = false
  ;

  PreExecWithSelectUTXORequest._() : super();
  factory PreExecWithSelectUTXORequest() => create();
  factory PreExecWithSelectUTXORequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreExecWithSelectUTXORequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PreExecWithSelectUTXORequest clone() => PreExecWithSelectUTXORequest()..mergeFromMessage(this);
  PreExecWithSelectUTXORequest copyWith(void Function(PreExecWithSelectUTXORequest) updates) => super.copyWith((message) => updates(message as PreExecWithSelectUTXORequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PreExecWithSelectUTXORequest create() => PreExecWithSelectUTXORequest._();
  PreExecWithSelectUTXORequest createEmptyInstance() => create();
  static $pb.PbList<PreExecWithSelectUTXORequest> createRepeated() => $pb.PbList<PreExecWithSelectUTXORequest>();
  @$core.pragma('dart2js:noInline')
  static PreExecWithSelectUTXORequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreExecWithSelectUTXORequest>(create);
  static PreExecWithSelectUTXORequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalAmount => $_getI64(3);
  @$pb.TagNumber(4)
  set totalAmount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalAmount() => clearField(4);

  @$pb.TagNumber(5)
  InvokeRPCRequest get request => $_getN(4);
  @$pb.TagNumber(5)
  set request(InvokeRPCRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequest() => clearField(5);
  @$pb.TagNumber(5)
  InvokeRPCRequest ensureRequest() => $_ensure(4);

  @$pb.TagNumber(6)
  SignatureInfo get signInfo => $_getN(5);
  @$pb.TagNumber(6)
  set signInfo(SignatureInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSignInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignInfo() => clearField(6);
  @$pb.TagNumber(6)
  SignatureInfo ensureSignInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get needLock => $_getBF(6);
  @$pb.TagNumber(7)
  set needLock($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNeedLock() => $_has(6);
  @$pb.TagNumber(7)
  void clearNeedLock() => clearField(7);
}

class PreExecWithSelectUTXOResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PreExecWithSelectUTXOResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOM<InvokeResponse>(3, 'response', subBuilder: InvokeResponse.create)
    ..aOM<UtxoOutput>(4, 'utxoOutput', protoName: 'utxoOutput', subBuilder: UtxoOutput.create)
    ..hasRequiredFields = false
  ;

  PreExecWithSelectUTXOResponse._() : super();
  factory PreExecWithSelectUTXOResponse() => create();
  factory PreExecWithSelectUTXOResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreExecWithSelectUTXOResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PreExecWithSelectUTXOResponse clone() => PreExecWithSelectUTXOResponse()..mergeFromMessage(this);
  PreExecWithSelectUTXOResponse copyWith(void Function(PreExecWithSelectUTXOResponse) updates) => super.copyWith((message) => updates(message as PreExecWithSelectUTXOResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PreExecWithSelectUTXOResponse create() => PreExecWithSelectUTXOResponse._();
  PreExecWithSelectUTXOResponse createEmptyInstance() => create();
  static $pb.PbList<PreExecWithSelectUTXOResponse> createRepeated() => $pb.PbList<PreExecWithSelectUTXOResponse>();
  @$core.pragma('dart2js:noInline')
  static PreExecWithSelectUTXOResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreExecWithSelectUTXOResponse>(create);
  static PreExecWithSelectUTXOResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  InvokeResponse get response => $_getN(2);
  @$pb.TagNumber(3)
  set response(InvokeResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponse() => clearField(3);
  @$pb.TagNumber(3)
  InvokeResponse ensureResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  UtxoOutput get utxoOutput => $_getN(3);
  @$pb.TagNumber(4)
  set utxoOutput(UtxoOutput v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUtxoOutput() => $_has(3);
  @$pb.TagNumber(4)
  void clearUtxoOutput() => clearField(4);
  @$pb.TagNumber(4)
  UtxoOutput ensureUtxoOutput() => $_ensure(3);
}

class ContractResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.int>(1, 'status', $pb.PbFieldType.O3)
    ..aOS(2, 'message')
    ..a<$core.List<$core.int>>(3, 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ContractResponse._() : super();
  factory ContractResponse() => create();
  factory ContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractResponse clone() => ContractResponse()..mergeFromMessage(this);
  ContractResponse copyWith(void Function(ContractResponse) updates) => super.copyWith((message) => updates(message as ContractResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractResponse create() => ContractResponse._();
  ContractResponse createEmptyInstance() => create();
  static $pb.PbList<ContractResponse> createRepeated() => $pb.PbList<ContractResponse>();
  @$core.pragma('dart2js:noInline')
  static ContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractResponse>(create);
  static ContractResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

class ModifyBlock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ModifyBlock', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'effectiveTxid')
    ..aOB(2, 'marked')
    ..aInt64(3, 'effectiveHeight')
    ..aOS(4, 'publicKey')
    ..aOS(5, 'sign')
    ..hasRequiredFields = false
  ;

  ModifyBlock._() : super();
  factory ModifyBlock() => create();
  factory ModifyBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ModifyBlock clone() => ModifyBlock()..mergeFromMessage(this);
  ModifyBlock copyWith(void Function(ModifyBlock) updates) => super.copyWith((message) => updates(message as ModifyBlock));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyBlock create() => ModifyBlock._();
  ModifyBlock createEmptyInstance() => create();
  static $pb.PbList<ModifyBlock> createRepeated() => $pb.PbList<ModifyBlock>();
  @$core.pragma('dart2js:noInline')
  static ModifyBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyBlock>(create);
  static ModifyBlock _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get effectiveTxid => $_getSZ(0);
  @$pb.TagNumber(1)
  set effectiveTxid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEffectiveTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearEffectiveTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get marked => $_getBF(1);
  @$pb.TagNumber(2)
  set marked($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarked() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarked() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get effectiveHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set effectiveHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEffectiveHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearEffectiveHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get publicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set publicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublicKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sign => $_getSZ(4);
  @$pb.TagNumber(5)
  set sign($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSign() => $_has(4);
  @$pb.TagNumber(5)
  void clearSign() => clearField(5);
}

class HDInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HDInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'hdPublicKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'originalHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  HDInfo._() : super();
  factory HDInfo() => create();
  factory HDInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HDInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HDInfo clone() => HDInfo()..mergeFromMessage(this);
  HDInfo copyWith(void Function(HDInfo) updates) => super.copyWith((message) => updates(message as HDInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HDInfo create() => HDInfo._();
  HDInfo createEmptyInstance() => create();
  static $pb.PbList<HDInfo> createRepeated() => $pb.PbList<HDInfo>();
  @$core.pragma('dart2js:noInline')
  static HDInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HDInfo>(create);
  static HDInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hdPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set hdPublicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHdPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearHdPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get originalHash => $_getN(1);
  @$pb.TagNumber(2)
  set originalHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOriginalHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearOriginalHash() => clearField(2);
}

class UtxoRecordDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoRecordDetail', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'accountName', protoName: 'accountName')
    ..aOM<UtxoRecord>(4, 'openUtxoRecord', protoName: 'openUtxoRecord', subBuilder: UtxoRecord.create)
    ..aOM<UtxoRecord>(5, 'lockedUtxoRecord', protoName: 'lockedUtxoRecord', subBuilder: UtxoRecord.create)
    ..aOM<UtxoRecord>(6, 'frozenUtxoRecord', protoName: 'frozenUtxoRecord', subBuilder: UtxoRecord.create)
    ..aInt64(7, 'displayCount', protoName: 'displayCount')
    ..hasRequiredFields = false
  ;

  UtxoRecordDetail._() : super();
  factory UtxoRecordDetail() => create();
  factory UtxoRecordDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoRecordDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoRecordDetail clone() => UtxoRecordDetail()..mergeFromMessage(this);
  UtxoRecordDetail copyWith(void Function(UtxoRecordDetail) updates) => super.copyWith((message) => updates(message as UtxoRecordDetail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoRecordDetail create() => UtxoRecordDetail._();
  UtxoRecordDetail createEmptyInstance() => create();
  static $pb.PbList<UtxoRecordDetail> createRepeated() => $pb.PbList<UtxoRecordDetail>();
  @$core.pragma('dart2js:noInline')
  static UtxoRecordDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoRecordDetail>(create);
  static UtxoRecordDetail _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => clearField(3);

  @$pb.TagNumber(4)
  UtxoRecord get openUtxoRecord => $_getN(3);
  @$pb.TagNumber(4)
  set openUtxoRecord(UtxoRecord v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpenUtxoRecord() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpenUtxoRecord() => clearField(4);
  @$pb.TagNumber(4)
  UtxoRecord ensureOpenUtxoRecord() => $_ensure(3);

  @$pb.TagNumber(5)
  UtxoRecord get lockedUtxoRecord => $_getN(4);
  @$pb.TagNumber(5)
  set lockedUtxoRecord(UtxoRecord v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLockedUtxoRecord() => $_has(4);
  @$pb.TagNumber(5)
  void clearLockedUtxoRecord() => clearField(5);
  @$pb.TagNumber(5)
  UtxoRecord ensureLockedUtxoRecord() => $_ensure(4);

  @$pb.TagNumber(6)
  UtxoRecord get frozenUtxoRecord => $_getN(5);
  @$pb.TagNumber(6)
  set frozenUtxoRecord(UtxoRecord v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFrozenUtxoRecord() => $_has(5);
  @$pb.TagNumber(6)
  void clearFrozenUtxoRecord() => clearField(6);
  @$pb.TagNumber(6)
  UtxoRecord ensureFrozenUtxoRecord() => $_ensure(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get displayCount => $_getI64(6);
  @$pb.TagNumber(7)
  set displayCount($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDisplayCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearDisplayCount() => clearField(7);
}

class UtxoRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoRecord', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'utxoCount', protoName: 'utxoCount')
    ..aOS(2, 'utxoAmount', protoName: 'utxoAmount')
    ..pc<UtxoKey>(3, 'item', $pb.PbFieldType.PM, subBuilder: UtxoKey.create)
    ..hasRequiredFields = false
  ;

  UtxoRecord._() : super();
  factory UtxoRecord() => create();
  factory UtxoRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoRecord clone() => UtxoRecord()..mergeFromMessage(this);
  UtxoRecord copyWith(void Function(UtxoRecord) updates) => super.copyWith((message) => updates(message as UtxoRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoRecord create() => UtxoRecord._();
  UtxoRecord createEmptyInstance() => create();
  static $pb.PbList<UtxoRecord> createRepeated() => $pb.PbList<UtxoRecord>();
  @$core.pragma('dart2js:noInline')
  static UtxoRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoRecord>(create);
  static UtxoRecord _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get utxoCount => $_getSZ(0);
  @$pb.TagNumber(1)
  set utxoCount($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUtxoCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearUtxoCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get utxoAmount => $_getSZ(1);
  @$pb.TagNumber(2)
  set utxoAmount($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUtxoAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearUtxoAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<UtxoKey> get item => $_getList(2);
}

class UtxoKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UtxoKey', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'refTxid', protoName: 'refTxid')
    ..aOS(2, 'offset')
    ..aOS(3, 'amount')
    ..hasRequiredFields = false
  ;

  UtxoKey._() : super();
  factory UtxoKey() => create();
  factory UtxoKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UtxoKey clone() => UtxoKey()..mergeFromMessage(this);
  UtxoKey copyWith(void Function(UtxoKey) updates) => super.copyWith((message) => updates(message as UtxoKey));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoKey create() => UtxoKey._();
  UtxoKey createEmptyInstance() => create();
  static $pb.PbList<UtxoKey> createRepeated() => $pb.PbList<UtxoKey>();
  @$core.pragma('dart2js:noInline')
  static UtxoKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoKey>(create);
  static UtxoKey _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refTxid => $_getSZ(0);
  @$pb.TagNumber(1)
  set refTxid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRefTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get offset => $_getSZ(1);
  @$pb.TagNumber(2)
  set offset($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get amount => $_getSZ(2);
  @$pb.TagNumber(3)
  set amount($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class ContractStatDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractStatDataRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..hasRequiredFields = false
  ;

  ContractStatDataRequest._() : super();
  factory ContractStatDataRequest() => create();
  factory ContractStatDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractStatDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractStatDataRequest clone() => ContractStatDataRequest()..mergeFromMessage(this);
  ContractStatDataRequest copyWith(void Function(ContractStatDataRequest) updates) => super.copyWith((message) => updates(message as ContractStatDataRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractStatDataRequest create() => ContractStatDataRequest._();
  ContractStatDataRequest createEmptyInstance() => create();
  static $pb.PbList<ContractStatDataRequest> createRepeated() => $pb.PbList<ContractStatDataRequest>();
  @$core.pragma('dart2js:noInline')
  static ContractStatDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractStatDataRequest>(create);
  static ContractStatDataRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);
}

class ContractStatDataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractStatDataResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOM<ContractStatData>(3, 'data', subBuilder: ContractStatData.create)
    ..hasRequiredFields = false
  ;

  ContractStatDataResponse._() : super();
  factory ContractStatDataResponse() => create();
  factory ContractStatDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractStatDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractStatDataResponse clone() => ContractStatDataResponse()..mergeFromMessage(this);
  ContractStatDataResponse copyWith(void Function(ContractStatDataResponse) updates) => super.copyWith((message) => updates(message as ContractStatDataResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractStatDataResponse create() => ContractStatDataResponse._();
  ContractStatDataResponse createEmptyInstance() => create();
  static $pb.PbList<ContractStatDataResponse> createRepeated() => $pb.PbList<ContractStatDataResponse>();
  @$core.pragma('dart2js:noInline')
  static ContractStatDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractStatDataResponse>(create);
  static ContractStatDataResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  ContractStatData get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(ContractStatData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  ContractStatData ensureData() => $_ensure(2);
}

class ContractStatData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractStatData', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aInt64(1, 'accountCount', protoName: 'accountCount')
    ..aInt64(2, 'contractCount', protoName: 'contractCount')
    ..hasRequiredFields = false
  ;

  ContractStatData._() : super();
  factory ContractStatData() => create();
  factory ContractStatData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractStatData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractStatData clone() => ContractStatData()..mergeFromMessage(this);
  ContractStatData copyWith(void Function(ContractStatData) updates) => super.copyWith((message) => updates(message as ContractStatData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractStatData create() => ContractStatData._();
  ContractStatData createEmptyInstance() => create();
  static $pb.PbList<ContractStatData> createRepeated() => $pb.PbList<ContractStatData>();
  @$core.pragma('dart2js:noInline')
  static ContractStatData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractStatData>(create);
  static ContractStatData _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get accountCount => $_getI64(0);
  @$pb.TagNumber(1)
  set accountCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get contractCount => $_getI64(1);
  @$pb.TagNumber(2)
  set contractCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractCount() => clearField(2);
}

class AddressContractsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddressContractsRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..aOS(2, 'bcname')
    ..aOS(3, 'address')
    ..aOB(4, 'needContent')
    ..hasRequiredFields = false
  ;

  AddressContractsRequest._() : super();
  factory AddressContractsRequest() => create();
  factory AddressContractsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressContractsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddressContractsRequest clone() => AddressContractsRequest()..mergeFromMessage(this);
  AddressContractsRequest copyWith(void Function(AddressContractsRequest) updates) => super.copyWith((message) => updates(message as AddressContractsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressContractsRequest create() => AddressContractsRequest._();
  AddressContractsRequest createEmptyInstance() => create();
  static $pb.PbList<AddressContractsRequest> createRepeated() => $pb.PbList<AddressContractsRequest>();
  @$core.pragma('dart2js:noInline')
  static AddressContractsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressContractsRequest>(create);
  static AddressContractsRequest _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get bcname => $_getSZ(1);
  @$pb.TagNumber(2)
  set bcname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBcname() => $_has(1);
  @$pb.TagNumber(2)
  void clearBcname() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get needContent => $_getBF(3);
  @$pb.TagNumber(4)
  set needContent($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNeedContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedContent() => clearField(4);
}

class ContractList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ContractList', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<ContractStatus>(1, 'contractStatus', $pb.PbFieldType.PM, subBuilder: ContractStatus.create)
    ..hasRequiredFields = false
  ;

  ContractList._() : super();
  factory ContractList() => create();
  factory ContractList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ContractList clone() => ContractList()..mergeFromMessage(this);
  ContractList copyWith(void Function(ContractList) updates) => super.copyWith((message) => updates(message as ContractList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractList create() => ContractList._();
  ContractList createEmptyInstance() => create();
  static $pb.PbList<ContractList> createRepeated() => $pb.PbList<ContractList>();
  @$core.pragma('dart2js:noInline')
  static ContractList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractList>(create);
  static ContractList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ContractStatus> get contractStatus => $_getList(0);
}

class AddressContractsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddressContractsResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<Header>(1, 'header', subBuilder: Header.create)
    ..m<$core.String, ContractList>(2, 'contracts', entryClassName: 'AddressContractsResponse.ContractsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ContractList.create, packageName: const $pb.PackageName('pb'))
    ..hasRequiredFields = false
  ;

  AddressContractsResponse._() : super();
  factory AddressContractsResponse() => create();
  factory AddressContractsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddressContractsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AddressContractsResponse clone() => AddressContractsResponse()..mergeFromMessage(this);
  AddressContractsResponse copyWith(void Function(AddressContractsResponse) updates) => super.copyWith((message) => updates(message as AddressContractsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddressContractsResponse create() => AddressContractsResponse._();
  AddressContractsResponse createEmptyInstance() => create();
  static $pb.PbList<AddressContractsResponse> createRepeated() => $pb.PbList<AddressContractsResponse>();
  @$core.pragma('dart2js:noInline')
  static AddressContractsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddressContractsResponse>(create);
  static AddressContractsResponse _defaultInstance;

  @$pb.TagNumber(1)
  Header get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(Header v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  Header ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, ContractList> get contracts => $_getMap(1);
}

class CrossQueryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossQueryRequest', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'bcname')
    ..aInt64(2, 'timestamp')
    ..aOS(3, 'initiator')
    ..pPS(4, 'authRequire')
    ..aOM<InvokeRequest>(5, 'request', subBuilder: InvokeRequest.create)
    ..hasRequiredFields = false
  ;

  CrossQueryRequest._() : super();
  factory CrossQueryRequest() => create();
  factory CrossQueryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossQueryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossQueryRequest clone() => CrossQueryRequest()..mergeFromMessage(this);
  CrossQueryRequest copyWith(void Function(CrossQueryRequest) updates) => super.copyWith((message) => updates(message as CrossQueryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossQueryRequest create() => CrossQueryRequest._();
  CrossQueryRequest createEmptyInstance() => create();
  static $pb.PbList<CrossQueryRequest> createRepeated() => $pb.PbList<CrossQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static CrossQueryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossQueryRequest>(create);
  static CrossQueryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bcname => $_getSZ(0);
  @$pb.TagNumber(1)
  set bcname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBcname() => $_has(0);
  @$pb.TagNumber(1)
  void clearBcname() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get initiator => $_getSZ(2);
  @$pb.TagNumber(3)
  set initiator($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInitiator() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitiator() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get authRequire => $_getList(3);

  @$pb.TagNumber(5)
  InvokeRequest get request => $_getN(4);
  @$pb.TagNumber(5)
  set request(InvokeRequest v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequest() => clearField(5);
  @$pb.TagNumber(5)
  InvokeRequest ensureRequest() => $_ensure(4);
}

class CrossQueryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossQueryResponse', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<ContractResponse>(1, 'response', subBuilder: ContractResponse.create)
    ..hasRequiredFields = false
  ;

  CrossQueryResponse._() : super();
  factory CrossQueryResponse() => create();
  factory CrossQueryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossQueryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossQueryResponse clone() => CrossQueryResponse()..mergeFromMessage(this);
  CrossQueryResponse copyWith(void Function(CrossQueryResponse) updates) => super.copyWith((message) => updates(message as CrossQueryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossQueryResponse create() => CrossQueryResponse._();
  CrossQueryResponse createEmptyInstance() => create();
  static $pb.PbList<CrossQueryResponse> createRepeated() => $pb.PbList<CrossQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static CrossQueryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossQueryResponse>(create);
  static CrossQueryResponse _defaultInstance;

  @$pb.TagNumber(1)
  ContractResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(ContractResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  ContractResponse ensureResponse() => $_ensure(0);
}

class CrossChainMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossChainMeta', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aInt64(2, 'minEndorsorNum')
    ..hasRequiredFields = false
  ;

  CrossChainMeta._() : super();
  factory CrossChainMeta() => create();
  factory CrossChainMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossChainMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossChainMeta clone() => CrossChainMeta()..mergeFromMessage(this);
  CrossChainMeta copyWith(void Function(CrossChainMeta) updates) => super.copyWith((message) => updates(message as CrossChainMeta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossChainMeta create() => CrossChainMeta._();
  CrossChainMeta createEmptyInstance() => create();
  static $pb.PbList<CrossChainMeta> createRepeated() => $pb.PbList<CrossChainMeta>();
  @$core.pragma('dart2js:noInline')
  static CrossChainMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossChainMeta>(create);
  static CrossChainMeta _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get minEndorsorNum => $_getI64(1);
  @$pb.TagNumber(2)
  set minEndorsorNum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinEndorsorNum() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinEndorsorNum() => clearField(2);
}

class CrossEndorsor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossEndorsor', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'pubKey')
    ..aOS(3, 'host')
    ..hasRequiredFields = false
  ;

  CrossEndorsor._() : super();
  factory CrossEndorsor() => create();
  factory CrossEndorsor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossEndorsor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossEndorsor clone() => CrossEndorsor()..mergeFromMessage(this);
  CrossEndorsor copyWith(void Function(CrossEndorsor) updates) => super.copyWith((message) => updates(message as CrossEndorsor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossEndorsor create() => CrossEndorsor._();
  CrossEndorsor createEmptyInstance() => create();
  static $pb.PbList<CrossEndorsor> createRepeated() => $pb.PbList<CrossEndorsor>();
  @$core.pragma('dart2js:noInline')
  static CrossEndorsor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossEndorsor>(create);
  static CrossEndorsor _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get host => $_getSZ(2);
  @$pb.TagNumber(3)
  set host($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(3)
  void clearHost() => clearField(3);
}

class CrossQueryMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossQueryMeta', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<CrossChainMeta>(1, 'chainMeta', subBuilder: CrossChainMeta.create)
    ..pc<CrossEndorsor>(2, 'endorsors', $pb.PbFieldType.PM, subBuilder: CrossEndorsor.create)
    ..hasRequiredFields = false
  ;

  CrossQueryMeta._() : super();
  factory CrossQueryMeta() => create();
  factory CrossQueryMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossQueryMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossQueryMeta clone() => CrossQueryMeta()..mergeFromMessage(this);
  CrossQueryMeta copyWith(void Function(CrossQueryMeta) updates) => super.copyWith((message) => updates(message as CrossQueryMeta));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossQueryMeta create() => CrossQueryMeta._();
  CrossQueryMeta createEmptyInstance() => create();
  static $pb.PbList<CrossQueryMeta> createRepeated() => $pb.PbList<CrossQueryMeta>();
  @$core.pragma('dart2js:noInline')
  static CrossQueryMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossQueryMeta>(create);
  static CrossQueryMeta _defaultInstance;

  @$pb.TagNumber(1)
  CrossChainMeta get chainMeta => $_getN(0);
  @$pb.TagNumber(1)
  set chainMeta(CrossChainMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChainMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearChainMeta() => clearField(1);
  @$pb.TagNumber(1)
  CrossChainMeta ensureChainMeta() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<CrossEndorsor> get endorsors => $_getList(1);
}

class CrossQueryInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CrossQueryInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOM<CrossQueryRequest>(1, 'request', subBuilder: CrossQueryRequest.create)
    ..aOM<CrossQueryResponse>(2, 'response', subBuilder: CrossQueryResponse.create)
    ..pc<SignatureInfo>(3, 'signs', $pb.PbFieldType.PM, subBuilder: SignatureInfo.create)
    ..hasRequiredFields = false
  ;

  CrossQueryInfo._() : super();
  factory CrossQueryInfo() => create();
  factory CrossQueryInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossQueryInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CrossQueryInfo clone() => CrossQueryInfo()..mergeFromMessage(this);
  CrossQueryInfo copyWith(void Function(CrossQueryInfo) updates) => super.copyWith((message) => updates(message as CrossQueryInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CrossQueryInfo create() => CrossQueryInfo._();
  CrossQueryInfo createEmptyInstance() => create();
  static $pb.PbList<CrossQueryInfo> createRepeated() => $pb.PbList<CrossQueryInfo>();
  @$core.pragma('dart2js:noInline')
  static CrossQueryInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossQueryInfo>(create);
  static CrossQueryInfo _defaultInstance;

  @$pb.TagNumber(1)
  CrossQueryRequest get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(CrossQueryRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  CrossQueryRequest ensureRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  CrossQueryResponse get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(CrossQueryResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  CrossQueryResponse ensureResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<SignatureInfo> get signs => $_getList(2);
}

