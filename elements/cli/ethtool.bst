kind: autotools

sources:
- kind: git_repo
  url: kernel:network/ethtool/ethtool.git
  track: v*
  ref: v7.0-0-g2063bf7e373fac71ca977337b87d21cc3ecf2f11

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libmnl.bst
