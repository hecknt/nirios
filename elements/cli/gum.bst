kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
# The git repo is just for tracking purposes, we don't use anything from the git repo directly
# so we place it in an "unused" directory.
sources:
- kind: git_repo
  directory: unused
  url: github:charmbracelet/gum.git
  track: v*
  ref: v0.17.0-0-g6045525ab92f75c169d3c69596844d8748437e37
- kind: tar
  (?):
  - arch == "aarch64":
      url: github_files:charmbracelet/gum/releases/download/v%{version}/gum_%{version}_Linux_arm64.tar.gz
      ref: b0b9ed95cbf7c8b7073f17b9591811f5c001e33c7cfd066ca83ce8a07c576f9c
  - arch == "x86_64":
      url: github_files:charmbracelet/gum/releases/download/v%{version}/gum_%{version}_Linux_x86_64.tar.gz
      ref: 69ee169bd6387331928864e94d47ed01ef649fbfe875baed1bbf27b5377a6fdb

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  version: 0.17.0
  strip-binaries: ""
  license-files: LICENSE

config:
  install-commands:
  - |
    install -Dm0644 ./completions/gum.bash "%{install-root}%{datadir}/bash-completion/completions/gum"
    install -Dm0644 ./completions/gum.zsh "%{install-root}%{datadir}/zsh/site-functions/_gum"
    install -Dm0644 ./completions/gum.fish "%{install-root}%{datadir}/fish/vendor_completions.d/gum.fish"

    install -Dm0644 ./manpages/gum.1.gz -t "%{install-root}%{datadir}/man/man1"

    install -Dm0755 ./gum -t "%{install-root}%{bindir}"
  - |
    %{install-extra}

