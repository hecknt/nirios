# Adds systemd presets for Zirconium
kind: manual

sources:
- kind: local
  path: files/systemd-zirconium

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- zirconium/common.bst
- cli/chezmoi.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 01-zirconium.preset -t "%{install-root}%{indep-libdir}/systemd/user-preset"
  - "%{install-extra}"
