kind: cmake

sources:
- kind: git_repo
  url: github:JuliaStrings/utf8proc.git
  track: v*
  ref: v2.11.3-0-ge5e799221b45bbb90f5fdc5c69b6b8dfbf017e78

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -D CMAKE_BUILD_TYPE=Release
    -D BUILD_SHARED_LIBS=ON
  sover: "3.2.3"

config:
  install-commands:
    - |
      install -Dm644 utf8proc.h "%{install-root}%{prefix}/include/utf8proc.h"
      install -Dm644 _builddir/libutf8proc.pc "%{install-root}%{prefix}/%{lib}/pkgconfig/libutf8proc.pc"
      install -Dm644 _builddir/libutf8proc.so.%{sover} "%{install-root}%{prefix}/%{lib}/libutf8proc.so.%{sover}"
      ln -s libutf8proc.so.%{sover} %{install-root}%{prefix}/%{lib}/libutf8proc.so
    - |
      %{install-extra}
