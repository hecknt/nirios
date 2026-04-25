kind: make

sources:
- kind: tar
  url: sourceforge:sourceforge/hdparm/hdparm-9.65.tar.gz
  ref: d14929f910d060932e717e9382425d47c2e7144235a53713d55a94f7de535a4b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  configure-commands:
  - |
    sed 's/INSTALL = install/LDFLAGS := -s ${LDFLAGS}\nINSTALL = install/' Makefile
  install-commands:
  - |
    %{make-install} sbindir=/usr/bin
  - |
    install -Dm0755 contrib/{idectl,ultrabayd} -t "%{install-root}%{bindir}"
  - |
    %{install-extra}

