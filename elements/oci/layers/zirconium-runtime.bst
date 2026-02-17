kind: compose

build-depends:
  - oci/layers/zirconium-stack.bst

config:
  exclude:
    - devel
    - debug
    - static-blocklist
