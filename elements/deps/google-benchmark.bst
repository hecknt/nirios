kind: cmake

sources:
- kind: git_repo
  url: github:google/benchmark.git
  # FIXME: track via version again
  # Currently set to a specific commit that fixes compilation with gcc-16
  # track: v*
  ref: 8abf1e701fbd88c8170f48fe0558247e2e5f8e7d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBENCHMARK_ENABLE_GTEST_TESTS=OFF
    -DBENCHMARK_USE_BUNDLED_GTEST=OFF
