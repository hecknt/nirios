# Based off of freedesktop-sdk.bst:components/linux.bst
kind: make
description: Linux kernel with patches from OpenGamingCollective applied (gamerslop kernel)

sources:
- kind: git_repo
  url: github:OpenGamingCollective/linux.git
  track: "v*-ogc*"
  ref: v6.19.14-ogc4-0-g0ecb059a1fbed8dbfdcd5b50a5be8ddc426ea5fc
- kind: git_repo
  directory: ogc-kernel-packages
  url: github:OpenGamingCollective/kernel-packages.git
  track: "v*-ogc*"
  ref: v6.19.14-ogc3-0-g817e6ddfb0377756e66260bdf968b46484971d27
- kind: local
  path: files/linux/config-utils.sh
- kind: local
  path: files/linux/gamerslop-config.sh

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/cpio.bst  # loongarch64 build enabled CONFIG_IKHEADERS by default
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/pahole.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/rust-bindgen.bst
- freedesktop-sdk.bst:components/rust-src.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/zstd.bst
# - filename: components/linux-module-cert.bst
#   strict: true

variables:
  bootdir: /boot
  kernel_arch: '%{arch}'
  src-arch: '%{kernel_arch}'
  image-name: '$(make -s image_name)'
  optimize-debug: false
  (?):
  - arch == "x86_64":
      src-arch: x86
  - arch == "aarch64":
      kernel_arch: arm64
  - arch in ("ppc64", "ppc64le"):
      kernel_arch: powerpc
  - arch == "riscv64":
      kernel_arch: riscv
  - arch == "loongarch64":
      kernel_arch: loongarch

environment:
  ARCH: '%{kernel_arch}'
  # compile.h has hardcoded timestamp, let's seed it
  KBUILD_BUILD_TIMESTAMP: 'Thu Nov 10 15:00:00 UTC 2011'
  KBUILD_BUILD_USER: 'tomjon'
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

config:
  configure-commands:
  - |
    # Add the ogc version to the end of the kernel version
    git_tag="$(git describe --tag)"
    extra_version="-${git_tag#*$"-"}"
    sed -i "s/^EXTRAVERSION.*/EXTRAVERSION = ${extra_version}/" Makefile
    # Remove the .git directory to get rid of the ugly commit hash at the end of the kernel version
    rm -rf .git

  - |
    cp ogc-kernel-packages/arch/config .config
    . ./config-utils.sh
    . ./gamerslop-config.sh

  - |
    make -j1 olddefconfig

  install-commands:
  - |
    release=$(make -s kernelrelease)
    install -Dm644 "%{image-name}" "%{install-root}%{indep-libdir}/modules/${release}/vmlinuz"
    install -Dm644 System.map "%{install-root}%{indep-libdir}/modules/${release}/System.map"
    install -Dm644 .config "%{install-root}%{indep-libdir}/modules/${release}/config"
    ZSTD_CLEVEL=19 make INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install INSTALL_MOD_STRIP=1

  - |
    release=$(make -s kernelrelease)
    targetdir="%{install-root}%{prefix}/src/linux-${release}"

    rm "%{install-root}%{indep-libdir}/modules/${release}"/build

    to_copy=(
      Makefile
      Module.symvers
      .config
      "arch/%{src-arch}/include"
      "arch/%{src-arch}/Makefile"
      scripts
      include
    )
    if [ "$(scripts/config -s OBJTOOL)" = y ]; then
      to_copy+=(tools/objtool/objtool)
    fi
    for file in "${to_copy[@]}"
    do
      targetfile="${targetdir}/${file}"
      dir="$(dirname "${targetfile}")"
      [ -d "${dir}" ] || install -d "${dir}"
      cp -aT "${file}" "${targetfile}"
    done

    ln -sr "${targetdir}" "%{install-root}%{indep-libdir}/modules/${release}/build"

  - |
    %{install-extra}

  (?):
  - arch in ["aarch64", "riscv64"]:
      install-commands:
        (>):
        - |
          make -j1 INSTALL_DTBS_PATH='%{install-root}%{bootdir}/dtbs' dtbs_install

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bootdir}/System.map'
    overlap-whitelist:
    - "%{project_licensedir}"
    - "%{project_licensedir}/**"
