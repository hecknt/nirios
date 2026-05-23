kind: manual

sources:
- kind: local
  path: files/greetd-config

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- core/greetd.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 agreety.toml "%{install-root}%{sysconfdir}/greetd/config.toml"
  - "%{install-extra}"
