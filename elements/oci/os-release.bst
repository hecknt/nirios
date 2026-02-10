kind: manual

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

environment:
  IMAGE_TAG: "latest"
  IMAGE_PRETTY_NAME: "Bluefin"
  HOME_URL: "https://projectbluefin.io"
  DOCUMENTATION_URL: "https://docs.projectbluefin.io"
  SUPPORT_URL: "https://github.com/projectbluefin/dakota/issues"
  BUG_SUPPORT_URL: "https://github.com/projectbluefin/dakota/issues"
  CODE_NAME: "Dakotaraptor"
  ID: "bluefin-dakota"

config:
  build-commands:
    - mkdir -p %{install-root}%{indep-libdir}/
    - |
      cat >"%{install-root}%{indep-libdir}/os-release" <<EOF
      NAME="${IMAGE_PRETTY_NAME}"
      ID="${ID}"
      ID_LIKE="org.gnome.os"
      VERSION="${IMAGE_TAG}"
      VERSION_CODENAME="${CODE_NAME}"
      PRETTY_NAME="${IMAGE_PRETTY_NAME}"
      BUG_REPORT_URL="${BUG_SUPPORT_URL}"
      HOME_URL="${HOME_URL}"
      DOCUMENTATION_URL="${DOCUMENTATION_URL}"
      SUPPORT_URL="${SUPPORT_URL}"
      LOGO=img-logo-icon
      DEFAULT_HOSTNAME="bluefin"
      EOF
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/os-release %{install-root}%{sysconfdir}/os-release
      EOF
