kind: cmake

sources:
- kind: git_repo
  url: qt:qtdeclarative.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.10.2-0-g09c70541c76659bcd8c49f05841b0e778c9ffd4c

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/zlib.bst
- deps/qt6-qtbase.bst
- deps/qt6-qtlanguageserver.bst
- deps/qt6-qtshadertools.bst
- deps/qt6-qtsvg.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- deps/qt6-qtbase.bst
- deps/qt6-qtshadertools.bst
- deps/qt6-qtsvg.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_CXX_FLAGS="${CXXFLAGS} -ffat-lto-objects"
