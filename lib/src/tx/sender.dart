part of 'package:xuper_sdk/tx.dart';

class TransactionSender {
  final String _bcname;
  final XuperClient _client;
  final Transaction _tx;

  Uint8List get txid => _tx.txid;
  String get txidHex => bytesToHex(_tx.txid);

  TransactionSender._(this._bcname, this._client, this._tx);

  Future<CommonReply> doSend() =>
      _client.xchainServices.postTx(_buildTxStatus());

  TxStatus _buildTxStatus() => TxStatus()
    ..bcname = _bcname
    ..status = TransactionStatus.UNCONFIRM
    ..txid = txid
    ..tx = _tx;
}
