kind: cmake

sources:
- kind: git_repo
  url: github:google/benchmark.git
  track: v*
  ref: v1.9.5-0-g192ef10025eb2c4cdd392bc502f0c852196baa48

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBENCHMARK_ENABLE_GTEST_TESTS=OFF
    -DBENCHMARK_USE_BUNDLED_GTEST=OFF
