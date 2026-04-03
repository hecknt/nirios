# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/aarch64/kernel-core-6.19.11-300.fc44.aarch64.rpm
      ref: 6eb74febca72daa11de1164d9c04efe0c157cfb388182a1ee6d5dc1472478b07
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/x86_64/kernel-core-6.19.11-300.fc44.x86_64.rpm
      ref: 6aaeca921cd42cd51233aebc96767ec7c93975512b8e073ecb04f4f0a9f43832
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/aarch64/kernel-modules-6.19.11-300.fc44.aarch64.rpm
      ref: acc55fc216f2224b139297b639d25a1287f33801ba35e46449dfb127a53e02b2
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/x86_64/kernel-modules-6.19.11-300.fc44.x86_64.rpm
      ref: 44cbfbe3cc6f2f278fb04d4796cd64d19838d6505812bc76c37f57d501c3e86a
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/aarch64/kernel-modules-core-6.19.11-300.fc44.aarch64.rpm
      ref: 752323dfdf27f4a884edc643d456f979b505c0a6ec08f6f34e281020107f55e8
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/x86_64/kernel-modules-core-6.19.11-300.fc44.x86_64.rpm
      ref: 4b776cc23bf72ff16c3b7c0180f7640d5fa21fc2abc9faab36c0ddba2acf62db
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/aarch64/kernel-modules-extra-6.19.11-300.fc44.aarch64.rpm
      ref: 4a11e2b5c96653395ba9b35b684b26dcd7a667936119eca28edf560c1445c638
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.11/300.fc44/x86_64/kernel-modules-extra-6.19.11-300.fc44.x86_64.rpm
      ref: 83cdfd101aa7ff033a56da0b13288f678d92779e8dd9425c6f189e7e33aefb42

build-depends:
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:components/zstd.bst
- deps/rpm-tools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

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
