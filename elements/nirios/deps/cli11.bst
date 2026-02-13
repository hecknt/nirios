kind: cmake

sources:
- kind: git_repo
  url: github:CLIUtils/CLI11
  track: v*
  ref: v2.6.1-0-gbfffd37e1f804ca4fae1caae106935791696b6a9

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DCLI11_BUILD_TESTS=OFF
    -DCLI11_BUILD_EXAMPLES=OFF
