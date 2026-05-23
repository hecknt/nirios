kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: master
  ref: freedesktop-sdk-25.08rc.3-1909-g6d598b531852101943d2a74210995828b120252b
- kind: patch_queue
  path: patches/freedesktop-sdk

config:
  options:
    target_arch: '%{arch}'
    (?):
    - arch == 'x86_64':
        bootstrap_build_arch: 'x86_64'
    - arch == 'aarch64':
        bootstrap_build_arch: 'aarch64'
    - arch == "ppc64le":
        bootstrap_build_arch: "ppc64le"
    - arch == "riscv64":
        bootstrap_build_arch: "x86_64"

  overrides:
    components/at-spi2-core.bst: gnome-build-meta.bst:sdk/at-spi2-core.bst
    components/cairo.bst: gnome-build-meta.bst:sdk/cairo.bst
    components/fcitx5-gtk.bst: gnome-build-meta.bst:sdk/fcitx5-gtk.bst
    components/gcab.bst: gnome-build-meta.bst:sdk/gcab.bst
    components/gdk-pixbuf.bst: gnome-build-meta.bst:sdk/gdk-pixbuf.bst
    components/glib-networking.bst: gnome-build-meta.bst:sdk/glib-networking.bst
    components/glib.bst: gnome-build-meta.bst:sdk/glib.bst
    components/gobject-introspection.bst: gnome-build-meta.bst:sdk/gobject-introspection.bst
    components/python3-gi-docgen.bst: gnome-build-meta.bst:sdk/gi-docgen.bst
    components/graphene.bst: gnome-build-meta.bst:sdk/graphene.bst
    components/gsettings-desktop-schemas.bst: gnome-build-meta.bst:sdk/gsettings-desktop-schemas.bst
    components/gtk-doc.bst: gnome-build-meta.bst:sdk/gtk-doc.bst
    components/gtk3.bst: gnome-build-meta.bst:sdk/gtk+-3.bst
    components/libibus.bst: gnome-build-meta.bst:sdk/libibus.bst
    components/json-glib.bst: gnome-build-meta.bst:sdk/json-glib.bst
    components/libnotify.bst: gnome-build-meta.bst:sdk/libnotify.bst
    components/librsvg.bst: gnome-build-meta.bst:sdk/librsvg.bst
    components/libsoup.bst: gnome-build-meta.bst:sdk/libsoup.bst
    components/pango.bst: gnome-build-meta.bst:sdk/pango.bst
    components/pygobject.bst: gnome-build-meta.bst:sdk/pygobject.bst
    components/vala.bst: gnome-build-meta.bst:sdk/vala.bst
    components/libsecret.bst: gnome-build-meta.bst:sdk/libsecret.bst

    # While freedesktop-sdk provides a zenity element, it's the
    # gtk3 version which we don't want, and we also override it
    # to a void element to avoid zenity ending up in our Runtime.
    # However mutter depends on zenity when building the tests,
    # so we will add it to core-deps, oci images and gnomeos but
    # not the Flatpak runtime, as its easy to bundle when needed.
    components/zenity.bst: gnome-build-meta.bst:void/zenity.bst

    components/linux-module-cert.bst: core/linux-module-cert.bst
    components/_private/systemd-base.bst: gnome-build-meta.bst:core-deps/systemd-base.bst
    components/systemd.bst: gnome-build-meta.bst:core-deps/systemd.bst
    components/systemd-ukify.bst: gnome-build-meta.bst:core-deps/systemd-ukify.bst
    components/systemd-libs.bst: gnome-build-meta.bst:core-deps/systemd-libs.bst

    # swick has signed up for dealing with all the issues from building these from git
    components/_private/xdg-desktop-portal-base.bst: gnome-build-meta.bst:core-deps/xdg-desktop-portal-base.bst
    components/xdg-desktop-portal.bst: gnome-build-meta.bst:core-deps/xdg-desktop-portal.bst

    components/bash-config.bst: config/bash-config.bst
