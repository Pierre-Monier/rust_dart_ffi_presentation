# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(rust_in_flutter_library VERSION 0.0.1 LANGUAGES C)

add_library(rust_in_flutter SHARED
  "rust_in_flutter.c"
)

set_target_properties(rust_in_flutter PROPERTIES
  PUBLIC_HEADER rust_in_flutter.h
  OUTPUT_NAME "rust_in_flutter"
)

target_compile_definitions(rust_in_flutter PUBLIC DART_SHARED_LIB)
