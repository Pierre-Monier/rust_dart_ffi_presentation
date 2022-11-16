import 'dart:ffi';

class FFIBridge {
  static const libPath = "libadd.dylib";
  static final DynamicLibrary _lib = DynamicLibrary.open(libPath);

  static final int Function(int a, int b) _rustAdd = _lib
      .lookup<NativeFunction<Int32 Function(Int32, Int32)>>('add')
      .asFunction();

  static int rustAdd(int a, int b) => _rustAdd(a, b);
}
