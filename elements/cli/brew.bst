kind: manual

sources:
- kind: git_repo
  url: github:ublue-os/brew.git
  track: main
  ref: a34659d6bd756f0a54557f4de061a4ed5c3e4bd5

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - cp -r system_files/usr/ "%{install-root}%{prefix}/"
  - cp -r system_files/etc/ "%{install-root}%{sysconfdir}/"
  - "%{install-extra}"
