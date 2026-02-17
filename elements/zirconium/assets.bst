kind: manual

sources:
- kind: git_repo
  url: github:zirconium-dev/assets.git
  track: main
  ref: bbcc598039cc9c48b631677ff3bd267217cf8509

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
    - |
      install -Dpm0644 -t %{install-root}%{prefix}/share/plymouth/themes/spinner/ ./logos/watermark.png
      install -Dpm0644 -t %{install-root}%{prefix}/share/zirconium/skel/Pictures/Wallpapers/ ./wallpapers/*
      install -Dpm0644 -t %{install-root}%{prefix}/share/zirconium/pixmaps/ ./logos/logo-z.svg
    - |
      %{install-extra}

