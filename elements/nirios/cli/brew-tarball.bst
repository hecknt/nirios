kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- nirios/cli/brew.bst

sources:
- kind: remote
  url: github_files:ublue-os/packages/releases/download/homebrew-2026-02-10-01-32-18/homebrew-x86_64.tar.zst
  ref: 85df81af7851f56e8514b9c2207ed923928c0ee5638800a887c4707c519ff999
variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    mkdir -p "%{install-root}%{datadir}"
    mv homebrew-x86_64.tar.zst "%{install-root}%{datadir}/homebrew.tar.zst"
  - |
    %{install-extra}
