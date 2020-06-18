///
//  Generated code. Do not modify.
//  source: xchain_spv.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'xchain.pb.dart' as $1;

export 'xchain_spv.pbenum.dart';

class ECDSAAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ECDSAAccount', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'entropyByte', $pb.PbFieldType.OY, protoName: 'entropyByte')
    ..aOS(2, 'mnemonic')
    ..aOS(3, 'jsonPrivateKey', protoName: 'jsonPrivateKey')
    ..aOS(4, 'jsonPublicKey', protoName: 'jsonPublicKey')
    ..aOS(5, 'address')
    ..hasRequiredFields = false
  ;

  ECDSAAccount._() : super();
  factory ECDSAAccount() => create();
  factory ECDSAAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ECDSAAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ECDSAAccount clone() => ECDSAAccount()..mergeFromMessage(this);
  ECDSAAccount copyWith(void Function(ECDSAAccount) updates) => super.copyWith((message) => updates(message as ECDSAAccount));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ECDSAAccount create() => ECDSAAccount._();
  ECDSAAccount createEmptyInstance() => create();
  static $pb.PbList<ECDSAAccount> createRepeated() => $pb.PbList<ECDSAAccount>();
  @$core.pragma('dart2js:noInline')
  static ECDSAAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECDSAAccount>(create);
  static ECDSAAccount _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropyByte => $_getN(0);
  @$pb.TagNumber(1)
  set entropyByte($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntropyByte() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropyByte() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mnemonic => $_getSZ(1);
  @$pb.TagNumber(2)
  set mnemonic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMnemonic() => $_has(1);
  @$pb.TagNumber(2)
  void clearMnemonic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get jsonPrivateKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set jsonPrivateKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasJsonPrivateKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearJsonPrivateKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get jsonPublicKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set jsonPublicKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJsonPublicKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearJsonPublicKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get address => $_getSZ(4);
  @$pb.TagNumber(5)
  set address($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddress() => clearField(5);
}

class ECDSAInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ECDSAInfo', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'entropyByte', $pb.PbFieldType.OY, protoName: 'entropyByte')
    ..aOS(2, 'mnemonic')
    ..aOS(3, 'address')
    ..hasRequiredFields = false
  ;

  ECDSAInfo._() : super();
  factory ECDSAInfo() => create();
  factory ECDSAInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ECDSAInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ECDSAInfo clone() => ECDSAInfo()..mergeFromMessage(this);
  ECDSAInfo copyWith(void Function(ECDSAInfo) updates) => super.copyWith((message) => updates(message as ECDSAInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ECDSAInfo create() => ECDSAInfo._();
  ECDSAInfo createEmptyInstance() => create();
  static $pb.PbList<ECDSAInfo> createRepeated() => $pb.PbList<ECDSAInfo>();
  @$core.pragma('dart2js:noInline')
  static ECDSAInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECDSAInfo>(create);
  static ECDSAInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get entropyByte => $_getN(0);
  @$pb.TagNumber(1)
  set entropyByte($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntropyByte() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntropyByte() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mnemonic => $_getSZ(1);
  @$pb.TagNumber(2)
  set mnemonic($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMnemonic() => $_has(1);
  @$pb.TagNumber(2)
  void clearMnemonic() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}

class ECDSAAccountFromCloud extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ECDSAAccountFromCloud', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'jsonEncryptedPrivateKey', protoName: 'jsonEncryptedPrivateKey')
    ..aOS(3, 'encryptedMnemonic', protoName: 'encryptedMnemonic')
    ..hasRequiredFields = false
  ;

  ECDSAAccountFromCloud._() : super();
  factory ECDSAAccountFromCloud() => create();
  factory ECDSAAccountFromCloud.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ECDSAAccountFromCloud.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ECDSAAccountFromCloud clone() => ECDSAAccountFromCloud()..mergeFromMessage(this);
  ECDSAAccountFromCloud copyWith(void Function(ECDSAAccountFromCloud) updates) => super.copyWith((message) => updates(message as ECDSAAccountFromCloud));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ECDSAAccountFromCloud create() => ECDSAAccountFromCloud._();
  ECDSAAccountFromCloud createEmptyInstance() => create();
  static $pb.PbList<ECDSAAccountFromCloud> createRepeated() => $pb.PbList<ECDSAAccountFromCloud>();
  @$core.pragma('dart2js:noInline')
  static ECDSAAccountFromCloud getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECDSAAccountFromCloud>(create);
  static ECDSAAccountFromCloud _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jsonEncryptedPrivateKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set jsonEncryptedPrivateKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJsonEncryptedPrivateKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearJsonEncryptedPrivateKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get encryptedMnemonic => $_getSZ(2);
  @$pb.TagNumber(3)
  set encryptedMnemonic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncryptedMnemonic() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncryptedMnemonic() => clearField(3);
}

class ECDSAAccountToCloud extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ECDSAAccountToCloud', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..aOS(2, 'jsonEncryptedPrivateKey', protoName: 'jsonEncryptedPrivateKey')
    ..aOS(3, 'encryptedMnemonic', protoName: 'encryptedMnemonic')
    ..aOS(4, 'password')
    ..hasRequiredFields = false
  ;

  ECDSAAccountToCloud._() : super();
  factory ECDSAAccountToCloud() => create();
  factory ECDSAAccountToCloud.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ECDSAAccountToCloud.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ECDSAAccountToCloud clone() => ECDSAAccountToCloud()..mergeFromMessage(this);
  ECDSAAccountToCloud copyWith(void Function(ECDSAAccountToCloud) updates) => super.copyWith((message) => updates(message as ECDSAAccountToCloud));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ECDSAAccountToCloud create() => ECDSAAccountToCloud._();
  ECDSAAccountToCloud createEmptyInstance() => create();
  static $pb.PbList<ECDSAAccountToCloud> createRepeated() => $pb.PbList<ECDSAAccountToCloud>();
  @$core.pragma('dart2js:noInline')
  static ECDSAAccountToCloud getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ECDSAAccountToCloud>(create);
  static ECDSAAccountToCloud _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jsonEncryptedPrivateKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set jsonEncryptedPrivateKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJsonEncryptedPrivateKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearJsonEncryptedPrivateKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get encryptedMnemonic => $_getSZ(2);
  @$pb.TagNumber(3)
  set encryptedMnemonic($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncryptedMnemonic() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncryptedMnemonic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);
}

class Node extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Node', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'host', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'utxoQueryUrl', $pb.PbFieldType.OY, protoName: 'utxoQueryUrl')
    ..a<$core.List<$core.int>>(3, 'txPostUrl', $pb.PbFieldType.OY, protoName: 'txPostUrl')
    ..a<$core.List<$core.int>>(4, 'balanceQueryUrl', $pb.PbFieldType.OY, protoName: 'balanceQueryUrl')
    ..hasRequiredFields = false
  ;

  Node._() : super();
  factory Node() => create();
  factory Node.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Node.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Node clone() => Node()..mergeFromMessage(this);
  Node copyWith(void Function(Node) updates) => super.copyWith((message) => updates(message as Node));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get host => $_getN(0);
  @$pb.TagNumber(1)
  set host($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get utxoQueryUrl => $_getN(1);
  @$pb.TagNumber(2)
  set utxoQueryUrl($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUtxoQueryUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUtxoQueryUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get txPostUrl => $_getN(2);
  @$pb.TagNumber(3)
  set txPostUrl($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxPostUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxPostUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get balanceQueryUrl => $_getN(3);
  @$pb.TagNumber(4)
  set balanceQueryUrl($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBalanceQueryUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearBalanceQueryUrl() => clearField(4);
}

class TxInputs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxInputs', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$1.TxInput>(1, 'txInputList', $pb.PbFieldType.PM, protoName: 'txInputList', subBuilder: $1.TxInput.create)
    ..hasRequiredFields = false
  ;

  TxInputs._() : super();
  factory TxInputs() => create();
  factory TxInputs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxInputs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxInputs clone() => TxInputs()..mergeFromMessage(this);
  TxInputs copyWith(void Function(TxInputs) updates) => super.copyWith((message) => updates(message as TxInputs));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxInputs create() => TxInputs._();
  TxInputs createEmptyInstance() => create();
  static $pb.PbList<TxInputs> createRepeated() => $pb.PbList<TxInputs>();
  @$core.pragma('dart2js:noInline')
  static TxInputs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxInputs>(create);
  static TxInputs _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.TxInput> get txInputList => $_getList(0);
}

class TxOutputs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxOutputs', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<$1.TxOutput>(1, 'txOutputList', $pb.PbFieldType.PM, protoName: 'txOutputList', subBuilder: $1.TxOutput.create)
    ..hasRequiredFields = false
  ;

  TxOutputs._() : super();
  factory TxOutputs() => create();
  factory TxOutputs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxOutputs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TxOutputs clone() => TxOutputs()..mergeFromMessage(this);
  TxOutputs copyWith(void Function(TxOutputs) updates) => super.copyWith((message) => updates(message as TxOutputs));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxOutputs create() => TxOutputs._();
  TxOutputs createEmptyInstance() => create();
  static $pb.PbList<TxOutputs> createRepeated() => $pb.PbList<TxOutputs>();
  @$core.pragma('dart2js:noInline')
  static TxOutputs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxOutputs>(create);
  static TxOutputs _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.TxOutput> get txOutputList => $_getList(0);
}

class UTXOs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UTXOs', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..pc<UTXO>(1, 'uTXOList', $pb.PbFieldType.PM, protoName: 'uTXOList', subBuilder: UTXO.create)
    ..hasRequiredFields = false
  ;

  UTXOs._() : super();
  factory UTXOs() => create();
  factory UTXOs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UTXOs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UTXOs clone() => UTXOs()..mergeFromMessage(this);
  UTXOs copyWith(void Function(UTXOs) updates) => super.copyWith((message) => updates(message as UTXOs));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UTXOs create() => UTXOs._();
  UTXOs createEmptyInstance() => create();
  static $pb.PbList<UTXOs> createRepeated() => $pb.PbList<UTXOs>();
  @$core.pragma('dart2js:noInline')
  static UTXOs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UTXOs>(create);
  static UTXOs _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UTXO> get uTXOList => $_getList(0);
}

class UTXO extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UTXO', package: const $pb.PackageName('pb'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'amount', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'toAddr', $pb.PbFieldType.OY, protoName: 'toAddr')
    ..a<$core.List<$core.int>>(3, 'toPubkey', $pb.PbFieldType.OY, protoName: 'toPubkey')
    ..a<$core.List<$core.int>>(4, 'refTxid', $pb.PbFieldType.OY, protoName: 'refTxid')
    ..a<$core.int>(5, 'refOffset', $pb.PbFieldType.O3, protoName: 'refOffset')
    ..hasRequiredFields = false
  ;

  UTXO._() : super();
  factory UTXO() => create();
  factory UTXO.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UTXO.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UTXO clone() => UTXO()..mergeFromMessage(this);
  UTXO copyWith(void Function(UTXO) updates) => super.copyWith((message) => updates(message as UTXO));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UTXO create() => UTXO._();
  UTXO createEmptyInstance() => create();
  static $pb.PbList<UTXO> createRepeated() => $pb.PbList<UTXO>();
  @$core.pragma('dart2js:noInline')
  static UTXO getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UTXO>(create);
  static UTXO _defaultInstance;

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

