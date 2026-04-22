kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gamerslop/gamescope-session.bst
- gamerslop/steam.bst

sources:
- kind: git_repo
  url: github:OpenGamingCollective/gamescope-session-steam.git
  track: main
  ref: 72df08d154fefb6354f6bb1a8d8cf587e86ee227

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0755 -t "%{install-root}%{bindir}" "usr/bin/steam-http-loader"
    install -Dm0755 -t "%{install-root}%{bindir}" "usr/bin/steamos-select-branch"
    install -Dm0755 -t "%{install-root}%{bindir}" "usr/bin/steamos-session-select"

    install -Dm0644 -t "%{install-root}%{datadir}/applications" "usr/share/applications/steam_http_loader.desktop"
    install -Dm0644 -t "%{install-root}%{datadir}/applications" "usr/share/applications/gamescope-mimeapps.list"

    install -Dm0755 -t "%{install-root}%{datadir}/gamescope-session-plus/sessions.d" "usr/share/gamescope-session-plus/sessions.d/steam"
    install -Dm0644 -t "%{install-root}%{datadir}/polkit-1/actions" "usr/share/polkit-1/actions/org.chimeraos.update.policy"

    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamescope-session-steam.desktop"
    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamescope-session.desktop"
  - |
    %{install-extra}
