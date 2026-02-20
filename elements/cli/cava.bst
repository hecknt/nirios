kind: autotools

sources:
- kind: git_repo
  url: github:karlstav/cava.git
  track: "*"
  ref: 0.10.7-0-gbbfbd0566bd3ced82b3d2a195d9c343b31b8b419

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/autoconf.bst
- freedesktop-sdk.bst:components/automake.bst
- freedesktop-sdk.bst:components/gettext.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fftw.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/sdl2-compat.bst
- deps/iniparser.bst
