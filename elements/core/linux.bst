# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-core-%{version}-300.fc44.aarch64.rpm
      ref: 16746747087898030a9fbc400b0b1589ee3c134dabf5b0ea8a88e86c496ed769
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-core-%{version}-300.fc44.x86_64.rpm
      ref: 3821d09635342ad21192d25fed0906dde3eec843f2817b1428854a468163eff5
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-%{version}-300.fc44.aarch64.rpm
      ref: 9e33b7eb71885497fdff823e830838b8b104249f1f94db9bc50d9feeff6eec23
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-%{version}-300.fc44.x86_64.rpm
      ref: 4242c64811dbf196e92c0a35a284594e446103f3268ea2dbdabd33e842a1f107
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-core-%{version}-300.fc44.aarch64.rpm
      ref: 6e40d8ee1211809ac74cf9dc1bed04f4bf554bf81ef5b9657a6d45c4b4daf5f7
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-core-%{version}-300.fc44.x86_64.rpm
      ref: becb8c4d9e4b1fec183a302c06ce31dc33c395fe1b191399b8aae49ed1d6ec52
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-extra-%{version}-300.fc44.aarch64.rpm
      ref: c2784643a248224bd70d234a15ff1bf01a99bd1c3b76d44d25f2892f02fb3d30
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-extra-%{version}-300.fc44.x86_64.rpm
      ref: 9cc6d5916f39303000a5009ff5079afe6f0c87e396c7391bc38fb6320497f49f

variables:
  version: 6.19.13
  strip-binaries: ""

build-depends:
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:components/zstd.bst
- deps/rpm-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - |
    for f in *.rpm; do
      rpm2cpio $f | cpio -idmv
    done
    mv lib usr/
    rm *.rpm
  install-commands:
  - |
    cp -ra . %{install-root}/
  - |
    %{install-extra}
