kind: autotools

sources:
- kind: git_repo
  url: kernel:network/ethtool/ethtool.git
  track: v*
  ref: v6.19-0-gf6f1f28798c82fb929e33ce75675e68d08f221e3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libmnl.bst
