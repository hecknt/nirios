kind: cmake

sources:
- kind: git_repo
  url: github:litehtml/litehtml
  track: v*
  ref: v0.9-0-g6ca1ab0419e770e6d35a1ef690238773a1dafcee

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gcc-libs.bst
- deps/gumbo-parser.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DEXTERNAL_GUMBO=ON
    -DBUILD_SHARED_LIBS=ON
    -DLITEHTML_BUILD_TESTING=OFF
