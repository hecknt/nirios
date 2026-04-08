# Adapted from freedesktop-sdk.bst:components/go.bst
kind: manual

sources:
- kind: git_repo
  url: github:golang/go.git
  track: 'go*'
  exclude:
  - '*rc*'
  - '*beta*'
  ref: go1.26.2-0-g9c8bf0e72a6fb3b415b591b124b59fbb7cf92252

build-depends:
- freedesktop-sdk.bst:bootstrap/go.bst
- freedesktop-sdk.bst:bootstrap/grep.bst
- freedesktop-sdk.bst:bootstrap/sed.bst
- freedesktop-sdk.bst:bootstrap/findutils.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/stripper.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  optimize-debug: "false"

environment:
  GOROOT_BOOTSTRAP: '%{libdir}/go'
  GOARCH: "%{go-arch}"
  GOHOSTARCH: "%{go-arch}"
  CGO_ENABLED: '1'

config:
  build-commands:
  - |
    cd src
    bash make.bash

  install-commands:
  - |
    install -Dm755 -t "%{install-root}%{libdir}/go" VERSION
    install -Dm755 -t "%{install-root}%{libdir}/go/bin" bin/*

    mkdir -p "%{install-root}%{libdir}/go/pkg"
    for i in pkg/include pkg/tool; do
      cp -r "${i}" "%{install-root}%{libdir}/go/pkg/"
    done

    for i in api misc src test; do
      cp -r "${i}" "%{install-root}%{libdir}/go/"
    done

  - |
    chmod -x "%{install-root}%{libdir}/go/src/runtime/pprof/testdata"/test*

  - |
    mkdir -p "%{install-root}%{bindir}/"
    for i in "%{install-root}%{libdir}/go/bin"/*; do
      ln -sr "${i}" "%{install-root}%{bindir}/"
    done

  - |
    find "%{install-root}%{libdir}/go/src" -perm -111 -type f -exec chmod 0644 {} ";"

  - |
    rm -vf "%{install-root}%{libdir}/go/src/debug/elf/testdata/libtiffxx.so_"

  - |
    %{install-extra}

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/go/src/**"
        - "%{libdir}/go/src"
