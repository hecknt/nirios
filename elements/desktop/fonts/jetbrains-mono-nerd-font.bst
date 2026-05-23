kind: manual

build-depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
  # FIXME: build the nerd fonts ourselves
  - kind: tar
    url: github_files:ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.tar.xz
    ref: ef552a3e638f25125c6ad4c51176a6adcdce295ab1d2ffacf0db060caf8c1582
    base-dir: ""

variables:
  license-files-extra: "OFL.txt"
  fontdir: "%{install-root}%{datadir}/fonts"
  strip-binaries: ""

config:
  install-commands:
    - |
      mkdir -p "%{fontdir}/jetbrains-mono-nerd-font"
      install -p -m0644 *.ttf "%{fontdir}/jetbrains-mono-nerd-font"
    - |
      %{install-extra}
