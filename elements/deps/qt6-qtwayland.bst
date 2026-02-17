kind: cmake

sources:
- kind: git_repo
  url: qt:qtwayland.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.10.2-0-g4360cb966b57f51174f4dfdbb416ff48de068e24

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/wayland.bst
- deps/qt6-qtbase.bst
- deps/qt6-qtsvg.bst
- deps/qt6-qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/wayland.bst
- deps/qt6-qtbase.bst
- deps/qt6-qtsvg.bst
- deps/qt6-qtdeclarative.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
