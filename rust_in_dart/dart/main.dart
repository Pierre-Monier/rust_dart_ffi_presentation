import 'ffi.dart';

void main(List<String> args) {
  final result = FFIBridge.rustAdd(1, 2);
  print('Add from Rust: $result');
}
