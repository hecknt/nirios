kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
# the apk is statically linked so it's a good option. arm64 doesn't have a musl binary directly, but the apk has a
# binary built just for us :D
sources:
- kind: git_repo
  url: github:twpayne/chezmoi.git
  track: v*
  ref: v2.69.4-0-gc4c669c9f2f329233a85802014d26fba3c58a4a4
- kind: tar
  base-dir: "usr/bin"
  (?):
  - arch == "aarch64":
      url: github:twpayne/chezmoi/releases/download/v2.69.4/chezmoi_2.69.4_linux_arm64.apk
      ref: a18478bf2e2728188ee291cd1ad91d1fc5fa27bafb0e5ab47b480171554cefed
  - arch == "x86_64":
      url: github:twpayne/chezmoi/releases/download/v2.69.4/chezmoi_2.69.4_linux_amd64.apk
      ref: bcaaff407cb9018eed22222c3cd18dc15cc4c59cd591bfd8084bf430501b55d4

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0755 ./completions/chezmoi-completion.bash "%{install-root}%{datadir}/bash-completion/completions/chezmoi"
    install -Dm0755 ./completions/chezmoi.zsh "%{install-root}%{datadir}/zsh/site-functions/_chezmoi"
    install -Dm0755 ./completions/chezmoi.fish "%{install-root}%{datadir}/fish/vendor_completions.d/chezmoi.fish"

    install -Dm0755 ./chezmoi "%{install-root}%{bindir}/chezmoi"
  - |
    %{install-extra}

