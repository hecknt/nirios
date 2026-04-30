kind: make

sandbox:
  build-uid: 1000
  build-gid: 1000

sources:
- kind: git_repo
  url: github:AvengeMedia/DankMaterialShell.git
  track: master
  ref: v1.4.0-417-g86096db26bf259be89b2c24693cb2cb1fce31201
- kind: local
  path: files/dankmaterialshell

- kind: zip
  directory: core/vendor/github.com/Wifx/gonetworkmanager/v2
  ref: 18ade00b4f176832df17d82c4877c7ddd415631f2e5622a83fd82efc98e30693
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/!wifx/gonetworkmanager/v2/@v/v2.2.0.zip
- kind: zip
  directory: core/vendor/github.com/alecthomas/chroma/v2
  ref: c9d1e65728b5acdbb1e1d8a1bbaaabb41b47533e667949ff8b5e6f4b8fc8ae4e
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/alecthomas/chroma/v2/@v/v2.24.0.zip
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
  ref: 564622bb814b4c9fc5e18b677d0f3af6b0f532ef0ae862d4c3f0500564c6160a
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/log/@v/v1.0.0.zip
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
  directory: core/vendor/github.com/yeqown/go-qrcode/v2
  ref: 6d6d8af4e03b8f69e76be64b793fb9715934eb215ca88feeaa79e20ae3b5c512
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/yeqown/go-qrcode/v2/@v/v2.2.5.zip
- kind: zip
  directory: core/vendor/github.com/yeqown/go-qrcode/writer/standard
  ref: d327fce1174a33afef71382be0f411c78a0516a9ecf57aba0d9986545dfb51e6
  base-dir: "*/*/*/*/*"
  url: golang-proxy:github.com/yeqown/go-qrcode/writer/standard/@v/v1.3.0.zip
- kind: zip
  directory: core/vendor/github.com/yuin/goldmark
  ref: 81da2e6eedc927ad59fa73d8690eab2e90828bde382b9eaa326a110f92c02d33
  base-dir: "*/*/*"
  url: golang-proxy:github.com/yuin/goldmark/@v/v1.8.2.zip
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
  ref: de285d08489fcd4d420a8561501e75b5124db0a48121dfc26e811959f518db4e
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/exp/@v/v0.0.0-20260410095643-746e56fc9e2f.zip
- kind: zip
  directory: core/vendor/golang.org/x/image
  ref: 80cf8b03c19e3000eda524c98c5bba6513b2691daba943b8ba6b800295104696
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/image/@v/v0.39.0.zip
- kind: zip
  directory: core/vendor/github.com/Microsoft/go-winio
  ref: cd007bdb877a578efde2780bf5dd2f57dd557b5b08c3614597b820d0369ebb0f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/!microsoft/go-winio/@v/v0.6.2.zip
- kind: zip
  directory: core/vendor/github.com/ProtonMail/go-crypto
  ref: 70bbdc0f9e926738193aed968f7901efab41493752277c4c94c9b751aa55c42a
  base-dir: "*/*/*"
  url: golang-proxy:github.com/!proton!mail/go-crypto/@v/v1.4.1.zip
- kind: zip
  directory: core/vendor/github.com/clipperhouse/displaywidth
  ref: 27830c91cdfb2a648748db21f7a2734dcb50d21c620edde51d488ba4e7967e3d
  base-dir: "*/*/*"
  url: golang-proxy:github.com/clipperhouse/displaywidth/@v/v0.11.0.zip
- kind: zip
  directory: core/vendor/github.com/clipperhouse/uax29/v2
  ref: 67b1278f1ffb4e4d783a390e48fe7396864650138e785d4b4bfca5914333f761
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/clipperhouse/uax29/v2/@v/v2.7.0.zip
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
  ref: dac93d7598b95a6a2c8b334f98078c77d22e29a85b4f73573591bcda65406636
  base-dir: "*/*/*"
  url: golang-proxy:github.com/dlclark/regexp2/@v/v1.12.0.zip
- kind: zip
  directory: core/vendor/github.com/emirpasic/gods
  ref: 1d75e291ac15cf9ca2fcd8bd24e2f7203abad319cd3622cd1b19db5c4fb9daa5
  base-dir: "*/*/*"
  url: golang-proxy:github.com/emirpasic/gods/@v/v1.18.1.zip
- kind: zip
  directory: core/vendor/github.com/fogleman/gg
  ref: 792f7a3ea9eea31b7947dabaf9d5a307389245069078e4bf435d76cb0505439c
  base-dir: "*/*/*"
  url: golang-proxy:github.com/fogleman/gg/@v/v1.3.0.zip
- kind: zip
  directory: core/vendor/github.com/go-git/gcfg/v2
  ref: ef81d26f3e5d3d35c1c01c72fab206406234d66e0ce71d026d05c1e3187d22f9
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/gcfg/v2/@v/v2.0.2.zip
- kind: zip
  directory: core/vendor/github.com/go-git/go-billy/v6
  ref: d744487cad64f6e099d186b3ddf944f133c2ce91aa190d74040bf114eb95b2ec
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/go-billy/v6/@v/v6.0.0-20260424211911-732291493fb8.zip
- kind: zip
  directory: core/vendor/github.com/go-logfmt/logfmt
  ref: 20f61151ffe33e64602b3a0db4eaed9ef60a84398a4a495a7434ffb90635751b
  base-dir: "*/*/*"
  url: golang-proxy:github.com/go-logfmt/logfmt/@v/v0.6.1.zip
- kind: zip
  directory: core/vendor/github.com/golang/freetype
  ref: cdcb9e6a14933dcbf167b44dcd5083fc6a2e52c4fae8fb79747c691efeb7d84e
  base-dir: "*/*/*"
  url: golang-proxy:github.com/golang/freetype/@v/v0.0.0-20170609003504-e2365dfdc4a0.zip
- kind: zip
  directory: core/vendor/github.com/kevinburke/ssh_config
  ref: cb3e2a23c10382dac238ea51ed1162c75cb7e986532d1ce92a2051469ca24e44
  base-dir: "*/*/*"
  url: golang-proxy:github.com/kevinburke/ssh_config/@v/v1.6.0.zip
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
  directory: core/vendor/github.com/pkg/errors
  ref: d4c36b8bcd0616290a3913215e0f53b931bd6e00670596f2960df1b44af2bd07
  base-dir: "*/*/*"
  url: golang-proxy:github.com/pkg/errors/@v/v0.9.1.zip
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
  directory: core/vendor/github.com/yeqown/reedsolomon
  ref: a834afc29e46619d86583af9115a16bb16b6e4617211a2d02d01a5d39b5bb2f7
  base-dir: "*/*/*"
  url: golang-proxy:github.com/yeqown/reedsolomon/@v/v1.0.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/crypto
  ref: aaf9503dd088d2727e08f213d23424ebc75a52ee609f084ec4c726f3590c0ea5
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/crypto/@v/v0.50.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/net
  ref: 3808b07d64ba58f58ca91737f0a165439f72b03a512ea901bad2aa1e168092d5
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/net/@v/v0.53.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/sync
  ref: 7179d4d68800f6fdcadb9d4bbf11cbb5df9b40360c89305c203fe20723cbd375
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/sync/@v/v0.20.0.zip
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
  ref: 656472ff48f01a098418a31667f3253cf34e04d4e1cb6c1a0a80f76ad370b689
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/colorprofile/@v/v0.4.3.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/harmonica
  ref: 8494d728916551f0fc9a065fa854dfae2d75c7191ce839bae07de1a6290db40a
  base-dir: "*/*/*"
  url: golang-proxy:github.com/charmbracelet/harmonica/@v/v0.2.0.zip
- kind: zip
  directory: core/vendor/github.com/charmbracelet/x/ansi
  ref: 1d52a11e3ddfeabe350df8b1a5ee7a8660ac6903ae3a9f1031d9668384d59f6a
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/charmbracelet/x/ansi/@v/v0.11.7.zip
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
  ref: fc681b42934fae803b948e36c45741dff9f00d6117bccfe013833fd9fdeee820
  base-dir: "*/*/*/*"
  url: golang-proxy:github.com/go-git/go-git/v6/@v/v6.0.0-alpha.2.zip
- kind: zip
  directory: core/vendor/github.com/inconshreveable/mousetrap
  ref: 526674de624d7db108cfe7653ef110ccdfd97bc85026254224815567928ed243
  base-dir: "*/*/*"
  url: golang-proxy:github.com/inconshreveable/mousetrap/@v/v1.1.0.zip
- kind: zip
  directory: core/vendor/github.com/lucasb-eyer/go-colorful
  ref: f2c9689fc5ca32b6ed1436bcce879b44e7b9d14f670681ab41974213f2acb217
  base-dir: "*/*/*"
  url: golang-proxy:github.com/lucasb-eyer/go-colorful/@v/v1.4.0.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-isatty
  ref: aee31e550fcdffd1fc4b8e7e7fa8bb59aa4311f9c0b51893f8c6837f8c3f7f37
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-isatty/@v/v0.0.22.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-localereader
  ref: 463b9774db65b769ec675e235f69f1c4a2e433e821374c8620e66669bde5240f
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-localereader/@v/v0.0.2-0.20220822084749-2491eb6c1c75.zip
- kind: zip
  directory: core/vendor/github.com/mattn/go-runewidth
  ref: 587ac0cc4bb87a6bbabfa48e4a4f646c3b6b08deac7c99dd43e8835dd8156b67
  base-dir: "*/*/*"
  url: golang-proxy:github.com/mattn/go-runewidth/@v/v0.0.23.zip
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
  ref: cb8b073934cf7e579c9f80c4d12619d5f96fcf97af6f07fdc649e7acec0aaddf
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/sys/@v/v0.43.0.zip
- kind: zip
  directory: core/vendor/golang.org/x/text
  ref: 15c60227cf084605a0256b8eacd9cfaf411109fe80c9e68b14a9367a5e42b23c
  base-dir: "*/*/*"
  url: golang-proxy:golang.org/x/text/@v/v0.36.0.zip
- kind: zip
  directory: core/vendor/gopkg.in/yaml.v3
  ref: aab8fbc4e6300ea08e6afe1caea18a21c90c79f489f52c53e2f20431f1a9a015
  base-dir: "*/*"
  url: golang-proxy:gopkg.in/yaml.v3/@v/v3.0.1.zip

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/git.bst
- deps/go-1.26.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libnotify.bst
- gnome-build-meta.bst:core-deps/accountsservice.bst
- gnome-build-meta.bst:core-deps/cups-pk-helper.bst
- desktop/quickshell.bst
- desktop/matugen.bst
- desktop/ddcutil.bst
- desktop/brightnessctl.bst
- deps/qt6-qtmultimedia.bst
- deps/kimageformats.bst
- deps/dgop.bst
- cli/cava.bst

variables:
  make-args: build BUILD_TIME=2011-11-10_15:00:00

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
    install -Dpm0644 -t "%{install-root}%{sysconfdir}/pam.d/" quickshell/assets/pam/fprint
    install -Dpm0644 -t "%{install-root}%{sysconfdir}/pam.d/" quickshell/assets/pam/u2f
    install -Dm0644 -t "%{install-root}%{prefix}/lib/systemd/user/" assets/systemd/dms.service

    # dms-greeter
    install -Dm0755 "quickshell/Modules/Greetd/assets/dms-greeter" -t "%{install-root}%{bindir}"
    install -Dm0644 "quickshell/systemd/tmpfiles-dms-greeter.conf" "%{install-root}%{indep-libdir}/tmpfiles.d/dms-greeter.conf"
  - |
    %{install-extra}
