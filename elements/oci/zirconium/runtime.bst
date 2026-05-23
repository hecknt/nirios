kind: compose

public:
  bst:
    overlap-whitelist:
      - "**/*"

build-depends:
  - oci/zirconium/stack.bst

config:
  exclude:
    - devel
    - debug
    - static-blocklist
