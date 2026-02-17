kind: make

sandbox:
  build-uid: 1000
  build-gid: 1000

sources:
- kind: git_repo
  url: github:AvengeMedia/DankMaterialShell.git
  track: master
  ref: v1.2.0-306-gbb8e0d384f3ba1440479f4ceea92dfa0a50bd4a2
- kind: local
  path: files/dankmaterialshell

- kind: zip
  directory: core/vendor/github.com/Wifx/gonetworkmanager/v2
  ref: 18ade00b4f176832df17d82c4877c7ddd415631f2e5622a83fd82efc98e30693
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/!wifx/gonetworkmanager/v2/@v/v2.2.0.zip
- kind: zip
  directory: core/vendor/github.com/alecthomas/chroma/v2
  ref: e0c2532f520153fa8573e3cc30e417d3d47877da98080663885f88ce032ed59b
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/alecthomas/chroma/v2/@v/v2.23.1.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/bubbles
  ref: b245dafe1f179d4f0ce17b950ce12ac884ab0c7f69fd2d2f282be68e373d5468
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/bubbles/@v/v1.0.0.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/bubbletea
  ref: 8afc524c11d18878b0ac3426fd3318fdf05ad576e65883c597996296c1b27117
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/bubbletea/@v/v1.3.10.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/lipgloss
  ref: 22512fd8c211302255bb6f57d8018eed9b8d8f6dd51310512901240bde9b061a
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/lipgloss/@v/v1.1.0.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/log
  ref: 2eff0c9ae4bb2bf594b3deefd949562502ef521655dd7cfec43fdaed1f4d0506
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/log/@v/v0.4.2.zip
- kind: zip
  directory: core/vendor/github.com/fsnotify/fsnotify
  ref: 94e64824b23591b7aa504e3321d5ec3f57de88f4d49882eaefbbf6820dab746e
  base-dir: "*/*/*"
  url: golang-proxy:github.com/fsnotify/fsnotify/@v/v1.9.0.zip
- kind: zip
  directory: core/vendor/github.com/godbus/dbus/v5
  ref: 5c6f37c725a481fb0f1e7866ae273429525d8cc6a6cace87da28e53370f5596a
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/godbus/dbus/v5/@v/v5.2.2.zip
- kind: zip
  directory: core/vendor/github.com/holoplot/go-evdev
  ref: d748c38c3748924078fb8c7a100e4159a541d745aca9e1559770646c3418b3cd
  base-dir: "*/*/*"
  url: golang-proxy:github.com/holoplot/go-evdev/@v/v0.0.0-20250804134636-ab1d56a1fe83.zip
- kind: zip
  directory: core/vendor/github.com/pilebones/go-udev
  ref: bc033ea8baec612959025f58b2ec4cf1225be4685bc9e20909ea8225a56bf4a1
  base-dir: "*/*/*"
  url: golang-proxy:github.com/pilebones/go-udev/@v/v0.9.1.zip
- kind: zip
  directory: core/vendor/github.com/sblinch/kdl-go
  ref: c2093f820c504766aa58d3f2fa56c716f91ad5ab5e2717482f90820efa3e80ff
  base-dir: "*/*/*"
  url: golang-proxy:github.com/sblinch/kdl-go/@v/v0.0.0-20260121213736-8b7053306ca6.zip
- kind: zip
  directory: core/vendor/github.com/spf13/cobra
  ref: a00aae6fcd631e0fde52c98604452ff70e1b73c3b8a560d68db15aff5e26872d
  base-dir: "*/*/*"
  url: golang-proxy:github.com/spf13/cobra/@v/v1.10.2.zip
- kind: zip
  directory: core/vendor/github.com/stretchr/testify
  ref: b7325b561ead5304b72b9f32aebc871ff49b3823667d530a49fd6c8f3adfc96e
  base-dir: "*/*/*"
  url: golang-proxy:github.com/stretchr/testify/@v/v1.11.1.zip
- kind: zip
  directory: core/vendor/github.com/yuin/goldmark
  ref: f35042db4b1d6f9ca0f893301e7def2b161980446469a08360af34059ff91d79
  base-dir: "*/*/*"
  url: golang-proxy:github.com/yuin/goldmark/@v/v1.7.16.zip
- kind: zip
  directory: core/vendor/github.com/yuin/goldmark-highlighting/v2
  ref: 2e5d685d24d3d3c156bb5d0be095c93ca202a928d7b52aa016788b1b15e2bcf3
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/yuin/goldmark-highlighting/v2/@v/v2.0.0-20230729083705-37449abec8cc.zip
- kind: zip
  directory: core/vendor/go.etcd.io/bbolt
  ref: 3110374ed5e6984200e6360b6488312803fb41516fff556b350d2a1abaa5ecb5
  base-dir: "*/*"
  url: golang-proxy:go.etcd.io/bbolt/@v/v1.4.3.zip
- kind: zip
  directory: core/vendor/golang.org/x/exp
  ref: 8020f32e79d9903c1593e20b8eec3882f9385f897051b18aca7e4741b23cb74b
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/exp/@v/v0.0.0-20260211191109-2735e65f0518.zip
- kind: zip
  directory: core/vendor/golang.org/x/image
  ref: 6b380f5fdaa964252d5da2afbc697d464103c65a42b0b5dc001c5e633a917b9e
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/image/@v/v0.36.0.zip
- kind: zip
  directory: core/vendor/github.com/Microsoft/go-winio
  ref: cd007bdb877a578efde2780bf5dd2f57dd557b5b08c3614597b820d0369ebb0f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/!microsoft/go-winio/@v/v0.6.2.zip
- kind: zip
  directory: core/vendor/github.com/ProtonMail/go-crypto
  ref: b909c7c3b5d0b7a0879e640bc01382dbc9166bbca6fbf53ee12f2c045b9c5028
  base-dir: "*/*/*"
  url: golang-proxy:github.com/!proton!mail/go-crypto/@v/v1.3.0.zip
- kind: zip
  directory: core/vendor/github.com/clipperhouse/displaywidth
  ref: 53f240c44559409eab60062f4fcc66cb78ed34d7fd8a6fab998853e43205ef94
  base-dir: "*/*/*"
  url: golang-proxy:github.com/clipperhouse/displaywidth/@v/v0.10.0.zip
- kind: zip
  directory: core/vendor/github.com/clipperhouse/uax29/v2
  ref: 684a37e245cd36c7a2bfa184ea339dfa1dda3dc828a58e0057147ad8c5531691
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/clipperhouse/uax29/v2/@v/v2.6.0.zip
- kind: zip
  directory: core/vendor/github.com/cloudflare/circl
  ref: 9aed6385d52ccd66e0a3b8cc093b5f0e7744640485405dd08c8ef89ef6bbeb06
  base-dir: "*/*/*"
  url: golang-proxy:github.com/cloudflare/circl/@v/v1.6.3.zip
- kind: zip
  directory: core/vendor/github.com/cyphar/filepath-securejoin
  ref: bb04848c968a45eb74ca7e9236d10579c4612b40cf5cd78203ee3f604b05f9e9
  base-dir: "*/*/*"
  url: golang-proxy:github.com/cyphar/filepath-securejoin/@v/v0.6.1.zip
- kind: zip
  directory: core/vendor/github.com/dlclark/regexp2
  ref: cb2418e33b59eaaf5f57874db895cb620833e7a5e6eaf5a2c2deef7d47b70610
  base-dir: "*/*/*"
  url: golang-proxy:github.com/dlclark/regexp2/@v/v1.11.5.zip
- kind: zip
  directory: core/vendor/github.com/emirpasic/gods
  ref: 1d75e291ac15cf9ca2fcd8bd24e2f7203abad319cd3622cd1b19db5c4fb9daa5
  base-dir: "*/*/*"
  url: golang-proxy:github.com/emirpasic/gods/@v/v1.18.1.zip
- kind: zip
  directory: core/vendor/github.com/go-git/gcfg/v2
  ref: ef81d26f3e5d3d35c1c01c72fab206406234d66e0ce71d026d05c1e3187d22f9
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/gcfg/v2/@v/v2.0.2.zip
- kind: zip
  directory: core/vendor/github.com/go-git/go-billy/v6
  ref: 42ad7344f9e77fa9e744bf02d362e5d288b3d587b12b35b0137a151a182b2deb
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/go-billy/v6/@v/v6.0.0-20260209124918-37866f83c2d3.zip
- kind: zip
  directory: core/vendor/github.com/go-logfmt/logfmt
  ref: 20f61151ffe33e64602b3a0db4eaed9ef60a84398a4a495a7434ffb90635751b
  base-dir: "*/*/*"
  url: golang-proxy:github.com/go-logfmt/logfmt/@v/v0.6.1.zip
- kind: zip
  directory: core/vendor/github.com/golang/groupcache
  ref: 163367355442a630b12b0b452892cd98e99fcfdf7e40b68d358be73479cc1c23
  base-dir: "*/*/*"
  url: golang-proxy:github.com/golang/groupcache/@v/v0.0.0-20241129210726-2c02b8208cf8.zip
- kind: zip
  directory: core/vendor/github.com/kevinburke/ssh_config
  ref: 90eecbf28af600720935f122f4b256ac677251542620493b9ea6a4659ecae397
  base-dir: "*/*/*"
  url: golang-proxy:github.com/kevinburke/ssh_config/@v/v1.4.0.zip
- kind: zip
  directory: core/vendor/github.com/klauspost/cpuid/v2
  ref: e6766f75ecfadf12fd045e4bdd9383f2a5bd3f9bd4c88a6db72861c84cf41486
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/klauspost/cpuid/v2/@v/v2.3.0.zip
- kind: zip
  directory: core/vendor/github.com/pjbgf/sha1cd
  ref: 8ca3d482c48d38f6f0007b47c44f5364ec12a588010eb2b14e4940b50e024320
  base-dir: "*/*/*"
  url: golang-proxy:github.com/pjbgf/sha1cd/@v/v0.5.0.zip
- kind: zip
  directory: core/vendor/github.com/sergi/go-diff
  ref: 63aef1860b251af1421ba0a014a6bb08a60833f13f948f3d88d66754bb484f53
  base-dir: "*/*/*"
  url: golang-proxy:github.com/sergi/go-diff/@v/v1.4.0.zip
- kind: zip
  directory: core/vendor/github.com/stretchr/objx
  ref: cdc804051b06efceea75ee9b0b6349d2f92f17cd46c6193c4a8dfb0f51465a44
  base-dir: "*/*/*"
  url: golang-proxy:github.com/stretchr/objx/@v/v0.5.3.zip
- kind: zip
  directory: core/vendor/golang.org/x/crypto
  ref: 837297a50ca77a6a18ea2f2936bfe31aaf2ad36d5bcd8c545709da3b6c600fd2
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/crypto/@v/v0.48.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/net
  ref: 6220d72153daf7606758a35790cbf0d15fd1c0bad584ec526bee32e7a463d3e9
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/net/@v/v0.50.0.zip
- kind: zip
  directory: core/vendor/github.com/atotto/clipboard
  ref: d67b2c36c662751309fd2ec351df3651584bea840bd27be9a90702c3a238b43f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/atotto/clipboard/@v/v0.1.4.zip
- kind: zip
  directory: core/vendor/github.com/aymanbagabas/go-osc52/v2
  ref: 939ebf2a5481f2172e1a5e0c318d05aef5b6d950a960556216c3da7879a927f8
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/aymanbagabas/go-osc52/v2/@v/v2.0.1.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/colorprofile
  ref: 023406b220801b70506075b274290a5acd87c82d54d6b57d63b2f0a97e685d2c
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/colorprofile/@v/v0.4.2.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/harmonica
  ref: 8494d728916551f0fc9a065fa854dfae2d75c7191ce839bae07de1a6290db40a
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/harmonica/@v/v0.2.0.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/x/ansi
  ref: e230469009979cb557984f7a8e67715234a5442ca870cbcc85e9345a865b8012
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/charmbracelet/x/ansi/@v/v0.11.6.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/x/cellbuf
  ref: 2c5c421edef869c7f4b7b3fa29530a66897134764d95a750eed59ed5886d84f7
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/charmbracelet/x/cellbuf/@v/v0.0.15.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/x/term
  ref: 0452a430f7e6882393f81ba19a70a63709960acb9743e1199a7b04d908e6b506
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/charmbracelet/x/term/@v/v0.2.2.zip
- kind: zip
  directory: core/vendor/github.com/davecgh/go-spew
  ref: 6b44a843951f371b7010c754ecc3cabefe815d5ced1c5b9409fb2d697e8a890d
  base-dir: "*/*/*"
  url: golang-proxy:github.com/davecgh/go-spew/@v/v1.1.1.zip
- kind: zip
  directory: core/vendor/github.com/erikgeiser/coninput
  ref: bd7f9a62374dc4d111863491729763a0eafcdc440d4a6ebead61d3af4a2c3f2f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/erikgeiser/coninput/@v/v0.0.0-20211004153227-1c3628e74d0f.zip
- kind: zip
  directory: core/vendor/github.com/go-git/go-git/v6
  ref: a50dce34678fbd33b83027f1bc87319fe6aa13b3b5ef26685311d2357e1f0e49
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/go-git/v6/@v/v6.0.0-20260210102253-e4d10f0e569a.zip
- kind: zip
  directory: core/vendor/github.com/inconshreveable/mousetrap
  ref: 526674de624d7db108cfe7653ef110ccdfd97bc85026254224815567928ed243
  base-dir: "*/*/*"
  url: golang-proxy:github.com/inconshreveable/mousetrap/@v/v1.1.0.zip
- kind: zip
  directory: core/vendor/github.com/lucasb-eyer/go-colorful
  ref: 9c7c8ac20d1b2ffe1b43956e6be94c979d9d42f2ecc182d1bbb2c91f11647c15
  base-dir: "*/*/*"
  url: golang-proxy:github.com/lucasb-eyer/go-colorful/@v/v1.3.0.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-isatty
  ref: f2d5f89ca451577e17464b9bb596dc0d0ecececb5eaa63622c41b57cd0b7b8cc
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-isatty/@v/v0.0.20.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-localereader
  ref: 463b9774db65b769ec675e235f69f1c4a2e433e821374c8620e66669bde5240f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-localereader/@v/v0.0.2-0.20220822084749-2491eb6c1c75.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-runewidth
  ref: 4a99857860b6c26557e6d275d737df8bc29a542cc28fb041d47a417515906876
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-runewidth/@v/v0.0.19.zip
- kind: zip
  directory: core/vendor/github.com/muesli/ansi
  ref: 59c0d420908d51df3c701510337fbe42bfb4d48fcc5f490b5eb2f36fc25f91b9
  base-dir: "*/*/*"
  url: golang-proxy:github.com/muesli/ansi/@v/v0.0.0-20230316100256-276c6243b2f6.zip
- kind: zip
  directory: core/vendor/github.com/muesli/cancelreader
  ref: f0654e7f8f8a49b02ff10a75ccaa0eb08a65aaacbc45f5ba93305276e2ac7f61
  base-dir: "*/*/*"
  url: golang-proxy:github.com/muesli/cancelreader/@v/v0.2.2.zip
- kind: zip
  directory: core/vendor/github.com/muesli/termenv
  ref: ba02d3ebd9c1d87e2c2133b1f2bb61a7001b3765196e8016029ce9fe54c5c0fc
  base-dir: "*/*/*"
  url: golang-proxy:github.com/muesli/termenv/@v/v0.16.0.zip
- kind: zip
  directory: core/vendor/github.com/pmezard/go-difflib
  ref: de04cecc1a4b8d53e4357051026794bcbc54f2e6a260cfac508ce69d5d6457a0
  base-dir: "*/*/*"
  url: golang-proxy:github.com/pmezard/go-difflib/@v/v1.0.0.zip
- kind: zip
  directory: core/vendor/github.com/rivo/uniseg
  ref: b995e4aa0cc1e5779cc61138ac925cb8c1e963e40c80e4b93ee8553812ebb792
  base-dir: "*/*/*"
  url: golang-proxy:github.com/rivo/uniseg/@v/v0.4.7.zip
- kind: zip
  directory: core/vendor/github.com/spf13/afero
  ref: d03a0bbce87eeaa1c23f0c0276707bb2d59f46efee875d7d7f1d570201be6e1f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/spf13/afero/@v/v1.15.0.zip
- kind: zip
  directory: core/vendor/github.com/spf13/pflag
  ref: a246b8c9d3daa87d6c634cdfee1bdf7fa53d5817eeef4fa0c6da43edd12de4ca
  base-dir: "*/*/*"
  url: golang-proxy:github.com/spf13/pflag/@v/v1.0.10.zip
- kind: zip
  directory: core/vendor/github.com/xo/terminfo
  ref: b8f4270191e08e135e932dfe168769046a4268ec7f3892593b1d773b2c5fa4cf
  base-dir: "*/*/*"
  url: golang-proxy:github.com/xo/terminfo/@v/v0.0.0-20220910002029-abceb7e1c41e.zip
- kind: zip
  directory: core/vendor/golang.org/x/sys
  ref: c48084c62177045c1091e3cab99aa03ebb003027435ca8bd36bb851340480a40
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/sys/@v/v0.41.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/text
  ref: 67a6cab352a4f313d56671618dfff2f82d908a17151dc4ca9b7fbbfd40828134
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/text/@v/v0.34.0.zip
- kind: zip
  directory: core/vendor/gopkg.in/yaml.v3
  ref: aab8fbc4e6300ea08e6afe1caea18a21c90c79f489f52c53e2f20431f1a9a015
  base-dir: "*/*"
  url: golang-proxy:gopkg.in/yaml.v3/@v/v3.0.1.zip

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/go.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnome-build-meta.bst:core-deps/accountsservice.bst
- desktop/quickshell.bst
- desktop/matugen.bst
- deps/dgop.bst

variables:
  make-args: build

config:
  configure-commands:
  - |
    # Modify dms-greeter to use /usr/share/quickshell/dms instead of /usr/share/quickshell/dms-greeter, since we are not
    # going to install dms into /usr/share/quickshell/dms-greeter.
    sed -i 's/^DMS_PATH="dms-greeter"$/DMS_PATH="dms"/;s/default: dms-greeter)$/default: dms)/' quickshell/Modules/Greetd/assets/dms-greeter
  install-commands:
  - |
    install -dm0755 "%{install-root}%{datadir}/bash-completion/completions"
    install -dm0755 "%{install-root}%{datadir}/zsh/site-functions"
    install -dm0755 "%{install-root}%{datadir}/fish/vendor_completions.d"

    ./core/bin/dms completion bash > "%{install-root}%{datadir}/bash-completion/completions/dms"
    ./core/bin/dms completion zsh > "%{install-root}%{datadir}/zsh/site-functions/_dms"
    ./core/bin/dms completion fish > "%{install-root}%{datadir}/fish/vendor_completions.d/dms.fish"

    install -Dm0755 ./core/bin/dms "%{install-root}%{bindir}/dms"
    install -dm0755 "%{install-root}%{datadir}/quickshell/dms"
    cp -r "quickshell/./" "%{install-root}%{datadir}/quickshell/dms"
    install -Dpm0644 -t "%{install-root}%{prefix}/lib/pam.d/" quickshell/assets/pam/*
    install -Dm0644 -t "%{install-root}%{prefix}/lib/systemd/user/" assets/systemd/dms.service

    # dms-greeter
    install -Dm0755 "quickshell/Modules/Greetd/assets/dms-greeter" -t "%{install-root}%{bindir}"
    install -Dm0755 "quickshell/systemd/tmpfiles-dms-greeter.conf" "%{install-root}%{indep-libdir}/tmpfiles.d/dms-greeter.conf"
  - |
    %{install-extra}
