kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gamerslop/gamescope-session.bst
- gamerslop/opengamepadui.bst

sources:
- kind: git_repo
  url: github:OpenGamingCollective/gamescope-session-opengamepadui.git
  track: main
  ref: 88087a086ab732211c466b41f5d64229ce51c050

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0755 -t "%{install-root}%{bindir}" "usr/bin/opengamepadui-session-select"

    install -Dm0755 -t "%{install-root}%{datadir}/gamescope-session-plus/sessions.d" "usr/share/gamescope-session-plus/sessions.d/opengamepadui"

    install -Dm0644 -t "%{install-root}%{datadir}/polkit-1/actions" "usr/share/polkit-1/actions/org.shadowblip.opengamepadui-session.policy"

    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamescope-session-opengamepadui.desktop"
    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/opengamepadui-session.desktop"
  - |
    %{install-extra}
