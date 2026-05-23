kind: compose

build-depends:
  - oci/zirconium/manifest.bst
  - oci/zirconium/runtime.bst
  - freedesktop-sdk.bst:components/gcc.bst

config:
  exclude:
    - debug
    - extra
    - static-blocklist
