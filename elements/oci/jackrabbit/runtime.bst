kind: compose

public:
  bst:
    overlap-whitelist:
      - "**/*"

build-depends:
  - oci/jackrabbit/stack.bst

config:
  exclude:
    - devel
    - debug
    - static-blocklist
