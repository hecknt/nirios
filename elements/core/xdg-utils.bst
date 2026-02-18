kind: autotools

sources:
- kind: git_repo
  url: freedesktop:xdg/xdg-utils
  track: 'v*.*.*'
  ref: v1.2.1-0-g356c380ad6fecc9ce6bea1f6a77986ba67402c80

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/docbook-xml.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/xmlto.bst
- deps/lynx.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

