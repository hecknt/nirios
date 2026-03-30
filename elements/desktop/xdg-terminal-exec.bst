kind: make

sources:
- kind: git_repo
  url: github:Vladimir-csp/xdg-terminal-exec.git
  track: v*
  ref: v0.14.2-0-ge675f61c1fa1175b1295f9d2ed5338f73a2cb679

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/scdoc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gawk.bst

variables:
  make-args: >-
    prefix="%{prefix}"
  make-install-args: >-
    prefix="%{install-root}%{prefix}" install

config:
  install-commands:
  - |
    make %{make-install-args}
    mkdir -p "%{install-root}%{docdir}/xdg-terminal-exec"
    mv "%{install-root}%{datadir}/xdg-terminal-exec/xdg-terminals.list" "%{install-root}%{docdir}/xdg-terminal-exec"
