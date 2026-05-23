kind: autotools

sources:
- kind: git_repo
  url: codeberg:gumbo-parser/gumbo-parser.git
  track: v*
  ref: v0.10.1-0-g3973c58d759574f2899528d2b3379e17d66dbcad

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-nls
    --enable-ipv6
    --enable-externs
    --with-ssl=%{prefix}
    --enable-default-colors
    --enable-color-style
    --with-screen=ncursesw
