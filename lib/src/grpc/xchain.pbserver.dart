///
//  Generated code. Do not modify.
//  source: xchain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'xchain.pb.dart' as $1;
import 'xchain.pbjson.dart';

export 'xchain.pb.dart';

abstract class XchainServiceBase extends $pb.GeneratedService {
  $async.Future<$1.UtxoOutput> selectUTXOBySize($pb.ServerContext ctx, $1.UtxoInput request);
  $async.Future<$1.CommonReply> postTx($pb.ServerContext ctx, $1.TxStatus request);
  $async.Future<$1.AclStatus> queryACL($pb.ServerContext ctx, $1.AclStatus request);
  $async.Future<$1.UtxoRecordDetail> queryUtxoRecord($pb.ServerContext ctx, $1.UtxoRecordDetail request);
  $async.Future<$1.ContractStatDataResponse> queryContractStatData($pb.ServerContext ctx, $1.ContractStatDataRequest request);
  $async.Future<$1.GetAccountContractsResponse> getAccountContracts($pb.ServerContext ctx, $1.GetAccountContractsRequest request);
  $async.Future<$1.TxStatus> queryTx($pb.ServerContext ctx, $1.TxStatus request);
  $async.Future<$1.AddressStatus> getBalance($pb.ServerContext ctx, $1.AddressStatus request);
  $async.Future<$1.AddressBalanceStatus> getBalanceDetail($pb.ServerContext ctx, $1.AddressBalanceStatus request);
  $async.Future<$1.AddressStatus> getFrozenBalance($pb.ServerContext ctx, $1.AddressStatus request);
  $async.Future<$1.Block> getBlock($pb.ServerContext ctx, $1.BlockID request);
  $async.Future<$1.Block> getBlockByHeight($pb.ServerContext ctx, $1.BlockHeight request);
  $async.Future<$1.BCStatus> getBlockChainStatus($pb.ServerContext ctx, $1.BCStatus request);
  $async.Future<$1.BlockChains> getBlockChains($pb.ServerContext ctx, $1.CommonIn request);
  $async.Future<$1.SystemsStatusReply> getSystemStatus($pb.ServerContext ctx, $1.CommonIn request);
  $async.Future<$1.RawUrl> getNetURL($pb.ServerContext ctx, $1.CommonIn request);
  $async.Future<$1.UtxoOutput> selectUTXO($pb.ServerContext ctx, $1.UtxoInput request);
  $async.Future<$1.PreExecWithSelectUTXOResponse> preExecWithSelectUTXO($pb.ServerContext ctx, $1.PreExecWithSelectUTXORequest request);
  $async.Future<$1.DeployNativeCodeResponse> deployNativeCode($pb.ServerContext ctx, $1.DeployNativeCodeRequest request);
  $async.Future<$1.NativeCodeStatusResponse> nativeCodeStatus($pb.ServerContext ctx, $1.NativeCodeStatusRequest request);
  $async.Future<$1.DposCandidatesResponse> dposCandidates($pb.ServerContext ctx, $1.DposCandidatesRequest request);
  $async.Future<$1.DposNominateRecordsResponse> dposNominateRecords($pb.ServerContext ctx, $1.DposNominateRecordsRequest request);
  $async.Future<$1.DposNomineeRecordsResponse> dposNomineeRecords($pb.ServerContext ctx, $1.DposNomineeRecordsRequest request);
  $async.Future<$1.DposVoteRecordsResponse> dposVoteRecords($pb.ServerContext ctx, $1.DposVoteRecordsRequest request);
  $async.Future<$1.DposVotedRecordsResponse> dposVotedRecords($pb.ServerContext ctx, $1.DposVotedRecordsRequest request);
  $async.Future<$1.DposCheckResultsResponse> dposCheckResults($pb.ServerContext ctx, $1.DposCheckResultsRequest request);
  $async.Future<$1.DposStatusResponse> dposStatus($pb.ServerContext ctx, $1.DposStatusRequest request);
  $async.Future<$1.AK2AccountResponse> getAccountByAK($pb.ServerContext ctx, $1.AK2AccountRequest request);
  $async.Future<$1.AddressContractsResponse> getAddressContracts($pb.ServerContext ctx, $1.AddressContractsRequest request);
  $async.Future<$1.InvokeRPCResponse> preExec($pb.ServerContext ctx, $1.InvokeRPCRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SelectUTXOBySize': return $1.UtxoInput();
      case 'PostTx': return $1.TxStatus();
      case 'QueryACL': return $1.AclStatus();
      case 'QueryUtxoRecord': return $1.UtxoRecordDetail();
      case 'QueryContractStatData': return $1.ContractStatDataRequest();
      case 'GetAccountContracts': return $1.GetAccountContractsRequest();
      case 'QueryTx': return $1.TxStatus();
      case 'GetBalance': return $1.AddressStatus();
      case 'GetBalanceDetail': return $1.AddressBalanceStatus();
      case 'GetFrozenBalance': return $1.AddressStatus();
      case 'GetBlock': return $1.BlockID();
      case 'GetBlockByHeight': return $1.BlockHeight();
      case 'GetBlockChainStatus': return $1.BCStatus();
      case 'GetBlockChains': return $1.CommonIn();
      case 'GetSystemStatus': return $1.CommonIn();
      case 'GetNetURL': return $1.CommonIn();
      case 'SelectUTXO': return $1.UtxoInput();
      case 'PreExecWithSelectUTXO': return $1.PreExecWithSelectUTXORequest();
      case 'DeployNativeCode': return $1.DeployNativeCodeRequest();
      case 'NativeCodeStatus': return $1.NativeCodeStatusRequest();
      case 'DposCandidates': return $1.DposCandidatesRequest();
      case 'DposNominateRecords': return $1.DposNominateRecordsRequest();
      case 'DposNomineeRecords': return $1.DposNomineeRecordsRequest();
      case 'DposVoteRecords': return $1.DposVoteRecordsRequest();
      case 'DposVotedRecords': return $1.DposVotedRecordsRequest();
      case 'DposCheckResults': return $1.DposCheckResultsRequest();
      case 'DposStatus': return $1.DposStatusRequest();
      case 'GetAccountByAK': return $1.AK2AccountRequest();
      case 'GetAddressContracts': return $1.AddressContractsRequest();
      case 'PreExec': return $1.InvokeRPCRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SelectUTXOBySize': return this.selectUTXOBySize(ctx, request);
      case 'PostTx': return this.postTx(ctx, request);
      case 'QueryACL': return this.queryACL(ctx, request);
      case 'QueryUtxoRecord': return this.queryUtxoRecord(ctx, request);
      case 'QueryContractStatData': return this.queryContractStatData(ctx, request);
      case 'GetAccountContracts': return this.getAccountContracts(ctx, request);
      case 'QueryTx': return this.queryTx(ctx, request);
      case 'GetBalance': return this.getBalance(ctx, request);
      case 'GetBalanceDetail': return this.getBalanceDetail(ctx, request);
      case 'GetFrozenBalance': return this.getFrozenBalance(ctx, request);
      case 'GetBlock': return this.getBlock(ctx, request);
      case 'GetBlockByHeight': return this.getBlockByHeight(ctx, request);
      case 'GetBlockChainStatus': return this.getBlockChainStatus(ctx, request);
      case 'GetBlockChains': return this.getBlockChains(ctx, request);
      case 'GetSystemStatus': return this.getSystemStatus(ctx, request);
      case 'GetNetURL': return this.getNetURL(ctx, request);
      case 'SelectUTXO': return this.selectUTXO(ctx, request);
      case 'PreExecWithSelectUTXO': return this.preExecWithSelectUTXO(ctx, request);
      case 'DeployNativeCode': return this.deployNativeCode(ctx, request);
      case 'NativeCodeStatus': return this.nativeCodeStatus(ctx, request);
      case 'DposCandidates': return this.dposCandidates(ctx, request);
      case 'DposNominateRecords': return this.dposNominateRecords(ctx, request);
      case 'DposNomineeRecords': return this.dposNomineeRecords(ctx, request);
      case 'DposVoteRecords': return this.dposVoteRecords(ctx, request);
      case 'DposVotedRecords': return this.dposVotedRecords(ctx, request);
      case 'DposCheckResults': return this.dposCheckResults(ctx, request);
      case 'DposStatus': return this.dposStatus(ctx, request);
      case 'GetAccountByAK': return this.getAccountByAK(ctx, request);
      case 'GetAddressContracts': return this.getAddressContracts(ctx, request);
      case 'PreExec': return this.preExec(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => XchainServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => XchainServiceBase$messageJson;
}

