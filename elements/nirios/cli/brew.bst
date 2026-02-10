kind: manual

sources:
  - kind: git_repo
    url: github:ublue-os/brew.git
    track: main
    ref: eddbb1a432c5a4b3d9ef2d524ef23c13f7855e06

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
    - cp -r system_files/usr/ "%{install-root}%{prefix}/"
    - cp -r system_files/etc/ "%{install-root}%{sysconfdir}/"
    - "%{install-extra}"
