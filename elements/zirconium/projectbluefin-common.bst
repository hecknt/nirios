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
  ref: v2026.04-39-g0c43c600e94927de428b67308ee1a560e11a8efc

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

