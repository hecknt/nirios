kind: make

sources:
- kind: git_repo
  url: github:hummer12007/brightnessctl.git
  track: "*"
  ref: 0.5.1-0-gc314e068268d3266c2a104fd073eee607e75d0c4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  make-args: ENABLE_SYSTEMD=1
