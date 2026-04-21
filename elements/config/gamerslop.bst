kind: manual

sources:
- kind: local
  path: files/gamerslop-config

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - cp -ra . "%{install-root}/"
  - "%{install-extra}"
