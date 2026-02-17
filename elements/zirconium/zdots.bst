kind: manual

sources:
- kind: git_repo
  url: github:zirconium-dev/zdots.git
  track: main
  ref: d2a77af8f84d41087e138a09129b6032720184c9

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- cli/chezmoi.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{prefix}/share/zirconium"
    cp -r $(pwd) "%{install-root}%{prefix}/share/zirconium/zdots"
  - |
    %{install-extra}

