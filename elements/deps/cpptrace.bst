kind: cmake

sources:
- kind: git_repo
  url: github:jeremy-rifkin/cpptrace
  track: v*
  ref: v1.0.4-0-g3db8da80111171c219ab5839905771386bee06b3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/libunwind.bst
- deps/libdwarf.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
    -DCPPTRACE_USE_EXTERNAL_ZSTD=1
    -DCPPTRACE_USE_EXTERNAL_LIBDWARF=1
    -DCPPTRACE_STD_FORMAT=1
    -DCPPTRACE_STATIC_DEFINE=1
    -DCPPTRACE_UNWIND_WITH_LIBUNWIND=1
    -DCPPTRACE_FIND_LIBDWARF_WITH_PKGCONFIG=1
