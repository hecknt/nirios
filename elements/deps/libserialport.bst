kind: autotools

sources:
- kind: git_repo
  url: sigrok:libserialport.git
  track: libserialport-*
  ref: libserialport-0.1.2-0-gbc8f88ef3399b76da7992a99badebada419d0e19

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
