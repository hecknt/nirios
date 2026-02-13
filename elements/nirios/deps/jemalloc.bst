kind: autotools

sources:
- kind: git_repo
  url: github:jemalloc/jemalloc
  track: "*"
  ref: 5.3.0-0-g54eaed1d8b56b1aa528be3bdd1877e59c56fa90c

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
