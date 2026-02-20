kind: manual

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

environment:
  NAME: "Zirconium Hawaii"
  HOME_URL: "https://zirconium.gay"
  DOCUMENTATION_URL: "https://github.com/zirconium-dev/zirconium-hawaii"
  SUPPORT_URL: "https://github.com/zirconium-dev/zirconium-hawaii/issues"
  ID: "zirconium-hawaii"
  # This variable should be updated along with the version of Freedesktop-SDK.
  VERSION: "25.08"

config:
  build-commands:
    - mkdir -p %{install-root}%{indep-libdir}/
    - |
      cat >"%{install-root}%{indep-libdir}/os-release" <<EOF
      NAME="${NAME}"
      PRETTY_NAME="${NAME} ${VERSION}"
      VERSION="${VERSION}"
      ID="${ID}"
      ID_LIKE="org.freedesktop.platform"
      VERSION_CODENAME="Hawaii"
      CPE_NAME="cpe:/o:zirconium-dev:zirconium-hawaii"
      HOME_URL="${HOME_URL}"
      SUPPORT_URL="${SUPPORT_URL}"
      BUG_REPORT_URL="${SUPPORT_URL}"
      DOCUMENTATION_URL="${DOCUMENTATION_URL}"
      LOGO=img-logo-icon
      DEFAULT_HOSTNAME="zirconium"
      EOF
      mkdir -p %{install-root}%{sysconfdir}/
      ln -sf ../usr/lib/os-release %{install-root}%{sysconfdir}/os-release
