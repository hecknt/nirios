kind: manual

# public:
#   bst:
#     overlap-whitelist:
#     - /etc/containers/policy.json

# This is pulling from projectbluefin/common for various configurations.
sources:
- kind: git_repo
  url: github:projectbluefin/common.git
  track: main
  ref: v2026.03-13-g4170fe6ee81bfbe80f40adac718e8c056d59a320

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{datadir}/ublue-os"

    install -Dm0755 system_files/shared/usr/bin/luks* -t "%{install-root}%{bindir}"
    cp -ra system_files/shared/usr/share/ublue-os/just "%{install-root}%{datadir}/ublue-os/just"
  - |
    %{install-extra}

