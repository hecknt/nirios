kind: manual

sources:
- kind: local
  path: files/bootc-config

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/ostree/" prepare-root.conf
  - install -Dm644 -t "%{install-root}%{indep-libdir}/tmpfiles.d" 10-bootc.conf
  - "%{install-extra}"
