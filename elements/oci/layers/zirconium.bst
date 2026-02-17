kind: compose

build-depends:
  - oci/layers/zirconium-runtime.bst
  - oci/layers/zirconium-init-scripts.bst
  - freedesktop-sdk.bst:components/gcc.bst

config:
  exclude:
    - debug
    - extra
    - static-blocklist
