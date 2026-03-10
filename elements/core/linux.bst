# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-core-6.19.6-300.fc44.x86_64.rpm
  ref: f836984169e9abca97c704185661d03f565d107dc4816653446c429f04d6ffaa
- kind: remote
  url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-modules-6.19.6-300.fc44.x86_64.rpm
  ref: 94c7b7c234f81695b8326f0bed4700efc2260a074d4a92b64f7dbe305c928232
- kind: remote
  url: kojipkgs-fedora:packages/kernel/6.19.6/300.fc44/x86_64/kernel-modules-core-6.19.6-300.fc44.x86_64.rpm
  ref: e687957f7193b8514e220c4f4b43f153a247954066eb11bb7446d90bc55daacb
- kind: remote
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
