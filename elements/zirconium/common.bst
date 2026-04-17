kind: manual

public:
  bst:
    overlap-whitelist:
    - /etc/containers/policy.json
    - /usr/share/xdg-terminal-exec/xdg-terminals.list

# This is pulling from zirconium-dev/zirconium for various services and shell configurations.
sources:
- kind: git_repo
  url: github:zirconium-dev/zirconium.git
  track: main
  ref: 1e1c6d6c39efd7c5c01afc67ad22ed54c79e95d6

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/containers-common.bst
- zirconium/projectbluefin-common.bst
- cli/hyfetch.bst
- cli/gum.bst
- cli/fzf.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{datadir}/zirconium"
    cp -r mkosi.extra/usr/share/zirconium/./ "%{install-root}%{datadir}/zirconium/"

    # executables!
    install -Dm0755 mkosi.extra/usr/bin/* -t "%{install-root}%{bindir}"
    install -Dm0755 mkosi.profiles/bootc-ostree/mkosi.extra/usr/bin/* -t "%{install-root}%{bindir}"

    # blehhh
    install -Dm0644 mkosi.extra/usr/share/flatpak/preinstall.d/*.preinstall -t "%{install-root}%{datadir}/flatpak/preinstall.d"
    install -Dm0644 mkosi.extra/usr/share/fish/vendor_conf.d/*.fish -t "%{install-root}%{datadir}/fish/vendor_conf.d"
    install -Dm0644 mkosi.extra/usr/share/pki/containers/*.pub -t "%{install-root}%{datadir}/pki/containers"
    install -Dm0644 cosign.pub "%{install-root}%{datadir}/pki/containers/zirconium.pub"
    install -Dm0644 mkosi.extra/usr/share/factory/etc/profile.d/*.sh -t "%{install-root}%{sysconfdir}/profile.d"
    install -Dm0644 mkosi.extra/usr/share/xdg-terminal-exec/xdg-terminals.list -t "%{install-root}%{datadir}/xdg-terminal-exec"
    cp -r "mkosi.extra/usr/share/factory/etc/containers" "%{install-root}%{sysconfdir}/containers"

    # pam stuff
    install -Dm0644 mkosi.extra/usr/share/greetd/greetd-spawn.pam_env.conf -t "%{install-root}%{datadir}/greetd"
    install -Dm0644 mkosi.extra/usr/lib/pam.d/greetd-spawn -t "%{install-root}%{indep-libdir}/pam.d"

    # systemd services / tmpfiles
    install -Dm0644 mkosi.profiles/bootc-ostree/mkosi.extra/usr/lib/systemd/system/rechunker-group-fix.service -t "%{install-root}%{indep-libdir}/systemd/system"
    install -Dm0644 mkosi.extra/usr/lib/systemd/user/chezmoi-*.{service,timer} -t "%{install-root}%{indep-libdir}/systemd/user"
    install -Dm0644 mkosi.extra/usr/lib/tmpfiles.d/99-dms-greeter.conf -t "%{install-root}%{indep-libdir}/tmpfiles.d"

    # FIXME: uncomment this when we use a release of flatpak with `flatpak preinstall` support
    # install -Dm0644 "mkosi.extra/usr/lib/systemd/system/flatpak-preinstall.service" -t "%{install-root}%{indep-libdir}/systemd/system"
  - |
    %{install-extra}

