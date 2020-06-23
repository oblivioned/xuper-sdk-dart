part of 'package:xuper_sdk/tx.dart';

class TransactionSender {
  final String _bcname;
  final XuperClient _client;
  final Transaction _tx;

  Uint8List get txid => _tx.txid;
  String get txidHex => bytesToHex(_tx.txid);

  TransactionSender._(this._bcname, this._client, this._tx);

  Future<CommonReply> doSend() {
    final tx_status = TxStatus();
    tx_status.bcname = _bcname;
    tx_status.status = TransactionStatus.UNCONFIRM;
    tx_status.tx = _tx;
    tx_status.txid = txid;

    return _client.xchainServices.postTx(tx_status);
  }

  Stream<CommonReply> doSendAsStream() => doSend().asStream();

  String toString() => txidHex;
}
