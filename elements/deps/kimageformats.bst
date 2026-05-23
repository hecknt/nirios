kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kimageformats.git
  # We're tracking v6.23.0 here because extra-cmake-modules in fdSDK 25.08.8 is just a little bit too old for v6.24.0.
  # track: v6.*.*
  track: v6.23.0
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.23.0-0-g1c2210c10037cb9d2a39ed57d0a322d2f4ec7a11

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libheif.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- deps/qt6-qtbase.bst
# optional dependencies, they don't exist in freedesktop-sdk
# - deps/jxrlib.bst
# - deps/karchive.bst
# - deps/libraw.bst
# - deps/openexr.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DKIMAGEFORMATS_HEIF=ON
