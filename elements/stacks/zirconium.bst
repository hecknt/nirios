kind: stack

depends:
  - stacks/base-system.bst
  - stacks/bootc.bst
  - stacks/homebrew.bst
  - stacks/ffmpeg.bst
  - stacks/gstreamer.bst
  - stacks/desktop.bst

  # zirconium bullshit
  - zirconium/assets.bst
  - zirconium/common.bst
  - zirconium/zdots.bst
