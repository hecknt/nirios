kind: meson

sources:
- kind: git_repo
  url: codeberg:dnkl/fcft.git
  track: "*"
  ref: 3.3.3-0-g38de2ae450df667ac71ba4811fe535aa1954a217

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/scdoc.bst
- deps/tllist.bst
- deps/utf8proc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- deps/utf8proc.bst

variables:
  meson-local: >-
    -Dgrapheme-shaping=enabled
    -Drun-shaping=enabled
