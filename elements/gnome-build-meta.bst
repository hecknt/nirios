kind: junction

sources:
- kind: git_repo
  url: gnome:gnome-build-meta.git
  track: master
  ref: 49-branchpoint-487-gc9b3b616363f74e6ef627cee227b0df704e415a7

config:
  overrides:
    # This along with the patches is required and has to match what gnome-build-meta is using
    freedesktop-sdk.bst: freedesktop-sdk.bst

    # fuck you gnomeos, i want nmtui!!!!!!
    core-deps/NetworkManager.bst: freedesktop-sdk.bst:components/networkmanager.bst

    plugins/buildstream-plugins.bst: plugins/buildstream-plugins.bst
    plugins/buildstream-plugins-community.bst: plugins/buildstream-plugins-community.bst
