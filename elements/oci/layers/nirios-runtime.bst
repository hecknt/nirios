kind: compose

build-depends:
  - oci/layers/nirios-stack.bst

config:
  exclude:
    - devel
    - debug
    - static-blocklist
