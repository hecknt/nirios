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
  - install -Dm0644 -t "%{install-root}%{sysconfdir}/profile.d" profile.d/*.sh

  - install -Dm644 bashrc '%{install-root}%{sysconfdir}/bashrc'
  - install -Dm644 profile '%{install-root}%{sysconfdir}/profile'
  - install -Dm644 dot-profile '%{install-root}%{sysconfdir}/skel/.profile'
  - install -Dm644 dot-bashrc '%{install-root}%{sysconfdir}/skel/.bashrc'

  - install -Dm644 dot-profile '%{install-root}/root/.profile'
  - install -Dm644 dot-bashrc '%{install-root}/root/.bashrc'
