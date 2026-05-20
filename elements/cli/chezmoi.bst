kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
# the apk is statically linked so it's a good option. arm64 doesn't have a musl binary directly, but the apk has a
# binary built just for us :D
sources:
- kind: git_repo
  url: github:twpayne/chezmoi.git
  track: v*
  ref: v2.70.4-0-g64583685c5eb36e10670bad076d5406a08baf751
- kind: tar
  base-dir: "usr/bin"
  (?):
  - arch == "aarch64":
      url: github_files:twpayne/chezmoi/releases/download/v%{version}/chezmoi_%{version}_linux_arm64.apk
      ref: b2f49fbb9024893c63ed54d5feffa963c0b1d726b5656cbe47cb04066406be0c
  - arch == "x86_64":
      url: github_files:twpayne/chezmoi/releases/download/v%{version}/chezmoi_%{version}_linux_amd64.apk
      ref: 693741ff3886cd6b0cd606b0650aa4edd6fcc17ab6240c6cea96661a00b583e8

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  version: 2.70.4
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

