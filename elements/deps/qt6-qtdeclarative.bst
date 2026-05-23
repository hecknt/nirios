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
  ref: v6.11.1-0-ga02bed441965ee1f18f856352c7d5ee5ba35d795

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
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
