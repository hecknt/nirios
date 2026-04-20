kind: meson

public:
  bst:
    overlap-whitelist:
      - /usr/include/dwarf.h

sources:
- kind: git_repo
  url: github:davea42/libdwarf-code
  track: v*
  ref: v2.3.1-0-gb5ef10c9df0f494596fd9d31e19048a3ed5f28ba

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/elfutils.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/zlib.bst

