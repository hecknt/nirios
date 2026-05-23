kind: stack

depends:
  - cli/brew.bst
  - stacks/base-system.bst
  - stacks/bootc.bst
  - stacks/codecs.bst
  - stacks/desktop.bst
  - stacks/firewalld.bst

  # zirconium bullshit
  - zirconium/assets.bst
  - zirconium/common.bst
  - zirconium/zdots.bst
