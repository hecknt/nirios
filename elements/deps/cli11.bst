kind: cmake

sources:
- kind: git_repo
  url: github:CLIUtils/CLI11
  track: v*
  ref: v2.6.2-0-g37bb6edc5317e99af72ef48405e65d9ca5218861

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
