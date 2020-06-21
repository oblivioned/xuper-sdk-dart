///
//  Generated code. Do not modify.
//  source: xchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'xchain.pb.dart' as $0;
export 'xchain.pb.dart';

class XchainClient extends $grpc.Client {
  static final _$selectUTXOBySize =
      $grpc.ClientMethod<$0.UtxoInput, $0.UtxoOutput>(
          '/pb.Xchain/SelectUTXOBySize',
          ($0.UtxoInput value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UtxoOutput.fromBuffer(value));
  static final _$postTx = $grpc.ClientMethod<$0.TxStatus, $0.CommonReply>(
      '/pb.Xchain/PostTx',
      ($0.TxStatus value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CommonReply.fromBuffer(value));
  static final _$queryACL = $grpc.ClientMethod<$0.AclStatus, $0.AclStatus>(
      '/pb.Xchain/QueryACL',
      ($0.AclStatus value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AclStatus.fromBuffer(value));
  static final _$queryUtxoRecord =
      $grpc.ClientMethod<$0.UtxoRecordDetail, $0.UtxoRecordDetail>(
          '/pb.Xchain/QueryUtxoRecord',
          ($0.UtxoRecordDetail value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UtxoRecordDetail.fromBuffer(value));
  static final _$queryContractStatData = $grpc.ClientMethod<
          $0.ContractStatDataRequest, $0.ContractStatDataResponse>(
      '/pb.Xchain/QueryContractStatData',
      ($0.ContractStatDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ContractStatDataResponse.fromBuffer(value));
  static final _$getAccountContracts = $grpc.ClientMethod<
          $0.GetAccountContractsRequest, $0.GetAccountContractsResponse>(
      '/pb.Xchain/GetAccountContracts',
      ($0.GetAccountContractsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetAccountContractsResponse.fromBuffer(value));
  static final _$queryTx = $grpc.ClientMethod<$0.TxStatus, $0.TxStatus>(
      '/pb.Xchain/QueryTx',
      ($0.TxStatus value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TxStatus.fromBuffer(value));
  static final _$getBalance =
      $grpc.ClientMethod<$0.AddressStatus, $0.AddressStatus>(
          '/pb.Xchain/GetBalance',
          ($0.AddressStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddressStatus.fromBuffer(value));
  static final _$getBalanceDetail =
      $grpc.ClientMethod<$0.AddressBalanceStatus, $0.AddressBalanceStatus>(
          '/pb.Xchain/GetBalanceDetail',
          ($0.AddressBalanceStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddressBalanceStatus.fromBuffer(value));
  static final _$getFrozenBalance =
      $grpc.ClientMethod<$0.AddressStatus, $0.AddressStatus>(
          '/pb.Xchain/GetFrozenBalance',
          ($0.AddressStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddressStatus.fromBuffer(value));
  static final _$getBlock = $grpc.ClientMethod<$0.BlockID, $0.Block>(
      '/pb.Xchain/GetBlock',
      ($0.BlockID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Block.fromBuffer(value));
  static final _$getBlockByHeight =
      $grpc.ClientMethod<$0.BlockHeight, $0.Block>(
          '/pb.Xchain/GetBlockByHeight',
          ($0.BlockHeight value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Block.fromBuffer(value));
  static final _$getBlockChainStatus =
      $grpc.ClientMethod<$0.BCStatus, $0.BCStatus>(
          '/pb.Xchain/GetBlockChainStatus',
          ($0.BCStatus value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BCStatus.fromBuffer(value));
  static final _$getBlockChains =
      $grpc.ClientMethod<$0.CommonIn, $0.BlockChains>(
          '/pb.Xchain/GetBlockChains',
          ($0.CommonIn value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlockChains.fromBuffer(value));
  static final _$getSystemStatus =
      $grpc.ClientMethod<$0.CommonIn, $0.SystemsStatusReply>(
          '/pb.Xchain/GetSystemStatus',
          ($0.CommonIn value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SystemsStatusReply.fromBuffer(value));
  static final _$getNetURL = $grpc.ClientMethod<$0.CommonIn, $0.RawUrl>(
      '/pb.Xchain/GetNetURL',
      ($0.CommonIn value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RawUrl.fromBuffer(value));
  static final _$selectUTXO = $grpc.ClientMethod<$0.UtxoInput, $0.UtxoOutput>(
      '/pb.Xchain/SelectUTXO',
      ($0.UtxoInput value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UtxoOutput.fromBuffer(value));
  static final _$preExecWithSelectUTXO = $grpc.ClientMethod<
          $0.PreExecWithSelectUTXORequest, $0.PreExecWithSelectUTXOResponse>(
      '/pb.Xchain/PreExecWithSelectUTXO',
      ($0.PreExecWithSelectUTXORequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PreExecWithSelectUTXOResponse.fromBuffer(value));
  static final _$deployNativeCode = $grpc.ClientMethod<
          $0.DeployNativeCodeRequest, $0.DeployNativeCodeResponse>(
      '/pb.Xchain/DeployNativeCode',
      ($0.DeployNativeCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeployNativeCodeResponse.fromBuffer(value));
  static final _$nativeCodeStatus = $grpc.ClientMethod<
          $0.NativeCodeStatusRequest, $0.NativeCodeStatusResponse>(
      '/pb.Xchain/NativeCodeStatus',
      ($0.NativeCodeStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.NativeCodeStatusResponse.fromBuffer(value));
  static final _$dposCandidates =
      $grpc.ClientMethod<$0.DposCandidatesRequest, $0.DposCandidatesResponse>(
          '/pb.Xchain/DposCandidates',
          ($0.DposCandidatesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DposCandidatesResponse.fromBuffer(value));
  static final _$dposNominateRecords = $grpc.ClientMethod<
          $0.DposNominateRecordsRequest, $0.DposNominateRecordsResponse>(
      '/pb.Xchain/DposNominateRecords',
      ($0.DposNominateRecordsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DposNominateRecordsResponse.fromBuffer(value));
  static final _$dposNomineeRecords = $grpc.ClientMethod<
          $0.DposNomineeRecordsRequest, $0.DposNomineeRecordsResponse>(
      '/pb.Xchain/DposNomineeRecords',
      ($0.DposNomineeRecordsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DposNomineeRecordsResponse.fromBuffer(value));
  static final _$dposVoteRecords =
      $grpc.ClientMethod<$0.DposVoteRecordsRequest, $0.DposVoteRecordsResponse>(
          '/pb.Xchain/DposVoteRecords',
          ($0.DposVoteRecordsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DposVoteRecordsResponse.fromBuffer(value));
  static final _$dposVotedRecords = $grpc.ClientMethod<
          $0.DposVotedRecordsRequest, $0.DposVotedRecordsResponse>(
      '/pb.Xchain/DposVotedRecords',
      ($0.DposVotedRecordsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DposVotedRecordsResponse.fromBuffer(value));
  static final _$dposCheckResults = $grpc.ClientMethod<
          $0.DposCheckResultsRequest, $0.DposCheckResultsResponse>(
      '/pb.Xchain/DposCheckResults',
      ($0.DposCheckResultsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DposCheckResultsResponse.fromBuffer(value));
  static final _$dposStatus =
      $grpc.ClientMethod<$0.DposStatusRequest, $0.DposStatusResponse>(
          '/pb.Xchain/DposStatus',
          ($0.DposStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DposStatusResponse.fromBuffer(value));
  static final _$getAccountByAK =
      $grpc.ClientMethod<$0.AK2AccountRequest, $0.AK2AccountResponse>(
          '/pb.Xchain/GetAccountByAK',
          ($0.AK2AccountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AK2AccountResponse.fromBuffer(value));
  static final _$getAddressContracts = $grpc.ClientMethod<
          $0.AddressContractsRequest, $0.AddressContractsResponse>(
      '/pb.Xchain/GetAddressContracts',
      ($0.AddressContractsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.AddressContractsResponse.fromBuffer(value));
  static final _$preExec =
      $grpc.ClientMethod<$0.InvokeRPCRequest, $0.InvokeRPCResponse>(
          '/pb.Xchain/PreExec',
          ($0.InvokeRPCRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InvokeRPCResponse.fromBuffer(value));

  XchainClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.UtxoOutput> selectUTXOBySize($0.UtxoInput request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$selectUTXOBySize, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.CommonReply> postTx($0.TxStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$postTx, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AclStatus> queryACL($0.AclStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$queryACL, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UtxoRecordDetail> queryUtxoRecord(
      $0.UtxoRecordDetail request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$queryUtxoRecord, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ContractStatDataResponse> queryContractStatData(
      $0.ContractStatDataRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$queryContractStatData, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetAccountContractsResponse> getAccountContracts(
      $0.GetAccountContractsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAccountContracts, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.TxStatus> queryTx($0.TxStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$queryTx, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddressStatus> getBalance($0.AddressStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBalance, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddressBalanceStatus> getBalanceDetail(
      $0.AddressBalanceStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBalanceDetail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddressStatus> getFrozenBalance(
      $0.AddressStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getFrozenBalance, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Block> getBlock($0.BlockID request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getBlock, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Block> getBlockByHeight($0.BlockHeight request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBlockByHeight, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BCStatus> getBlockChainStatus($0.BCStatus request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBlockChainStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlockChains> getBlockChains($0.CommonIn request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getBlockChains, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SystemsStatusReply> getSystemStatus(
      $0.CommonIn request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getSystemStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RawUrl> getNetURL($0.CommonIn request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getNetURL, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UtxoOutput> selectUTXO($0.UtxoInput request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$selectUTXO, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.PreExecWithSelectUTXOResponse> preExecWithSelectUTXO(
      $0.PreExecWithSelectUTXORequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$preExecWithSelectUTXO, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeployNativeCodeResponse> deployNativeCode(
      $0.DeployNativeCodeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deployNativeCode, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NativeCodeStatusResponse> nativeCodeStatus(
      $0.NativeCodeStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$nativeCodeStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposCandidatesResponse> dposCandidates(
      $0.DposCandidatesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposCandidates, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposNominateRecordsResponse> dposNominateRecords(
      $0.DposNominateRecordsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposNominateRecords, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposNomineeRecordsResponse> dposNomineeRecords(
      $0.DposNomineeRecordsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposNomineeRecords, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposVoteRecordsResponse> dposVoteRecords(
      $0.DposVoteRecordsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposVoteRecords, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposVotedRecordsResponse> dposVotedRecords(
      $0.DposVotedRecordsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposVotedRecords, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposCheckResultsResponse> dposCheckResults(
      $0.DposCheckResultsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposCheckResults, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DposStatusResponse> dposStatus(
      $0.DposStatusRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$dposStatus, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AK2AccountResponse> getAccountByAK(
      $0.AK2AccountRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAccountByAK, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddressContractsResponse> getAddressContracts(
      $0.AddressContractsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAddressContracts, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.InvokeRPCResponse> preExec(
      $0.InvokeRPCRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$preExec, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class XchainServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.Xchain';

  XchainServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UtxoInput, $0.UtxoOutput>(
        'SelectUTXOBySize',
        selectUTXOBySize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UtxoInput.fromBuffer(value),
        ($0.UtxoOutput value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TxStatus, $0.CommonReply>(
        'PostTx',
        postTx_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TxStatus.fromBuffer(value),
        ($0.CommonReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AclStatus, $0.AclStatus>(
        'QueryACL',
        queryACL_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AclStatus.fromBuffer(value),
        ($0.AclStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UtxoRecordDetail, $0.UtxoRecordDetail>(
        'QueryUtxoRecord',
        queryUtxoRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UtxoRecordDetail.fromBuffer(value),
        ($0.UtxoRecordDetail value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContractStatDataRequest,
            $0.ContractStatDataResponse>(
        'QueryContractStatData',
        queryContractStatData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ContractStatDataRequest.fromBuffer(value),
        ($0.ContractStatDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAccountContractsRequest,
            $0.GetAccountContractsResponse>(
        'GetAccountContracts',
        getAccountContracts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAccountContractsRequest.fromBuffer(value),
        ($0.GetAccountContractsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TxStatus, $0.TxStatus>(
        'QueryTx',
        queryTx_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TxStatus.fromBuffer(value),
        ($0.TxStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddressStatus, $0.AddressStatus>(
        'GetBalance',
        getBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddressStatus.fromBuffer(value),
        ($0.AddressStatus value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AddressBalanceStatus, $0.AddressBalanceStatus>(
            'GetBalanceDetail',
            getBalanceDetail_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddressBalanceStatus.fromBuffer(value),
            ($0.AddressBalanceStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddressStatus, $0.AddressStatus>(
        'GetFrozenBalance',
        getFrozenBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddressStatus.fromBuffer(value),
        ($0.AddressStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlockID, $0.Block>(
        'GetBlock',
        getBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlockID.fromBuffer(value),
        ($0.Block value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlockHeight, $0.Block>(
        'GetBlockByHeight',
        getBlockByHeight_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlockHeight.fromBuffer(value),
        ($0.Block value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BCStatus, $0.BCStatus>(
        'GetBlockChainStatus',
        getBlockChainStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BCStatus.fromBuffer(value),
        ($0.BCStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonIn, $0.BlockChains>(
        'GetBlockChains',
        getBlockChains_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonIn.fromBuffer(value),
        ($0.BlockChains value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonIn, $0.SystemsStatusReply>(
        'GetSystemStatus',
        getSystemStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonIn.fromBuffer(value),
        ($0.SystemsStatusReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommonIn, $0.RawUrl>(
        'GetNetURL',
        getNetURL_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommonIn.fromBuffer(value),
        ($0.RawUrl value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UtxoInput, $0.UtxoOutput>(
        'SelectUTXO',
        selectUTXO_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UtxoInput.fromBuffer(value),
        ($0.UtxoOutput value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PreExecWithSelectUTXORequest,
            $0.PreExecWithSelectUTXOResponse>(
        'PreExecWithSelectUTXO',
        preExecWithSelectUTXO_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PreExecWithSelectUTXORequest.fromBuffer(value),
        ($0.PreExecWithSelectUTXOResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeployNativeCodeRequest,
            $0.DeployNativeCodeResponse>(
        'DeployNativeCode',
        deployNativeCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeployNativeCodeRequest.fromBuffer(value),
        ($0.DeployNativeCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NativeCodeStatusRequest,
            $0.NativeCodeStatusResponse>(
        'NativeCodeStatus',
        nativeCodeStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NativeCodeStatusRequest.fromBuffer(value),
        ($0.NativeCodeStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposCandidatesRequest,
            $0.DposCandidatesResponse>(
        'DposCandidates',
        dposCandidates_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposCandidatesRequest.fromBuffer(value),
        ($0.DposCandidatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposNominateRecordsRequest,
            $0.DposNominateRecordsResponse>(
        'DposNominateRecords',
        dposNominateRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposNominateRecordsRequest.fromBuffer(value),
        ($0.DposNominateRecordsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposNomineeRecordsRequest,
            $0.DposNomineeRecordsResponse>(
        'DposNomineeRecords',
        dposNomineeRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposNomineeRecordsRequest.fromBuffer(value),
        ($0.DposNomineeRecordsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposVoteRecordsRequest,
            $0.DposVoteRecordsResponse>(
        'DposVoteRecords',
        dposVoteRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposVoteRecordsRequest.fromBuffer(value),
        ($0.DposVoteRecordsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposVotedRecordsRequest,
            $0.DposVotedRecordsResponse>(
        'DposVotedRecords',
        dposVotedRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposVotedRecordsRequest.fromBuffer(value),
        ($0.DposVotedRecordsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposCheckResultsRequest,
            $0.DposCheckResultsResponse>(
        'DposCheckResults',
        dposCheckResults_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DposCheckResultsRequest.fromBuffer(value),
        ($0.DposCheckResultsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DposStatusRequest, $0.DposStatusResponse>(
        'DposStatus',
        dposStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DposStatusRequest.fromBuffer(value),
        ($0.DposStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AK2AccountRequest, $0.AK2AccountResponse>(
        'GetAccountByAK',
        getAccountByAK_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AK2AccountRequest.fromBuffer(value),
        ($0.AK2AccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddressContractsRequest,
            $0.AddressContractsResponse>(
        'GetAddressContracts',
        getAddressContracts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddressContractsRequest.fromBuffer(value),
        ($0.AddressContractsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InvokeRPCRequest, $0.InvokeRPCResponse>(
        'PreExec',
        preExec_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InvokeRPCRequest.fromBuffer(value),
        ($0.InvokeRPCResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UtxoOutput> selectUTXOBySize_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UtxoInput> request) async {
    return selectUTXOBySize(call, await request);
  }

  $async.Future<$0.CommonReply> postTx_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TxStatus> request) async {
    return postTx(call, await request);
  }

  $async.Future<$0.AclStatus> queryACL_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AclStatus> request) async {
    return queryACL(call, await request);
  }

  $async.Future<$0.UtxoRecordDetail> queryUtxoRecord_Pre($grpc.ServiceCall call,
      $async.Future<$0.UtxoRecordDetail> request) async {
    return queryUtxoRecord(call, await request);
  }

  $async.Future<$0.ContractStatDataResponse> queryContractStatData_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ContractStatDataRequest> request) async {
    return queryContractStatData(call, await request);
  }

  $async.Future<$0.GetAccountContractsResponse> getAccountContracts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAccountContractsRequest> request) async {
    return getAccountContracts(call, await request);
  }

  $async.Future<$0.TxStatus> queryTx_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TxStatus> request) async {
    return queryTx(call, await request);
  }

  $async.Future<$0.AddressStatus> getBalance_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddressStatus> request) async {
    return getBalance(call, await request);
  }

  $async.Future<$0.AddressBalanceStatus> getBalanceDetail_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddressBalanceStatus> request) async {
    return getBalanceDetail(call, await request);
  }

  $async.Future<$0.AddressStatus> getFrozenBalance_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddressStatus> request) async {
    return getFrozenBalance(call, await request);
  }

  $async.Future<$0.Block> getBlock_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlockID> request) async {
    return getBlock(call, await request);
  }

  $async.Future<$0.Block> getBlockByHeight_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlockHeight> request) async {
    return getBlockByHeight(call, await request);
  }

  $async.Future<$0.BCStatus> getBlockChainStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BCStatus> request) async {
    return getBlockChainStatus(call, await request);
  }

  $async.Future<$0.BlockChains> getBlockChains_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonIn> request) async {
    return getBlockChains(call, await request);
  }

  $async.Future<$0.SystemsStatusReply> getSystemStatus_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonIn> request) async {
    return getSystemStatus(call, await request);
  }

  $async.Future<$0.RawUrl> getNetURL_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommonIn> request) async {
    return getNetURL(call, await request);
  }

  $async.Future<$0.UtxoOutput> selectUTXO_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UtxoInput> request) async {
    return selectUTXO(call, await request);
  }

  $async.Future<$0.PreExecWithSelectUTXOResponse> preExecWithSelectUTXO_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PreExecWithSelectUTXORequest> request) async {
    return preExecWithSelectUTXO(call, await request);
  }

  $async.Future<$0.DeployNativeCodeResponse> deployNativeCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeployNativeCodeRequest> request) async {
    return deployNativeCode(call, await request);
  }

  $async.Future<$0.NativeCodeStatusResponse> nativeCodeStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NativeCodeStatusRequest> request) async {
    return nativeCodeStatus(call, await request);
  }

  $async.Future<$0.DposCandidatesResponse> dposCandidates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposCandidatesRequest> request) async {
    return dposCandidates(call, await request);
  }

  $async.Future<$0.DposNominateRecordsResponse> dposNominateRecords_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposNominateRecordsRequest> request) async {
    return dposNominateRecords(call, await request);
  }

  $async.Future<$0.DposNomineeRecordsResponse> dposNomineeRecords_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposNomineeRecordsRequest> request) async {
    return dposNomineeRecords(call, await request);
  }

  $async.Future<$0.DposVoteRecordsResponse> dposVoteRecords_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposVoteRecordsRequest> request) async {
    return dposVoteRecords(call, await request);
  }

  $async.Future<$0.DposVotedRecordsResponse> dposVotedRecords_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposVotedRecordsRequest> request) async {
    return dposVotedRecords(call, await request);
  }

  $async.Future<$0.DposCheckResultsResponse> dposCheckResults_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DposCheckResultsRequest> request) async {
    return dposCheckResults(call, await request);
  }

  $async.Future<$0.DposStatusResponse> dposStatus_Pre($grpc.ServiceCall call,
      $async.Future<$0.DposStatusRequest> request) async {
    return dposStatus(call, await request);
  }

  $async.Future<$0.AK2AccountResponse> getAccountByAK_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AK2AccountRequest> request) async {
    return getAccountByAK(call, await request);
  }

  $async.Future<$0.AddressContractsResponse> getAddressContracts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddressContractsRequest> request) async {
    return getAddressContracts(call, await request);
  }

  $async.Future<$0.InvokeRPCResponse> preExec_Pre($grpc.ServiceCall call,
      $async.Future<$0.InvokeRPCRequest> request) async {
    return preExec(call, await request);
  }

  $async.Future<$0.UtxoOutput> selectUTXOBySize(
      $grpc.ServiceCall call, $0.UtxoInput request);
  $async.Future<$0.CommonReply> postTx(
      $grpc.ServiceCall call, $0.TxStatus request);
  $async.Future<$0.AclStatus> queryACL(
      $grpc.ServiceCall call, $0.AclStatus request);
  $async.Future<$0.UtxoRecordDetail> queryUtxoRecord(
      $grpc.ServiceCall call, $0.UtxoRecordDetail request);
  $async.Future<$0.ContractStatDataResponse> queryContractStatData(
      $grpc.ServiceCall call, $0.ContractStatDataRequest request);
  $async.Future<$0.GetAccountContractsResponse> getAccountContracts(
      $grpc.ServiceCall call, $0.GetAccountContractsRequest request);
  $async.Future<$0.TxStatus> queryTx(
      $grpc.ServiceCall call, $0.TxStatus request);
  $async.Future<$0.AddressStatus> getBalance(
      $grpc.ServiceCall call, $0.AddressStatus request);
  $async.Future<$0.AddressBalanceStatus> getBalanceDetail(
      $grpc.ServiceCall call, $0.AddressBalanceStatus request);
  $async.Future<$0.AddressStatus> getFrozenBalance(
      $grpc.ServiceCall call, $0.AddressStatus request);
  $async.Future<$0.Block> getBlock($grpc.ServiceCall call, $0.BlockID request);
  $async.Future<$0.Block> getBlockByHeight(
      $grpc.ServiceCall call, $0.BlockHeight request);
  $async.Future<$0.BCStatus> getBlockChainStatus(
      $grpc.ServiceCall call, $0.BCStatus request);
  $async.Future<$0.BlockChains> getBlockChains(
      $grpc.ServiceCall call, $0.CommonIn request);
  $async.Future<$0.SystemsStatusReply> getSystemStatus(
      $grpc.ServiceCall call, $0.CommonIn request);
  $async.Future<$0.RawUrl> getNetURL(
      $grpc.ServiceCall call, $0.CommonIn request);
  $async.Future<$0.UtxoOutput> selectUTXO(
      $grpc.ServiceCall call, $0.UtxoInput request);
  $async.Future<$0.PreExecWithSelectUTXOResponse> preExecWithSelectUTXO(
      $grpc.ServiceCall call, $0.PreExecWithSelectUTXORequest request);
  $async.Future<$0.DeployNativeCodeResponse> deployNativeCode(
      $grpc.ServiceCall call, $0.DeployNativeCodeRequest request);
  $async.Future<$0.NativeCodeStatusResponse> nativeCodeStatus(
      $grpc.ServiceCall call, $0.NativeCodeStatusRequest request);
  $async.Future<$0.DposCandidatesResponse> dposCandidates(
      $grpc.ServiceCall call, $0.DposCandidatesRequest request);
  $async.Future<$0.DposNominateRecordsResponse> dposNominateRecords(
      $grpc.ServiceCall call, $0.DposNominateRecordsRequest request);
  $async.Future<$0.DposNomineeRecordsResponse> dposNomineeRecords(
      $grpc.ServiceCall call, $0.DposNomineeRecordsRequest request);
  $async.Future<$0.DposVoteRecordsResponse> dposVoteRecords(
      $grpc.ServiceCall call, $0.DposVoteRecordsRequest request);
  $async.Future<$0.DposVotedRecordsResponse> dposVotedRecords(
      $grpc.ServiceCall call, $0.DposVotedRecordsRequest request);
  $async.Future<$0.DposCheckResultsResponse> dposCheckResults(
      $grpc.ServiceCall call, $0.DposCheckResultsRequest request);
  $async.Future<$0.DposStatusResponse> dposStatus(
      $grpc.ServiceCall call, $0.DposStatusRequest request);
  $async.Future<$0.AK2AccountResponse> getAccountByAK(
      $grpc.ServiceCall call, $0.AK2AccountRequest request);
  $async.Future<$0.AddressContractsResponse> getAddressContracts(
      $grpc.ServiceCall call, $0.AddressContractsRequest request);
  $async.Future<$0.InvokeRPCResponse> preExec(
      $grpc.ServiceCall call, $0.InvokeRPCRequest request);
}
