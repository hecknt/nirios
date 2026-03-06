kind: make

sources:
- kind: git_repo
  url: github:thkukuk/lsb-release_os-release
  track: v*
  ref: v3.3-0-g129b84d0fa814d87c4ccbd8060ad5c29b869ea2d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/help2man.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  make-args: >-
    prefix="%{prefix}"
  make-install-args: >-
    prefix="%{install-root}%{prefix}" install
