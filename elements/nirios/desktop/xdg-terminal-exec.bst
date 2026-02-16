kind: make

sources:
- kind: git_repo
  url: github:Vladimir-csp/xdg-terminal-exec.git
  track: v*
  ref: v0.14.1-0-gaeb3ef9360eda035b80e44baa2e74fb46fc691e3

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
