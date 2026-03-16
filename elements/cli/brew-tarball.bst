kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- cli/brew.bst

sources:
- kind: remote
  url: github_files:ublue-os/packages/releases/download/homebrew-2026-03-10-01-31-26/homebrew-x86_64.tar.zst
  ref: 644d701fdde130c48ca7b47b2b1af28320819c4176f20c3c208719b3e4dd5c29
variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    mkdir -p "%{install-root}%{datadir}"
    mv homebrew-x86_64.tar.zst "%{install-root}%{datadir}/homebrew.tar.zst"
  - |
    %{install-extra}
