kind: compose

build-depends:
  - oci/jackrabbit/runtime.bst
  - freedesktop-sdk.bst:components/gcc.bst

config:
  exclude:
    - debug
    - extra
    - static-blocklist
