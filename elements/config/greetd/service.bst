# Simply enables greetd.service in systemd.
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
  - install -Dm644 80-greetd.preset -t "%{install-root}%{indep-libdir}/systemd/system-preset"
  - "%{install-extra}"
