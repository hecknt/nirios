kind: manual

sources:
# for tracking
- kind: git_repo
  url: github:ShadowBlip/OpenGamepadUI.git
  track: v*
  ref: v0.45.0-0-gd0b4ab8514ec54b4c1904455af766d358e5bcf82
- kind: tar
  url: github_files:ShadowBlip/OpenGamepadUI/releases/download/v0.45.0/opengamepadui.tar.gz
  ref: bb12b6f04be8d2f1763923f8e1ff1ff3718e3a6f751fbfb209507319d8cdbf57

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

build-depends:
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/sed.bst

runtime-depends:
- freedesktop-sdk.bst:extensions/vulkaninfo/vulkan-tools.bst
- freedesktop-sdk.bst:components/xorg-lib-xau.bst
- freedesktop-sdk.bst:components/xorg-lib-xdmcp.bst
- gamerslop/gamescope.bst
- gamerslop/inputplumber.bst

variables:
  strip-binaries: ""

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      setcap 'cap_sys_nice=eip' "${sysroot}%{datadir}/opengamepadui/opengamepad-ui.x86_64"

config:
  install-commands:
  - |
    make install PREFIX=%{install-root}%{prefix} INSTALL_PREFIX=%{prefix}
  - |
    %{install-extra}
