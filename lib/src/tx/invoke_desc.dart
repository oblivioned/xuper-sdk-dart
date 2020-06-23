part of 'package:xuper_sdk/tx.dart';

abstract class InvokeDesc {
  Uint8List get data;

  InvokeRequest get request;

  String get jsonString;

  Map get asMap => json.decode(jsonString);

  static InvokeDesc fromMessage(String message) =>
      _DescRawContent.fromString(message);

  static InvokeDesc fromJson(String json) {
    final jobject = jsonDecode(json);
    assert(jobject is Map);
    return fromMap(jobject as Map);
  }

  static List<InvokeDesc> fromJsonList(String json) {
    final jobject = jsonDecode(json);
    assert(jobject is List<Map>);

    final ret = <InvokeDesc>[];
    (jobject as List<Map>).forEach((e) => ret.add(fromMap(e)));

    return ret;
  }

  static List<InvokeDesc> fromsList(List<Map<String, dynamic>> list) {
    final ret = <InvokeDesc>[];
    list.forEach((e) => ret.add(fromMap(e)));
    return ret;
  }

  static InvokeDesc fromMap(Map<String, dynamic> map) {
    assert(map.keys.contains('module_name') && map['module_name'] is String,
        'miss parmas "module_name"');
    return map['module_name'] == 'wasm'
        ? _DescContractInvoke.fromMap(map)
        : _DescModuleInvoke.fromMap(map);
  }
}

class _DescRawContent implements InvokeDesc {
  // 不能为final，因为派生类在集成后，可能不会使用这个字段，但是会重写get方法
  final Uint8List _data;

  @override
  Uint8List get data => _data;

  @override
  InvokeRequest get request => null;

  @override
  Map get asMap => null;

  @override
  String get jsonString => utf8.decode(_data);

  _DescRawContent(this._data);

  factory _DescRawContent.fromString(String s) =>
      _DescRawContent(utf8.encode(s));
}

// 调用模块的Invoke
class _DescModuleInvoke extends InvokeDesc {
  final String module_name;
  final String method_name;
  final Map<String, String> args;

  @override
  Uint8List get data => utf8.encode(jsonString);

  @override
  InvokeRequest get request {
    final request = InvokeRequest();
    request.moduleName = module_name;
    request.methodName = method_name;

    args.forEach((k, v) {
      if (v is String) {
        request.args[k] = utf8.encode(v);
      } else if (v is num) {
        request.args[k] = intToBytes(BigInt.from(v as num));
      } else if (v is Uint8List) {
        request.args[k] = (v as Uint8List).toList();
      } else if (v is BigInt) {
        request.args[k] = intToBytes(v as BigInt);
      } else {
        assert(false, 'not supprot type');
      }
    });

    return request;
  }

  @override
  String get jsonString => jsonEncode({
        'args': args,
        'method_name': method_name,
        'module_name': module_name,
      });

  _DescModuleInvoke(
      {@required this.module_name,
      @required this.method_name,
      this.args = const <String, String>{}});

  factory _DescModuleInvoke.fromJson(String json) =>
      _DescModuleInvoke.fromMap(jsonDecode(json));

  factory _DescModuleInvoke.fromMap(Map<String, dynamic> map) {
    // 缺失参数，若没有明确参数，无法初始化InvokDesc，所以此处使用断言
    assert(map.keys.toSet().containsAll(['args', 'module_name', 'method_name']),
        'missing must parmas.');
    assert(map['args'] is Map<String, dynamic>,
        'parmas "args" must be a Map<String, dynamic>.');
    assert(map['module_name'] is String, 'parmas "module_name" must be String');
    assert(map['method_name'] is String, 'parmas "method_name" must be String');

    return _DescModuleInvoke(
        module_name: map['module_name'],
        method_name: map['method_name'],
        args: map['args'] as Map<String, dynamic>);
  }
}

class _DescContractInvoke extends _DescModuleInvoke implements InvokeDesc {
  final String contract_name;
  final String amount;

  @override
  Uint8List get data => utf8.encode(jsonString);

  @override
  String get jsonString => jsonEncode({
        'args': args,
        'contract_name': contract_name,
        'method_name': method_name,
        'module_name': module_name,
      });

  @override
  InvokeRequest get request {
    final request = super.request;
    request.contractName = contract_name;
    return request;
  }

  _DescContractInvoke(
      {@required this.contract_name,
      @required String method_name,
      this.amount = '0',
      Map<String, String> args = const <String, String>{}})
      : super(module_name: 'wasm', method_name: method_name, args: args);

  factory _DescContractInvoke.fromJson(String json) =>
      _DescContractInvoke.fromMap(jsonDecode(json));

  factory _DescContractInvoke.fromMap(Map<String, dynamic> map) {
    return _DescContractInvoke(
        contract_name: map['contract_name'],
        method_name: map['method_name'],
        args: map['args'] as Map<String, dynamic>);
  }
}
