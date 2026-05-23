kind: autotools

sources:
- kind: git_repo
  url: github:jemalloc/jemalloc
  track: "*"
  ref: 5.3.1-0-g81034ce1f1373e37dc865038e1bc8eeecf559ce8
- kind: patch_queue
  path: patches/jemalloc

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
