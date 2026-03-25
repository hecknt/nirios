kind: manual

sources:
- kind: local
  path: files/default-icon-config

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:sdk/adwaita-icon-theme.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 adwaita.theme "%{install-root}%{datadir}/icons/default/index.theme"
  - "%{install-extra}"
