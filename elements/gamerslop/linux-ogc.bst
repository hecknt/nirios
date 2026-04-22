# Based off of freedesktop-sdk.bst:components/linux.bst
kind: make
description: Linux kernel with patches from OpenGamingCollective applied (gamerslop kernel)

sources:
- kind: git_repo
  url: github:OpenGamingCollective/linux.git
  track: "v*-ogc1"
  ref: v6.19.11-ogc1-0-g5d91aaf45107656fcb4d4ccd754e01d99e9f94fd
- kind: git_repo
  directory: ogc-kernel-packages
  url: github:OpenGamingCollective/kernel-packages.git
  track: "v*-ogc1"
  ref: v6.19.11-ogc1-0-g5e2fd3d613c9b6095f4d9c2dbed99cde371fe428
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
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/pahole.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/zstd.bst
# - filename: components/linux-module-cert.bst
#   strict: true

variables:
  bootdir: /boot
  kernel_arch: '%{arch}'
  src-arch: '%{kernel_arch}'
  image-name: '$(make -s image_name)'
  extra-version: '-ogc'
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
    # Add '-ogc' to the end of the kernel version
    sed -i 's/^EXTRAVERSION.*/EXTRAVERSION = %{extra-version}/' Makefile

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
