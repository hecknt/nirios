# Pulls the kernel + modules from the latest Fedora non-rawhide release
kind: manual

sources:
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/aarch64/kernel-core-6.19.8-300.fc44.aarch64.rpm
      ref: da21c34ece9940ccb133fbfcd53dbbc2551d59db40f841503a7ad1240b9b27e4
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/x86_64/kernel-core-6.19.8-300.fc44.x86_64.rpm
      ref: e447c68cb91c46c8c4b51790839990c364eb45a2afbfdf0aae09dbec3feecccd
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/aarch64/kernel-modules-6.19.8-300.fc44.aarch64.rpm
      ref: 4db59a1f87fa8da6b9ee4ff882c5ca62b8a3cdd1cae466fa46892aee96506911
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/x86_64/kernel-modules-6.19.8-300.fc44.x86_64.rpm
      ref: cab56730508b29e02d51a8c8856b8800c157a1fee0d1431dc839d668e8f7076e
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/aarch64/kernel-modules-core-6.19.8-300.fc44.aarch64.rpm
      ref: b8c3602455aaf6b2662c3337d8f2ba50f09d774370d4e1336995da57fcf2eff3
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/x86_64/kernel-modules-core-6.19.8-300.fc44.x86_64.rpm
      ref: 14b7fb1861915f804d0507002b1ab8c7d86d08a86de733d2c84c721cf31308b1
- kind: remote
  (?):
  - arch == "aarch64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/aarch64/kernel-modules-extra-6.19.8-300.fc44.aarch64.rpm
      ref: d6196da47c0e7c97727c028913def263fa651f9777e6843461aefbc6d68ba6c1
  - arch == "x86_64":
      url: kojipkgs-fedora:packages/kernel/6.19.8/300.fc44/x86_64/kernel-modules-extra-6.19.8-300.fc44.x86_64.rpm
      ref: 44664afea2918b184277dca315541001e3501c4382809f34f6c1572df16f5ff2

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
