kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
- kind: zip
  url: github_files:subframe7536/maple-font/releases/download/v7.9/MapleMono-Variable.zip
  ref: b9e57677cc4ec069ce178bd965d66cd14bd26c12e37d89d786ff959339bf8c93
  base-dir: ""

- kind: zip
  url: github_files:subframe7536/maple-font/releases/download/v7.9/MapleMono-NF.zip
  ref: 59098b87c895d871635d37680e88000ae2b2b25b55428195b228ec589e35fb89
  base-dir: ""

variables:
  fontdir: "%{install-root}%{datadir}/fonts"
  strip-binaries: ""

config:
  install-commands:
  - |
    mkdir -p "%{fontdir}/maple-mono"
    install -p -m0644 *.ttf "%{fontdir}/maple-mono"
  - |
    %{install-extra}
