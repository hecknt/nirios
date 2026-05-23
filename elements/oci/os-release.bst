kind: manual

build-depends:
  - core/os-release.bst
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

environment:
  IMAGE_VERSION: "%{image-version}"
  ZIRCONIUM_COMMIT: "%{commit}"

config:
  install-commands:
    - |
      install -Dm0644 %{indep-libdir}/os-release -t %{install-root}%{indep-libdir}
      cat >> "%{install-root}%{indep-libdir}/os-release" <<EOF
      IMAGE_VERSION="${IMAGE_VERSION}"
      ZIRCONIUM_COMMIT="${ZIRCONIUM_COMMIT}"
      EOF

    - |
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/os-release %{install-root}%{sysconfdir}/os-release
