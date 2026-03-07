kind: manual

public:
  bst:
    overlap-whitelist:
    - /etc/containers/policy.json

# This is pulling from zirconium-dev/zirconium for various services and shell configurations.
sources:
- kind: git_repo
  url: github:zirconium-dev/zirconium.git
  track: main
  ref: 04c29ffcdc6cb89783acab0ab02b92b21cd42072

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/containers-common.bst
- zirconium/projectbluefin-common.bst
- cli/hyfetch.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{prefix}/share/zirconium"
    cp -r system_files/usr/share/zirconium/./ "%{install-root}%{prefix}/share/zirconium/"

    # executables!
    install -Dm0755 system_files/usr/bin/* -t "%{install-root}%{bindir}"

    # blehhh
    install -Dm0644 system_files/usr/share/flatpak/preinstall.d/*.preinstall -t "%{install-root}%{prefix}/share/flatpak/preinstall.d"
    install -Dm0644 system_files/usr/share/fish/vendor_conf.d/*.fish -t "%{install-root}%{prefix}/share/fish/vendor_conf.d"
    install -Dm0644 system_files/usr/share/pki/containers/*.pub -t "%{install-root}%{prefix}/share/pki/containers"
    install -Dm0644 cosign.pub "%{install-root}%{prefix}/share/pki/containers/zirconium.pub"
    install -Dm0644 system_files/etc/profile.d/*.sh -t "%{install-root}%{sysconfdir}/profile.d"
    install -Dm0644 system_files/etc/xdg/* -t "%{install-root}%{sysconfdir}/xdg"
    cp -r "system_files/etc/containers" "%{install-root}%{sysconfdir}/containers"

    # pam stuff
    install -Dm0644 system_files/usr/share/greetd/greetd-spawn.pam_env.conf -t "%{install-root}%{prefix}/share/greetd"
    install -Dm0644 system_files/usr/lib/pam.d/greetd-spawn -t "%{install-root}%{indep-libdir}/pam.d"

    # systemd services
    install -Dm0644 system_files/usr/lib/systemd/system/rechunker-group-fix.service -t "%{install-root}%{indep-libdir}/systemd/system"
    install -Dm0644 system_files/usr/lib/systemd/user/chezmoi-*.{service,timer} -t "%{install-root}%{indep-libdir}/systemd/user"

    # FIXME: uncomment this when we use a release of flatpak with `flatpak preinstall` support
    # install -Dm0644 "system_files/usr/lib/systemd/system/flatpak-preinstall.service" -t "%{install-root}%{indep-libdir}/systemd/system"
  - |
    %{install-extra}

