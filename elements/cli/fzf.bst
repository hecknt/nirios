kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
sources:
- kind: git_repo
  url: github:junegunn/fzf.git
  track: v*
  ref: v0.73.1-0-gce4bef75954bebd87e0886435bcf8c6904328ab0
- kind: tar
  directory: "bin"
  base-dir: ""
  (?):
  - arch == "aarch64":
      url: github_files:junegunn/fzf/releases/download/v%{version}/fzf-%{version}-linux_arm64.tar.gz
      ref: a408b0b6c08d486307b8f1554f967b8b50ee1b3ea8b4035e3161bab31fdfc28d
  - arch == "x86_64":
      url: github_files:junegunn/fzf/releases/download/v%{version}/fzf-%{version}-linux_amd64.tar.gz
      ref: f3252c2c366bc1700d3c85781ec8c9695998927ac127870eb049ceea2d540f8a

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  version: 0.73.1
  strip-binaries: ""

config:
  install-commands:
  - |
    # Shell stuff
    install -Dm0644 ./shell/*.{ba,z}sh -t "%{install-root}%{datadir}/fzf"
    install -Dm0644 ./bin/fzf-preview.sh -t "%{install-root}%{datadir}/fzf"
    install -Dm0644 ./shell/key-bindings.fish "%{install-root}%{datadir}/fish/vendor_functions.d/fzf_key_bindings.fish"

    # Vim plugin
    install -Dm0644 ./doc/fzf.txt -t "%{install-root}%{datadir}/vim/vimfiles/doc"
    install -Dm0644 ./plugin/fzf.vim -t "%{install-root}%{datadir}/vim/vimfiles/plugin"

    # Manpages
    install -Dm0644 ./man/man1/*.1 -t "%{install-root}%{datadir}/man/man1"

    # fzf
    install -Dm0755 ./bin/fzf{,-tmux} -t "%{install-root}%{bindir}"
  - |
    %{install-extra}

