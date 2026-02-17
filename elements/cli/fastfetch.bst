kind: cmake

sources:
- kind: git_repo
  url: github:fastfetch-cli/fastfetch.git
  track: "*"
  ref: 2.59.0-0-gaa3a916d5a455f95405f68d0e22463ec3f517991

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE='RelWithDebInfo'
    -DENABLE_IMAGEMAGICK6='OFF'
    -DBUILD_FLASHFETCH='OFF'
    -DPACKAGES_DISABLE_APK='ON'
    -DPACKAGES_DISABLE_DPKG='ON'
    -DPACKAGES_DISABLE_EMERGE='ON'
    -DPACKAGES_DISABLE_EOPKG='ON'
    -DPACKAGES_DISABLE_GUIX='ON'
    -DPACKAGES_DISABLE_LINGLONG='ON'
    -DPACKAGES_DISABLE_LPKG='ON'
    -DPACKAGES_DISABLE_LPKGBUILD='ON'
    -DPACKAGES_DISABLE_OPKG='ON'
    -DPACKAGES_DISABLE_PACSTALL='ON'
    -DPACKAGES_DISABLE_PALUDIS='ON'
    -DPACKAGES_DISABLE_PKG='ON'
    -DPACKAGES_DISABLE_PKGTOOL='ON'
    -DPACKAGES_DISABLE_RPM='ON'
    -DPACKAGES_DISABLE_SORCERY='ON'
    -DPACKAGES_DISABLE_XBPS='ON'
    -DPACKAGES_DISABLE_PACMAN='ON'
    -Wno-dev
