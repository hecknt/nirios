kind: manual

sources:
- kind: docker
  url: ghcr:ublue-os/brew
  track: latest
  ref: f054cd8ca626975b098fe8795a3740ae8fc0dbff7dac64d7c06f96ac54a6ab95

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - cp -r system_files/usr/ "%{install-root}%{prefix}/"
  - cp -r system_files/etc/ "%{install-root}%{sysconfdir}/"
  - "%{install-extra}"
