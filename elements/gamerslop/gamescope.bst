kind: meson

sources:
- kind: git_repo
  url: github:OpenGamingCollective/gamescope.git
  track: ogc
  ref: 3.16.19-55-ga2dfc684e4f9a0fde3d9db4bc91f3f27e6d1ba57
# meson subprojects
- kind: git_repo
  directory: subprojects/glm
  url: github:g-truc/glm.git
  ref: 0af55ccecd98d4e5a8d1fad7de25ba429d60e863
- kind: git_repo
  directory: subprojects/stb
  url: github:nothings/stb.git
  ref: 5736b15f7ea0ffb08dd38af21067c314d6a3aae9
# git submodules
- kind: git_repo
  directory: subprojects/wlroots
  url: github:Joshua-Ashton/wlroots.git
  ref: 54e844748029d4874e14d0c086d50092c04c8899
- kind: git_repo
  directory: subprojects/libliftoff
  url: freedesktop:emersion/libliftoff.git
  ref: 8b08dc1c14fd019cc90ddabe34ad16596b0691f4
- kind: git_repo
  directory: subprojects/vkroots
  url: github:Joshua-Ashton/vkroots
  ref: 5106d8a0df95de66cc58dc1ea37e69c99afc9540
- kind: git_repo
  directory: subprojects/openvr
  url: github:ValveSoftware/openvr.git
  ref: ff87f683f41fe26cc9353dd9d9d7028357fd8e1a
- kind: git_repo
  directory: src/reshade
  url: github:Joshua-Ashton/reshade
  ref: 696b14cd6006ae9ca174e6164450619ace043283

- kind: local
  path: files/gamescope
# kind: patch_queue doesn't work here because we need to patch submodules, and it uses "git apply". we'll use "patch" directly instead.
- kind: local
  directory: patches
  path: patches/gamescope

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/cmake.bst
- freedesktop-sdk.bst:components/patch.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/glslang.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- deps/google-benchmark.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libdecor.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libseat.bst
- freedesktop-sdk.bst:components/libdisplay-info.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst
- freedesktop-sdk.bst:components/xorg-lib-xcomposite.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xdamage.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- freedesktop-sdk.bst:components/xorg-lib-xfixes.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:components/xorg-lib-xrender.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/xorg-lib-xxf86vm.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/sdl3.bst
- freedesktop-sdk.bst:components/sdl2-compat.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:components/xorg-util-macros.bst
- gnome-build-meta.bst:core-deps/xorg-lib-xmu.bst
- freedesktop-sdk.bst:components/spirv-headers.bst
- freedesktop-sdk.bst:components/pciutils.bst
- deps/libxres.bst
- deps/luajit.bst

config:
  configure-commands:
  - |
    # Apply patches
    for f in patches/*; do
      patch -Np1 -i "${f}"
    done
    # Replace spirv-headers include with the system directory
    sed -i 's^../thirdparty/SPIRV-Headers/include/spirv/^/usr/include/spirv/^' src/meson.build
    %{meson}

variables:
  meson-local: >-
    -Dpipewire=enabled
    -Dforce_fallback_for=glm,stb,libliftoff,vkroots,wlroots
