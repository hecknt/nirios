kind: junction

sources:
- kind: git_repo
  url: gnome:gnome-build-meta.git
  track: master
  ref: 49-branchpoint-677-gef2194e026c5a9c41340f07a7a35ccab21750054
- kind: patch_queue
  path: patches/gnome-build-meta

config:
  overrides:
    # This along with the patches is required and has to match what gnome-build-meta is using
    freedesktop-sdk.bst: freedesktop-sdk.bst

    # fuck you gnomeos, i want nmtui!!!!!!
    core-deps/NetworkManager.bst: freedesktop-sdk.bst:components/networkmanager.bst

    # replace power-profiles-daemon with tuned everywhere
    core-deps/power-profiles-daemon.bst: core/tuned.bst
