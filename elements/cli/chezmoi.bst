kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
# the apk is statically linked so it's a good option. arm64 doesn't have a musl binary directly, but the apk has a
# binary built just for us :D
sources:
- kind: git_repo
  url: github:twpayne/chezmoi.git
  track: v*
  ref: v2.70.1-0-g420cfdc935590cf62626d347a2a9ec39b2691fc1
- kind: tar
  base-dir: "usr/bin"
  (?):
  - arch == "aarch64":
      url: github_files:twpayne/chezmoi/releases/download/v2.70.1/chezmoi_2.70.1_linux_arm64.apk
      ref: 265bd9f565306957aaac43a19493237a6d36461c75bc4f69e1d4be42f82104ef
  - arch == "x86_64":
      url: github_files:twpayne/chezmoi/releases/download/v2.70.1/chezmoi_2.70.1_linux_amd64.apk
      ref: 2688f8cdc7c9bb941d1e166816d71580f55cea60f286acef647b184874997720

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

