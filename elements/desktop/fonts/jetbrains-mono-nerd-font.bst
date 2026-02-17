kind: manual

build-depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - freedesktop-sdk.bst:components/libarchive.bst
  - freedesktop-sdk.bst:components/bzip2.bst
  - freedesktop-sdk.bst:components/xz.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

sources:
  # kind: tar fails on this specific archive. No idea why.
  # FIXME: build the nerd fonts ourselves
  - kind: remote
    url: github_files:ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.tar.xz
    ref: ef552a3e638f25125c6ad4c51176a6adcdce295ab1d2ffacf0db060caf8c1582
variables:
  license-files-extra: "OFL.txt"
  fontdir: "%{install-root}%{datadir}/fonts"
  strip-binaries: ""

config:
  install-commands:
    - |
      bsdtar -o -xvf JetBrainsMono.tar.xz
      rm JetBrainsMono.tar.xz
    - |
      mkdir -p "%{fontdir}/jetbrains-mono-nerd-font"
      install -p -m0644 *.ttf "%{fontdir}/jetbrains-mono-nerd-font"
    - |
      %{install-extra}
