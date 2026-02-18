kind: autotools

sources:
- kind: tar
  url: invisible-mirror-archives:lynx/tarballs/lynx2.9.2.tar.bz2
  ref: 7374b89936d991669e101f4e97f2c9592036e1e8cdaa7bafc259a77ab6fb07ce

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:bootstrap/ncurses.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/libidn2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/bzip2.bst
- freedesktop-sdk.bst:components/zlib.bst

variables:
  conf-local: >-
    --enable-nls
    --enable-ipv6
    --enable-externs
    --with-ssl=%{prefix}
    --enable-default-colors
    --enable-color-style
    --with-screen=ncursesw
