kind: manual

sources:
- kind: git_repo
  url: github:OpenGamingCollective/ScopeBuddy.git
  track: "*"
  ref: 1.4.0-0-g4340ab2047eb9d7f840d342b932d98a8d0f7f652

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- gamerslop/gamescope.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:components/procps.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/sed.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0755 bin/scopebuddy bin/scb -t %{install-root}%{bindir}
  - |
    %{install-extra}
