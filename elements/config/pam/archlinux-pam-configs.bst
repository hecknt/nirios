# This includes a couple of pam configs that are taken directly from Arch Linux's pambase package.
# https://gitlab.archlinux.org/archlinux/packaging/packages/pambase
kind: manual

public:
  bst:
    overlap-whitelist:
      - /etc/pam.d/*

sources:
- kind: git_repo
  url: archlinux_gitlab:archlinux/packaging/packages/pambase
  track: main
  ref: 20250719-1-3-g409966a02dca4d12c87eea910c04dfe5e7376f82

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}%{sysconfdir}/pam.d" system-login system-local-login system-auth
  - "%{install-extra}"
