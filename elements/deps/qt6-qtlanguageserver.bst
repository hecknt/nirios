kind: cmake

sources:
- kind: git_repo
  url: qt:qtlanguageserver.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g7ef3bccd89cc163a664b46fe80a4bd56084b1983

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
