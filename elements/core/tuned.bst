kind: manual

sources:
- kind: git_repo
  url: github:redhat-performance/tuned.git
  track: "v*.*.*"
  exclude:
  - "*-rc*"
  ref: v2.27.0-0-g38d4414a85112d5d296c84a4058a0901f5c497be

build-depends:
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
# gtk+3 is here because if it isn't here, then desktop-file-utils causes the build environment to fail to start. this is... weird. but i won't question it.
- gnome-build-meta.bst:sdk/gtk+-3.bst

depends:
- freedesktop-sdk.bst:components/perf.bst
- freedesktop-sdk.bst:components/gawk.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- gnome-build-meta.bst:sdk/pygobject.bst
- deps/python3-configureobj.bst
- deps/python3-linux-procfs.bst
- deps/python3-pyinotify.bst
- deps/python3-pyudev.bst
- cli/ethtool.bst
- cli/hdparm.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    make DESTDIR="%{install-root}" SBINDIR="%{bindir}" install
    rm -rf "%{install-root}"/{run,var}

  - |
    python -m compileall -d %{indep-libdir} "%{install-root}%{indep-libdir}"
    python -O -m compileall -d %{indep-libdir} "%{install-root}%{indep-libdir}"

  # power-profiles-daemon compat
  - |
    make DESTDIR="%{install-root}" SBINDIR="%{bindir}" install-ppd

  # remove unnecessary gui apps
  - |
    rm -v "%{install-root}%{bindir}"/tuned-gui
    rm -rv "%{install-root}%{indep-libdir}"/python*/site-packages/tuned/gtk
    rm -rv "%{install-root}%{datadir}"/tuned/ui
    rm -v "%{install-root}%{datadir}"/icons/hicolor/scalable/apps/tuned.svg
    rm -v "%{install-root}%{datadir}"/applications/tuned-gui.desktop
