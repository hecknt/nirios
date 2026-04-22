kind: make

sources:
- kind: git_repo
  url: github:LuaJIT/LuaJIT.git
  track: v2.1
  ref: v2.1.ROLLING-333-g18b087cd2cd4ddc4a79782bf155383a689d5093d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install-args: >-
    PREFIX="%{prefix}" DESTDIR="%{install-root}" MULTILIB="lib/%{gcc_triplet}" install
