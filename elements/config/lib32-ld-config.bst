kind: manual

sources:
- kind: local
  path: files/lib32

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - install -Dm644 -t "%{install-root}%{sysconfdir}/ld.so.conf.d/" 00_lib32.conf
  - "%{install-extra}"
