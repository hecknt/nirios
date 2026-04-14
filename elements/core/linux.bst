# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-core-%{version}-300.fc44.aarch64.rpm
      ref: 554bf771b25404e3fe9d893474dfee7732c6298451ae38aa8a5047c0c6d4342e
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-core-%{version}-300.fc44.x86_64.rpm
      ref: fd27cc649fc6542ce392ec7576f9060864d9d4f2752032aead166903995b3b0c
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-%{version}-300.fc44.aarch64.rpm
      ref: a8dba86bbf2adc582ae0ac65ecb5ffb372a7b4236abaed2f33e5b23bd85c6a79
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-%{version}-300.fc44.x86_64.rpm
      ref: 8966ec5b480a9a1c53a17958e5c21ea7ca5ed6028a2fd478fe4c147b8110d3cf
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-core-%{version}-300.fc44.aarch64.rpm
      ref: 2d833f2d372e9a452491fac6774caf65d1914a10bf82b7b4de4b175f9ffbc168
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-core-%{version}-300.fc44.x86_64.rpm
      ref: dcc1c5d5a0acfad15a301384aaee6684402e9f8ea42a00c17b8ab5b7de77416c
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/aarch64/kernel-modules-extra-%{version}-300.fc44.aarch64.rpm
      ref: 437f62eede5e1e68feee714113acd1514d889845e973876823aef25f73078db2
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/%{version}/300.fc44/x86_64/kernel-modules-extra-%{version}-300.fc44.x86_64.rpm
      ref: 9db7c8884c9f2620a3ce06883a7f7dc50befa674751e3a1b7ccd523f379e8f37

variables:
  version: 6.19.12
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
