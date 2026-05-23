kind: manual

sources:
- kind: git_repo
  url: github:zirconium-dev/zdots.git
  track: main
  ref: 183afd39c87c31a1ddc4959220966d30ebf9d95d

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- cli/chezmoi.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{datadir}/zirconium"
    cp -r $(pwd) "%{install-root}%{datadir}/zirconium/zdots"
  - |
    %{install-extra}

