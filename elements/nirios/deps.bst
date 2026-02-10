kind: stack

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - freedesktop-sdk.bst:components/util-linux-full.bst
  - freedesktop-sdk.bst:components/linux.bst
  - freedesktop-sdk.bst:components/linux-firmware.bst
  - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/dbus.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/os-release.bst
  - freedesktop-sdk.bst:components/shadow.bst
  - freedesktop-sdk.bst:components/tzdata.bst
  - freedesktop-sdk.bst:components/iproute2.bst
  - freedesktop-sdk.bst:components/iputils.bst
  - freedesktop-sdk.bst:vm/base-filesystem.bst
  - freedesktop-sdk.bst:vm/config/journald.bst
  - freedesktop-sdk.bst:vm/config/networkd.bst
  - freedesktop-sdk.bst:vm/config/resolved.bst
  - freedesktop-sdk.bst:vm/config/useradd-ostree.bst
  - freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
  - freedesktop-sdk.bst:vm/config/sudo.bst
  - freedesktop-sdk.bst:components/usbutils.bst
  - freedesktop-sdk.bst:components/hosts.bst
  - freedesktop-sdk.bst:components/bash-config.bst
  - freedesktop-sdk.bst:components/bash-completion.bst
  - freedesktop-sdk.bst:components/findutils.bst
  - freedesktop-sdk.bst:components/sed.bst
  - freedesktop-sdk.bst:components/btrfs-progs.bst
  - freedesktop-sdk.bst:components/dosfstools.bst
  - freedesktop-sdk.bst:components/sudo.bst
  - freedesktop-sdk.bst:components/vim.bst
  - freedesktop-sdk.bst:components/polkit.bst

  - nirios/desktop/niri.bst
  - nirios/desktop/foot.bst
  - freedesktop-sdk.bst:components/flatpak.bst
  - freedesktop-sdk.bst:components/pipewire-daemon.bst
  - freedesktop-sdk.bst:vm/config/flathub.bst

  - nirios/cli/brew.bst
  - nirios/cli/brew-tarball.bst

  - nirios/desktop/jetbrains-mono.bst
  - nirios/desktop/jetbrains-mono-nerd-font.bst

  - freedesktop-sdk.bst:components/git-lfs.bst
  - freedesktop-sdk.bst:components/git.bst
  - freedesktop-sdk.bst:components/podman.bst
  - freedesktop-sdk.bst:components/containers-common.bst
  - freedesktop-sdk.bst:components/skopeo.bst
  - core/bootc.bst
  - core/bootc-config.bst
  - gnome-build-meta.bst:gnomeos-deps/distrobox.bst
  - gnome-build-meta.bst:gnomeos-deps/just.bst
  - gnome-build-meta.bst:gnomeos-deps/wl-clipboard.bst
