kind: manual

sources:
- kind: git_repo
  url: github:zirconium-dev/zdots.git
  track: main
  ref: 967377443c64f03963f3016831c0232db5f9fc4a

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

