# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/aarch64/kernel-core-6.19.6-300.fc44.aarch64.rpm
      ref: d1dd9380db7dbbed8c1c559303210ed2af83541a6ae6ea32c18227e1ae3f46ff
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-core-6.19.6-300.fc44.x86_64.rpm
      ref: f836984169e9abca97c704185661d03f565d107dc4816653446c429f04d6ffaa
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/aarch64/kernel-modules-6.19.6-300.fc44.aarch64.rpm
      ref: 2a4f29454fb150d91e8e96f87c1ccb720e5edeb4e1ea70cf0104849647bf347a
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-modules-6.19.6-300.fc44.x86_64.rpm
      ref: 94c7b7c234f81695b8326f0bed4700efc2260a074d4a92b64f7dbe305c928232
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/aarch64/kernel-modules-core-6.19.6-300.fc44.aarch64.rpm
      ref: 13981b8a2e8c8fa93f4ba54f1d33864a7471b73bd9892953ccdf68338928c614
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-modules-core-6.19.6-300.fc44.x86_64.rpm
      ref: e687957f7193b8514e220c4f4b43f153a247954066eb11bb7446d90bc55daacb
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/aarch64/kernel-modules-extra-6.19.6-300.fc44.aarch64.rpm
      ref: 7c0bf0315c8df2c79645992cb5b9d678c72c1ecbdaab17a31b8f87fdb2ee8517
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-modules-extra-6.19.6-300.fc44.x86_64.rpm
      ref: 95c3a6fff8504b2be294f92bb72242f201823ae05c0741eab094d25e15fccbab

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
