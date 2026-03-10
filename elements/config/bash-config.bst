kind: manual

sources:
- kind: local
  path: files/bash-config

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - install -Dm0644 -t "%{install-root}%{sysconfdir}/profile.d" *.sh
  - "%{install-extra}"
