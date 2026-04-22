kind: cmake

sources:
- kind: git_repo
  url: github:analogdevicesinc/libiio.git
  track: v*
  exclude:
  - "*-rc*"
  ref: v0.26-0-ga0eca0d2bf10326506fb762f0eec14255b27bef5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:components/gawk.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/libaio.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/libxml2.bst
- deps/libserialport.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=None
    -DCMAKE_INSTALL_LIBDIR=%{lib}
    -DCMAKE_INSTALL_PREFIX=%{prefix}
    -DCMAKE_INSTALL_SBINDIR=bin
    -DPYTHON_BINDINGS=ON
    -DSYSTEMD_UNIT_INSTALL_DIR=/usr/lib/systemd/system
    -DUDEV_RULES_INSTALL_DIR=/usr/lib/udev/rules.d
    -DWITH_MAN=ON
    -DWITH_SYSTEMD=ON
    -DWITH_SERIAL_BACKEND=ON
    -Wno-dev
