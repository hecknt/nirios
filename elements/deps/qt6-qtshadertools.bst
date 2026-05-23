kind: cmake

sources:
- kind: git_repo
  url: qt:qtshadertools.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-gb3b8537b3c5ab01919e30b87d48d2f1ba1f2a3fe

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst
- deps/qt6-qtbase.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- deps/qt6-qtbase.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
