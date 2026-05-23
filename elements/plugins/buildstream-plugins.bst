kind: junction

sources:
- kind: git_repo
  url: github:apache/buildstream-plugins.git
  track: "*.*.*"
  exclude:
  - "*.dev*"
  ref: 2.7.0-0-g432a00368261e01c2827071d67c477bfe4a55664
- kind: patch_queue
  path: patches/buildstream-plugins
