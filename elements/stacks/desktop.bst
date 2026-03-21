kind: stack

depends:
  - desktop/niri.bst
  - desktop/quickshell.bst
  - desktop/dankmaterialshell.bst
  - desktop/foot.bst
  - desktop/qt6ct.bst
  - cli/chezmoi.bst
  - core/greetd.bst
  - core/xdg-utils.bst
  - desktop/iio-niri.bst
  - desktop/xdg-terminal-exec.bst
  - config/pam/archlinux-pam-configs.bst
  - config/pam/greetd.bst
  - config/greetd/service.bst
  - config/greetd/dms.bst
  - config/default-icons/adwaita.bst
  - config/lib32-ld-config.bst
  - freedesktop-sdk.bst:components/desktop-file-utils.bst
  - freedesktop-sdk.bst:components/xwayland.bst
  - freedesktop-sdk.bst:components/flatpak.bst
  - freedesktop-sdk.bst:components/pipewire-daemon.bst
  - freedesktop-sdk.bst:vm/config/flathub.bst
  - gnome-build-meta.bst:gnomeos-deps/wl-clipboard.bst
  - gnome-build-meta.bst:gnomeos-deps/fprintd.bst
  - gnome-build-meta.bst:sdk/xwayland-satellite.bst
  - gnome-build-meta.bst:core-deps/xdg-desktop-portal-gnome.bst
  - gnome-build-meta.bst:core-deps/xdg-desktop-portal-gtk.bst
  - gnome-build-meta.bst:core-deps/boltd.bst
  - gnome-build-meta.bst:core/gnome-keyring.bst
  - gnome-build-meta.bst:core/nautilus.bst
  - desktop/xdg-terminal-exec-nautilus.bst
  - gnome-build-meta.bst:core/gvfs-daemon.bst
  - gnome-build-meta.bst:sdk/gvfs-client.bst
  - gnome-build-meta.bst:sdk/pinentry.bst

  - freedesktop-sdk.bst:components/noto-emoji.bst
  - gnome-build-meta.bst:gnomeos-deps/noto-cjk.bst
  - gnome-build-meta.bst:sdk/cantarell-fonts.bst
  - gnome-build-meta.bst:sdk/adwaita-fonts.bst
  - desktop/fonts/jetbrains-mono.bst
  - desktop/fonts/jetbrains-mono-nerd-font.bst
  - desktop/fonts/maple-mono.bst

  - freedesktop-sdk.bst:components/vulkan-icd-loader.bst
  - freedesktop-sdk.bst:components/compat-vulkan-link.bst
