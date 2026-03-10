kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
# the apk is statically linked so it's a good option. arm64 doesn't have a musl binary directly, but the apk has a
# binary built just for us :D
sources:
- kind: git_repo
  url: github:twpayne/chezmoi.git
  track: v*
  ref: v2.70.0-0-g6624b49786a9f039f05b4d929c35fd4f4bf17337
- kind: tar
  base-dir: "usr/bin"
  (?):
  - arch == "aarch64":
      url: github:twpayne/chezmoi/releases/download/v2.70.0/chezmoi_2.70.0_linux_arm64.apk
      ref: 28c98e4fbfd6ed9885df71fa2bb2a3606621409d6d3abbfd369e5367da5c27ea
  - arch == "x86_64":
      url: github:twpayne/chezmoi/releases/download/v2.70.0/chezmoi_2.70.0_linux_amd64.apk
      ref: 834a16457f243b6d89920153eafedd5c3d5211cb318c9b6622279b5da6ec2391

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm0644 ./completions/chezmoi-completion.bash "%{install-root}%{datadir}/bash-completion/completions/chezmoi"
    install -Dm0644 ./completions/chezmoi.zsh "%{install-root}%{datadir}/zsh/site-functions/_chezmoi"
    install -Dm0644 ./completions/chezmoi.fish "%{install-root}%{datadir}/fish/vendor_completions.d/chezmoi.fish"

    install -Dm0755 ./chezmoi "%{install-root}%{bindir}/chezmoi"
  - |
    %{install-extra}

