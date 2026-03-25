kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- deps/nautilus-python.bst
- desktop/xdg-terminal-exec.bst

sources:
- kind: git_repo
  url: github:zirconium-dev/xdg-terminal-exec-nautilus.git
  track: "*"
  ref: 0.1.0-0-g3424370f305c7434929ce98cdf1685b3994faddf

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0644 xdg-terminal-exec-nautilus.py -t %{install-root}%{datadir}/nautilus-python/extensions
  - |
    %{install-extra}
