kind: cmake

sources:
- kind: git_repo
  url: github:ndevilla/iniparser
  track: v*
  ref: v4.2.6-0-g4bef811283e0ec1658c60e09950bd5a1ddc92e4b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/doxygen.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_STATIC_LIBS=false
    -DCMAKE_BUILD_TYPE=Release
