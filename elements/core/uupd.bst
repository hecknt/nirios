kind: manual

# uupd provides a vendors folder in their repo so I don't need to pull a thousand go modules manually! :D
sources:
- kind: git_repo
  url: github:ublue-os/uupd.git
  track: v*
  ref: v1.3.0-0-gb2be608e6f7dcf075cbb803ce9957025c3677020

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/go.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - |
    go build -v -o output/uupd
  install-commands:
  - |
    install -Dm0755 uupd.service -t "%{install-root}%{indep-libdir}/systemd/system"
    install -Dm0755 uupd-manual.service -t "%{install-root}%{indep-libdir}/systemd/system"
    install -Dm0755 uupd.timer -t "%{install-root}%{indep-libdir}/systemd/system"
    install -Dm0755 uupd.rules -t "%{install-root}%{sysconfdir}/polkit-1/rules.d"
    install -Dm0755 config.json "%{install-root}%{sysconfdir}/uupd"

    install -Dm0755 ./output/uupd -t "%{install-root}%{bindir}"
  - |
    %{install-extra}

