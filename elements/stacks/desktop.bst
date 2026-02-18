kind: stack

depends:
  - desktop/niri.bst
  - desktop/quickshell.bst
  - desktop/dankmaterialshell.bst
  - desktop/foot.bst
  - cli/chezmoi.bst
  - core/greetd.bst
  - desktop/xdg-terminal-exec.bst
  - config/pam/archlinux-pam-configs.bst
  - config/greetd/service.bst
  - config/greetd/dms.bst
  - freedesktop-sdk.bst:components/xwayland.bst
  - freedesktop-sdk.bst:components/flatpak.bst
  - freedesktop-sdk.bst:components/pipewire-daemon.bst
  - freedesktop-sdk.bst:vm/config/flathub.bst
  - gnome-build-meta.bst:gnomeos-deps/wl-clipboard.bst
  - gnome-build-meta.bst:sdk/xwayland-satellite.bst
  - gnome-build-meta.bst:core-deps/xdg-desktop-portal-gnome.bst
  - gnome-build-meta.bst:core/nautilus.bst

  - desktop/fonts/jetbrains-mono.bst
  - desktop/fonts/jetbrains-mono-nerd-font.bst
