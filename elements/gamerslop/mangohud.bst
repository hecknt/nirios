kind: meson

sources:
- kind: tar
  url: github_files:flightlessmango/MangoHud/releases/download/v%{version}/MangoHud-v%{version}-Source.tar.xz
  ref: e810ac73163468533ddb7c74b681f1de4992a3d785dce294fee9933ec8956b05

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/glslang.bst
- freedesktop-sdk.bst:components/glslang.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/python3-mako.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fmtlib.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:components/libglvnd.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- deps/glfw.bst

variables:
  version: 0.8.3
  meson-local: >-
    -Dmangoapp=true
    -Dmangohudctl=true
    -Dmangoplot=disabled
    -Dwith_xnvctrl=disabled

config:
  # override install-commands to add missing executable bit to /usr/bin/mangohud
  install-commands:
    - |
      %{meson-install}
    - |
      chmod +x %{install-root}%{bindir}/*
