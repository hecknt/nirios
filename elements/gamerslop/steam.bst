kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/make.bst

runtime-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/tar.bst
- freedesktop-sdk.bst:components/xz.bst

sources:
- kind: tar
  url: steampowered:steam/archive/stable/steam_%{steam_version}.tar.gz
  ref: 7f2d374a2fb413ced5b8125151456219d918a255872b4bb77016cbccf38bb7f1
# The steam_version variable must be updated manually.
variables:
  strip-binaries: ""
  steam_version: 1.0.0.85

config:
  install-commands:
  - |
    make DESTDIR="%{install-root}" install

    # we don't have apt-get so the provided steamdeps script will always fail.
    ln -sf true "%{install-root}%{bindir}/steamdeps"
  - |
    %{install-extra}
