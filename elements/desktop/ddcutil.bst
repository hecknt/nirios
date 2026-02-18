kind: autotools

sources:
- kind: git_repo
  url: github:rockowitz/ddcutil.git
  track: "*"
  ref: v2.2.5-0-g5a77cf7bd77eccac8276e8e9cad754179fdcdd05

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/jansson.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst
- deps/i2c-tools.bst
