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
  ref: v6.10.2-0-gb925029db51aff0b17a48f5939cb83c27932d0cb

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/zlib.bst
- nirios/deps/qt6-qtbase.bst
- nirios/deps/qt6-qtlanguageserver.bst
- nirios/deps/qt6-qtshadertools.bst
- nirios/deps/qt6-qtsvg.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- nirios/deps/qt6-qtbase.bst
- nirios/deps/qt6-qtshadertools.bst
- nirios/deps/qt6-qtsvg.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DCMAKE_CXX_FLAGS="${CXXFLAGS} -ffat-lto-objects"
