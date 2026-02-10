kind: compose

build-depends:
  - oci/layers/nirios-runtime.bst
  - oci/layers/nirios-init-scripts.bst
  - freedesktop-sdk.bst:components/gcc.bst

config:
  exclude:
    - debug
    - extra
    - static-blocklist
