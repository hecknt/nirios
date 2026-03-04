kind: stack

# Basic functional system + cli utilities
depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - freedesktop-sdk.bst:components/util-linux-full.bst
  - core/linux.bst
  - freedesktop-sdk.bst:components/linux-firmware.bst
  - freedesktop-sdk.bst:components/wireless-regdb-bin.bst
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/dbus.bst
  - freedesktop-sdk.bst:components/lvm2.bst
  - freedesktop-sdk.bst:components/dracut.bst
  - freedesktop-sdk.bst:components/shadow.bst
  - freedesktop-sdk.bst:components/procps.bst
  - freedesktop-sdk.bst:components/tzdata.bst
  - freedesktop-sdk.bst:components/iproute2.bst
  - freedesktop-sdk.bst:components/iputils.bst
  - freedesktop-sdk.bst:components/openssh.bst
  - freedesktop-sdk.bst:components/openssh-systemd.bst
  - freedesktop-sdk.bst:vm/base-filesystem.bst
  - freedesktop-sdk.bst:vm/config/journald.bst
  - freedesktop-sdk.bst:vm/config/networkd.bst
  - freedesktop-sdk.bst:vm/config/resolved.bst
  - freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
  - freedesktop-sdk.bst:vm/config/sudo.bst
  - freedesktop-sdk.bst:components/wpa-supplicant.bst
  - freedesktop-sdk.bst:components/usbutils.bst
  - freedesktop-sdk.bst:components/hosts.bst
  - freedesktop-sdk.bst:components/bash-config.bst
  - freedesktop-sdk.bst:components/bash-completion.bst
  - freedesktop-sdk.bst:components/findutils.bst
  - freedesktop-sdk.bst:components/diffutils.bst
  - freedesktop-sdk.bst:components/wget2.bst
  - freedesktop-sdk.bst:components/sed.bst
  - freedesktop-sdk.bst:components/less.bst
  - freedesktop-sdk.bst:components/which.bst
  - freedesktop-sdk.bst:components/man-db.bst
  - freedesktop-sdk.bst:components/man-pages.bst
  - freedesktop-sdk.bst:components/dmidecode.bst
  - freedesktop-sdk.bst:components/btrfs-progs.bst
  - freedesktop-sdk.bst:components/xfsprogs.bst
  - freedesktop-sdk.bst:components/erofs-utils.bst
  - freedesktop-sdk.bst:components/dosfstools.bst
  - freedesktop-sdk.bst:components/pciutils.bst
  - freedesktop-sdk.bst:components/sudo.bst
  - freedesktop-sdk.bst:components/vim.bst
  - freedesktop-sdk.bst:components/polkit.bst
  - freedesktop-sdk.bst:components/steam-devices.bst
  - freedesktop-sdk.bst:extensions/codecs-extra/ffmpeg.bst
  - freedesktop-sdk.bst:components/git-lfs.bst
  - freedesktop-sdk.bst:components/git.bst

  - gnome-build-meta.bst:core-deps/power-profiles-daemon.bst
  - gnome-build-meta.bst:gnomeos-deps/distrobox.bst
  - gnome-build-meta.bst:gnomeos-deps/toolbox.bst
  - gnome-build-meta.bst:gnomeos-deps/just.bst
  - gnome-build-meta.bst:gnomeos-deps/android-udev-rules.bst
  - gnome-build-meta.bst:gnomeos-deps/udev-hide-usr.bst
  - gnome-build-meta.bst:gnomeos-deps/hidraw-udev.bst

  - core/os-release.bst
  - core/system-release.bst
  - config/systemd/zirconium.bst
  - cli/brew.bst
  - cli/brew-tarball.bst

