kind: make

sources:
- kind: git_repo
  url: steamos-gitlab:holo/powerbuttond.git
  track: v*
  ref: v4.2-0-g9392e68883fdb0c40bc01ab39ae75c83a541e413

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/gcc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/libevdev.bst
