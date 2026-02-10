kind: meson

sources:
- kind: git_repo
  url: codeberg:dnkl/tllist.git
  track: "*"
  ref: 1.1.0-0-g8dcb0725c73eee9e350f41a921faf0bcd2ab9920

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
