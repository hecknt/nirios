kind: manual

sources:
- kind: git_repo
  url: github:seb-m/pyinotify.git
  track: "*.*.*"
  ref: 0.9.6-0-g2d716e5ceef8ade1a60eff0bac30de939afb2b8d
- kind: patch_queue
  path: patches/python3-pyinotify

build-depends:
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/python3-build.bst
- freedesktop-sdk.bst:components/python3-installer.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3-wheel.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

config:
  build-commands:
  - |
    python -m build -nw
  install-commands:
  - |
    python -m installer -d "%{install-root}" dist/*.whl
  - |
    %{install-extra}

