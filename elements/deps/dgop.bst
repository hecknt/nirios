kind: make

sources:
- kind: tar
  url: github_files:AvengeMedia/dgop/releases/download/v0.2.2/dgop-0.2.2.tar.gz
  ref: ea045df478ee8cd246e9f80b85ea616c4faec0fbf957dd6de81b37f686d07013

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/go.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-args: build

config:
  install-commands:
  - |
    install -dm0755 "%{install-root}%{datadir}/bash-completion/completions"
    install -dm0755 "%{install-root}%{datadir}/zsh/site-functions"
    install -dm0755 "%{install-root}%{datadir}/fish/vendor_completions.d"

    ./bin/dgop completion bash > "%{install-root}%{datadir}/bash-completion/completions/dgop"
    ./bin/dgop completion zsh > "%{install-root}%{datadir}/zsh/site-functions/_dgop"
    ./bin/dgop completion fish > "%{install-root}%{datadir}/fish/vendor_completions.d/dgop.fish"

    install -Dm0755 ./bin/dgop "%{install-root}%{bindir}/dgop"
  - |
    %{install-extra}

