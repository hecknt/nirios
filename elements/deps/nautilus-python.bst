kind: meson

sources:
- kind: git_repo
  url: gnome:nautilus-python.git
  track: "*"
  exclude:
  - "*beta*"
  - "*rc*"
  - "*alpha*"
  ref: 4.1.0-0-g52fe5a0339065aa5461075c53002b1534b590188

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/python3.bst
- gnome-build-meta.bst:sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:core/nautilus.bst
