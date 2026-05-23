kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gamerslop/gamescope-session-steam.bst
- gamerslop/opengamepadui.bst

sources:
- kind: git_repo
  url: github:OpenGamingCollective/gamescope-session-ogui-steam.git
  track: main
  ref: fbdc7682f39088b4fe480a9285808ca81b3f9d03

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0755 -t "%{install-root}%{datadir}/gamescope-session-plus/sessions.d" "usr/share/gamescope-session-plus/sessions.d/ogui-steam"

    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamescope-session-ogui-steam.desktop"
    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamescope-session-steam-plus.desktop"
    install -Dm0644 -t "%{install-root}%{datadir}/wayland-sessions" "usr/share/wayland-sessions/gamepadui-with-qam-session.desktop"
  - |
    %{install-extra}
