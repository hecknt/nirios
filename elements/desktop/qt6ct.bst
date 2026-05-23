kind: cmake

sources:
- kind: git_repo
  url: opencode:trialuser/qt6ct
  track: "*"
  ref: 0.11-0-g00823e41aa60e8fe266d5aee328e82ad1ad94348
- kind: patch_queue
  path: patches/qt6ct

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- deps/qt6-qtbase.bst

variables:
  cmake-local: >-
    -DCMAKE_BUILD_TYPE=Release
