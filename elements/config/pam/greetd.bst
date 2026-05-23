kind: manual

public:
  bst:
    overlap-whitelist:
      - /etc/pam.d/*

sources:
- kind: local
  path: files/pam-configs

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- core/greetd.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}%{sysconfdir}/pam.d" greetd
  - "%{install-extra}"
