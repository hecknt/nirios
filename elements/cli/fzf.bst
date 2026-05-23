kind: manual

# go modules killed my family so i'm downloading the binary instead like a stupid chud
sources:
- kind: git_repo
  url: github:junegunn/fzf.git
  track: v*
  ref: v0.73.0-0-ga24deef77bc1b9f1b5293b951288662dc2f7704a
- kind: tar
  directory: "bin"
  base-dir: ""
  (?):
  - arch == "aarch64":
      url: github_files:junegunn/fzf/releases/download/v%{version}/fzf-%{version}-linux_arm64.tar.gz
      ref: ffec94e3b8cad3b8fc803056c87c90dd4ee8c94d5dfd6b59fb0054d5ad945314
  - arch == "x86_64":
      url: github_files:junegunn/fzf/releases/download/v%{version}/fzf-%{version}-linux_amd64.tar.gz
      ref: f0e7068285b63163af5276d134b9bc7c37fbbf3a49441fca64ae2df424c2ff8d

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  version: 0.73.0
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

