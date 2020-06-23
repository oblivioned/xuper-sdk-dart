part of 'package:xuper_sdk/tx.dart';

String $base64(d) => base64Encode(d);

// 官方还没有确定最终关于hash的计算方式，下列的代码仅仅是为了保持和golang的一些序列化的特性保持一致
// 坦白说，这不是一个很好的方法。在golang中处理的只有顺序就可以获得hash，但是在其他语言中还需要处理
// 一些别的，比如在不同的语言中，不同的类型最终的json可能有不一样，但是hash的敏感性导致我们必须在各
// 种不同的情况下，最终的结果都必须一致，否则可能导致无法验证签名。
extension TXHash on Transaction {
  /// 这个函数看似是计算交易的Hash值，但是本质上是计算签名的摘要和TxID，
  /// 区别在于，计算签名摘要时是不需要使用sig的相关字段的，但是计算TxID
  /// 是需要的所以为了不引起误会，设置为私有方法。签名的摘要可以使用Builder
  /// 的一系列流程完成，不需要关注这个值，用户最终需要关注一般是Txid.
  Uint8List get _makeDigestHash {
    final sink = LengthTrackingByteSink();

    for (final _txInput in txInputs) {
      if (_txInput.hasRefTxid()) {
        sink.addLine('"${$base64(_txInput.refTxid)}"');
      }

      sink.addLine(_txInput.refOffset.toString());

      if (_txInput.hasFromAddr()) {
        sink.addLine('"${$base64(_txInput.fromAddr)}"');
      }

      if (_txInput.hasAmount()) {
        sink.addLine('"${$base64(_txInput.amount)}"');
      }

      sink.addLine(_txInput.frozenHeight.toString());
    }

    // 2.output
    sink.addLine(_jsonEncodeOutputs);

    // 3.desc
    if (hasDesc()) {
      sink.addLine('"${$base64(desc)}"');
    } else {
      sink.addLine('"${$base64(utf8.encode("xuper-sdk-dart"))}"');
    }

    // 4.nonce
    sink.addLine('"$nonce"');

    /// 5.timestamp
    sink.addLine(timestamp.toString());

    /// 6.version
    sink.addLine(version.toString());

    /// 7.txInputsExtArray
    for (final _intputExt in txInputsExt) {
      sink.addLine('"${_intputExt.bucket}"');

      if (_intputExt.hasKey()) {
        sink.addLine('"${$base64(_intputExt.key)}"');
      }

      if (_intputExt.hasRefTxid()) {
        sink.addLine('"${$base64(_intputExt.refTxid)}"');
      }

      sink.addLine(_intputExt.refOffset.toString());
    }

    /// 8.txOutputsExtArray
    for (final _txOutputExt in txOutputsExt) {
      sink.addLine('"${_txOutputExt.bucket}"');

      if (_txOutputExt.hasKey()) {
        sink.addLine('"${$base64(_txOutputExt.key)}"');
      }

      if (_txOutputExt.hasValue()) {
        sink.addLine('"${$base64(_txOutputExt.value)}"');
      }
    }

    /// 9.contractRequestsArray, go源码中，如果这个对象确实需要写入一个null  ？？？？
    sink.addLine(_jsonEncoderContractRequests);

    /// 10.initor
    sink.addLine('"${initiator}"');

    /// 11.authRequireArray
    sink.addLine('${json.encode(authRequire)}');

    /// 13.signs, 交易中若包含签名，则可能是最终计算txid使用,在签名阶段是不需要使用签名字段的
    if (initiatorSigns.isNotEmpty) {
      sink.addLine('${_jsonEncodeSigList(initiatorSigns)}');
    }

    if (authRequireSigns.isNotEmpty) {
      sink.addLine('${_jsonEncodeSigList(authRequireSigns)}');
    }

    /// 14.coinbase
    coinbase ? sink.addLine('true') : sink.addLine('false');

    /// 15.autogen
    autogen ? sink.addLine('true') : sink.addLine('false');

    /// double sha256
    return keccak256(keccak256(sink.asBytes()));
  }

  // args 编码，key为base64字符串
  Map _jsonEncoderArgs(Map<String, List<int>> args) =>
      args.map((k, v) => MapEntry<String, dynamic>(k, $base64(v)));

  /// 顺序问题，导致需要手动拼接Json
  String get _jsonEncoderContractRequests {
    if (contractRequests == null || contractRequests.isEmpty) {
      return 'null';
    }

    final list = [];
    for (final invoke in contractRequests) {
      final m = <String, dynamic>{
        if (invoke.hasModuleName()) 'module_name': invoke.moduleName,
        if (invoke.hasContractName()) 'contract_name': invoke.contractName,
        if (invoke.hasMethodName()) 'method_name': invoke.methodName,
        if (invoke.args.isNotEmpty) 'args': _jsonEncoderArgs(invoke.args),
        if (invoke.hasAmount()) 'amount': invoke.amount,
      };

      if (invoke.resourceLimits.isNotEmpty) {
        final limitList = [];
        for (final limit in invoke.resourceLimits) {
          switch (limit.type) {
            case ResourceType.CPU:
              if (limit.limit > 0) {
                limitList.add({'limit': limit.limit.toInt()});
              } else {
                limitList.add({});
              }
              break;

            default:
              if (limit.limit > 0) {
                limitList.add({
                  'type': limit.type.value,
                  'limit': limit.limit.toInt(),
                });
              } else {
                limitList.add({
                  'type': limit.type.value,
                });
              }
          }
          m['resource_limits'] = limitList;
        }
      }
      list.add(m);
    }

    return json.encode(list);
  }

  String get _jsonEncodeOutputs {
    if (txOutputs == null || txOutputs.isEmpty) {
      return 'null';
    }

    final outputsList = [];
    for (final _output in txOutputs) {
      final out = {
        if (_output.hasAmount()) 'amount': $base64(_output.amount),
        if (_output.hasToAddr())
          'to_addr': $base64(_output.toAddr),
        // int的取值范围应该够用，不需要Bigint对象,而且写入Bigint可能会导致转化json的时候变成字符串，导致hash不一致
        if (_output.frozenHeight != 0)
          'frozen_height': _output.frozenHeight.toInt(),
      };

      // 如果三个值都没有是不写入最后的结果的
      if (out.isNotEmpty) {
        outputsList.add(out);
      }
    }

    if (outputsList.isEmpty) {
      return 'null';
    }

    return jsonEncode(outputsList);
  }

  String _jsonEncodeSigList(List<SignatureInfo> sigs) =>
      json.encode(List.from(sigs.map((sig) => {
            if (sig.hasPublicKey()) "PublicKey": sig.publicKey,
            if (sig.hasSign()) "Sign": $base64(sig.sign)
          })));
}

/*
"ZyXo0Hd1IXse5uhB529MpsynRqA0UBqp67iCy5jwF/A="
0
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBO"
"D0JA"
0
[{"amount":"A+g=","to_addr":"JA=="},{"amount":"Dz5Y","to_addr":"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBO"}]
"eyJhcmdzIjp7ImFjY291bnRfbmFtZSI6IjE1OTI4MjMwMTcyNDMxMDMiLCJhY2wiOiJ7XCJha3NXZWlnaHRcIjp7XCJkcHp1VmRvc1FyRjJrbXp1bWhWZUZRWmExYVljZGdGcE5cIjowLjUsXCJlcU12dEgxTVFTZWpkNG56eER5MjFXMUdXMTJjb2NyUEZcIjowLjV9LFwicG1cIjp7XCJhY2NlcHRWYWx1ZVwiOjAuNjAwMDAwMDIzODQxODU3OTEsXCJydWxlXCI6MX19In0sIm1ldGhvZF9uYW1lIjoiTmV3QWNjb3VudCIsIm1vZHVsZV9uYW1lIjoieGtlcm5lbCJ9"
"159282301736766400"
159282301736767296
1
"XCAK2Account"
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOAVhDMTU5MjgyMzAxNzI0MzEwM0B4dXBlcg=="
0
"XCAK2Account"
"ZXFNdnRIMU1RU2VqZDRuenhEeTIxVzFHVzEyY29jclBGAVhDMTU5MjgyMzAxNzI0MzEwM0B4dXBlcg=="
0
"XCAccount"
"WEMxNTkyODIzMDE3MjQzMTAzQHh1cGVy"
0
"XCAK2Account"
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOAVhDMTU5MjgyMzAxNzI0MzEwM0B4dXBlcg=="
"dHJ1ZQ=="
"XCAK2Account"
"ZXFNdnRIMU1RU2VqZDRuenhEeTIxVzFHVzEyY29jclBGAVhDMTU5MjgyMzAxNzI0MzEwM0B4dXBlcg=="
"dHJ1ZQ=="
"XCAccount"
"WEMxNTkyODIzMDE3MjQzMTAzQHh1cGVy"
"eyJha3NXZWlnaHQiOnsiZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOIjowLjUsImVxTXZ0SDFNUVNlamQ0bnp4RHkyMVcxR1cxMmNvY3JQRiI6MC41fSwicG0iOnsiYWNjZXB0VmFsdWUiOjAuNjAwMDAwMDIzODQxODU3OTEsInJ1bGUiOjF9fQ=="
[{"module_name":"xkernel","method_name":"NewAccount","args":{"account_name":"MTU5MjgyMzAxNzI0MzEwMw==","acl":"eyJha3NXZWlnaHQiOnsiZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOIjowLjUsImVxTXZ0SDFNUVNlamQ0bnp4RHkyMVcxR1cxMmNvY3JQRiI6MC41fSwicG0iOnsiYWNjZXB0VmFsdWUiOjAuNjAwMDAwMDIzODQxODU3OTEsInJ1bGUiOjF9fQ=="},"resource_limits":[{},{"type":1},{"type":2},{"type":3,"limit":1000}]}]
"dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN"
["dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN"]
false
false

------ has signs
"Y6ALm8E+ddqWqIbSyROsV/kJW+X2Ul5/kPloJRj/GNA="
0
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBO"
"D0JA"
0
[{"amount":"A+g=","to_addr":"JA=="},{"amount":"Dz5Y","to_addr":"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBO"}]
"eyJhcmdzIjp7ImFjY291bnRfbmFtZSI6IjE1OTI5MDM0NzE3MjIyODMiLCJhY2wiOiJ7XCJha3NXZWlnaHRcIjp7XCJkcHp1VmRvc1FyRjJrbXp1bWhWZUZRWmExYVljZGdGcE5cIjowLjUsXCJlcU12dEgxTVFTZWpkNG56eER5MjFXMUdXMTJjb2NyUEZcIjowLjV9LFwicG1cIjp7XCJhY2NlcHRWYWx1ZVwiOjAuNjAwMDAwMDIzODQxODU3OTEsXCJydWxlXCI6MX19In0sIm1ldGhvZF9uYW1lIjoiTmV3QWNjb3VudCIsIm1vZHVsZV9uYW1lIjoieGtlcm5lbCJ9"
"159290347185144704"
159290347185145792
1
"XCAK2Account"
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOAVhDMTU5MjkwMzQ3MTcyMjI4M0B4dXBlcg=="
0
"XCAK2Account"
"ZXFNdnRIMU1RU2VqZDRuenhEeTIxVzFHVzEyY29jclBGAVhDMTU5MjkwMzQ3MTcyMjI4M0B4dXBlcg=="
0
"XCAccount"
"WEMxNTkyOTAzNDcxNzIyMjgzQHh1cGVy"
0
"XCAK2Account"
"ZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOAVhDMTU5MjkwMzQ3MTcyMjI4M0B4dXBlcg=="
"dHJ1ZQ=="
"XCAK2Account"
"ZXFNdnRIMU1RU2VqZDRuenhEeTIxVzFHVzEyY29jclBGAVhDMTU5MjkwMzQ3MTcyMjI4M0B4dXBlcg=="
"dHJ1ZQ=="
"XCAccount"
"WEMxNTkyOTAzNDcxNzIyMjgzQHh1cGVy"
"eyJha3NXZWlnaHQiOnsiZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOIjowLjUsImVxTXZ0SDFNUVNlamQ0bnp4RHkyMVcxR1cxMmNvY3JQRiI6MC41fSwicG0iOnsiYWNjZXB0VmFsdWUiOjAuNjAwMDAwMDIzODQxODU3OTEsInJ1bGUiOjF9fQ=="
[{"module_name":"xkernel","method_name":"NewAccount","args":{"account_name":"MTU5MjkwMzQ3MTcyMjI4Mw==","acl":"eyJha3NXZWlnaHQiOnsiZHB6dVZkb3NRckYya216dW1oVmVGUVphMWFZY2RnRnBOIjowLjUsImVxTXZ0SDFNUVNlamQ0bnp4RHkyMVcxR1cxMmNvY3JQRiI6MC41fSwicG0iOnsiYWNjZXB0VmFsdWUiOjAuNjAwMDAwMDIzODQxODU3OTEsInJ1bGUiOjF9fQ=="},"resource_limits":[{},{"type":1},{"type":2},{"type":3,"limit":1000}]}]
"dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN"
["dpzuVdosQrF2kmzumhVeFQZa1aYcdgFpN"]
[{"PublicKey":"{\"Curvname\":\"P-256\",\"X\":74695617477160058757747208220371236837474210247114418775262229497812962582435,\"Y\":51348715319124770392993866417088542497927816017012182211244120852620959209571}","Sign":"MEUCIQCy72qRx+4OMokVy4akvyEgK32cl8AjtLxWHOkSaAW62AIgBmjMvNQSIGlBO\/0CiVgB3WpKjgKR4Rc+pE71bADSkzgA"}]
[{"PublicKey":"{\"Curvname\":\"P-256\",\"X\":74695617477160058757747208220371236837474210247114418775262229497812962582435,\"Y\":51348715319124770392993866417088542497927816017012182211244120852620959209571}","Sign":"MEUCIQDEB3XDeG8e2iOXRzwRV0iSM14W0fV0OPy0EuOs9tdqdQIgDT6Q1FeyUbcTSIukBs\/b1Ej1hJLzRqa0ORI\/RYjqpFAA"}]
false
false


 */
