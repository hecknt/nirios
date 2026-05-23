kind: meson

sources:
- kind: git_repo
  url: codeberg:dnkl/foot.git
  track: "*"
  ref: 1.27.0-0-gde998602dbc00c8862a6823d553cbb1df91c676d

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap/ncurses.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/scdoc.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/sed.bst
- deps/fcft.bst
- deps/tllist.bst

depends:
- freedesktop-sdk.bst:bootstrap/ncurses.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/pixman.bst
- deps/fcft.bst

variables:
  meson-local: >-
    -Dterminfo=disabled
