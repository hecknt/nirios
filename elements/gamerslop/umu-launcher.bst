kind: make

sources:
- kind: git_repo
  url: github:Open-Wine-Components/umu-launcher.git
  track: "*.*.*"
  exclude:
  - "*.rc*"
  ref: 1.4.0-0-ge17b257d4e6c06295e2ff607a6e9865d2033db43
- kind: cargo2
  url: crates:crates
  ref:
  - kind: registry
    name: base16ct
    version: 1.0.0
    sha: fd307490d624467aa6f74b0eabb77633d1f758a7b25f12bceb0b22e08d9726f6
  - kind: registry
    name: base64ct
    version: 1.6.0
    sha: 8c3c1a368f70d6cf7302d78f8f7093da241fb8e8807c05cc9e51a125895a6d5b
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: cipher
    version: 0.4.4
    sha: 773f3b9af64447d2ce9850330c473515014aa235e6a783b02db81ff39e4a3dad
  - kind: registry
    name: cpufeatures
    version: 0.2.16
    sha: 16b80225097f2e5ae4e7179dd2266824648f3e2f49d9134d584b76389d31c4c3
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: curve25519-dalek
    version: 4.1.3
    sha: 97fb8b7c4503de7d6ae7b42ab72a5a59857b4c937ec27a3d4539dba95b5ab2be
  - kind: registry
    name: curve25519-dalek-derive
    version: 0.1.1
    sha: f46882e17999c6cc590af592290432be3bce0428cb0d5f8b6715e4dc7b383eb3
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: ed25519
    version: 2.2.3
    sha: 115531babc129696a58c64a4fef0a8bf9e9698629fb97e9e40767d235cfbcd53
  - kind: registry
    name: ed25519-dalek
    version: 2.1.1
    sha: 4a3daa8e81a3963a60642bcc1f90a670680bd4a77535faa384e9d1c79d620871
  - kind: registry
    name: fiat-crypto
    version: 0.2.9
    sha: 28dea519a9695b9977216879a3ebfddf92f1c08c05d984f8996aecd6ecdc811d
  - kind: registry
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: inout
    version: 0.1.3
    sha: a0c10553d664a4d0bcff9f4215d0aac67a639cc68ef660840afe309b807bc9f5
  - kind: registry
    name: libc
    version: 0.2.169
    sha: b5aba8db14291edd000dfcc4d620c7ebfb122c613afb886ca8803fa4e128a20a
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: pem-rfc7468
    version: 0.7.0
    sha: 88b39c9bfcfc231068454382784bb460aae594343fb030d46e9f50a645418412
  - kind: registry
    name: portable-atomic
    version: 1.10.0
    sha: 280dc24453071f1b63954171985a0b0d30058d287960968b9b2aca264c8d4ee6
  - kind: registry
    name: proc-macro2
    version: 1.0.92
    sha: 37d3544b3f2748c54e147655edb5025752e2303145b5aefb3c3ea2c78b973bb0
  - kind: registry
    name: pyo3
    version: 0.28.2
    sha: cf85e27e86080aafd5a22eae58a162e133a589551542b3e5cee4beb27e54f8e1
  - kind: registry
    name: pyo3-build-config
    version: 0.28.2
    sha: 8bf94ee265674bf76c09fa430b0e99c26e319c945d96ca0d5a8215f31bf81cf7
  - kind: registry
    name: pyo3-ffi
    version: 0.28.2
    sha: 491aa5fc66d8059dd44a75f4580a2962c1862a1c2945359db36f6c2818b748dc
  - kind: registry
    name: pyo3-macros
    version: 0.28.2
    sha: f5d671734e9d7a43449f8480f8b38115df67bef8d21f76837fa75ee7aaa5e52e
  - kind: registry
    name: pyo3-macros-backend
    version: 0.28.2
    sha: 22faaa1ce6c430a1f71658760497291065e6450d7b5dc2bcf254d49f66ee700a
  - kind: registry
    name: quote
    version: 1.0.38
    sha: 0e4dccaaaf89514f546c693ddc140f729f958c247918a13380cccc6078391acc
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: semver
    version: 1.0.24
    sha: 3cb6eb87a131f756572d7fb904f6e7b68633f09cca868c5df1c4b8d1a694bbba
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: signature
    version: 2.2.0
    sha: 77549399552de45a898a580c1b41d445bf730df867cc44e6c0233bbc4b8329de
  - kind: registry
    name: ssh-cipher
    version: 0.2.0
    sha: caac132742f0d33c3af65bfcde7f6aa8f62f0e991d80db99149eb9d44708784f
  - kind: registry
    name: ssh-encoding
    version: 0.2.0
    sha: eb9242b9ef4108a78e8cd1a2c98e193ef372437f8c22be363075233321dd4a15
  - kind: registry
    name: ssh-key
    version: 0.6.7
    sha: 3b86f5297f0f04d08cabaa0f6bff7cb6aec4d9c3b49d87990d63da9d9156a8c3
  - kind: registry
    name: subtle
    version: 2.6.1
    sha: 13c2bddecc57b384dee18652358fb23172facb8a2c51ccc10d74c157bdea3292
  - kind: registry
    name: syn
    version: 2.0.96
    sha: d5d0adab1ae378d7f53bdebc67a39f1f151407ef230f0ce2883572f5d8985c80
  - kind: registry
    name: target-lexicon
    version: 0.13.5
    sha: adb6935a6f5c20170eeceb1a3835a49e12e19d792f6dd344ccc76a985ca5a6ca
  - kind: registry
    name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - kind: registry
    name: unicode-ident
    version: 1.0.14
    sha: adb9e6ca4f869e1180728b7950e35922a7fc6397f7b641499e8f3ef06e50dc83
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: zeroize
    version: 1.8.1
    sha: ced3678a2879b30306d323f4542626697a464a97c0a07c9aebf7ebca65cd4dde
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/python3-build.bst
- freedesktop-sdk.bst:components/python3-hatchling.bst
- freedesktop-sdk.bst:components/python3-installer.bst
- freedesktop-sdk.bst:components/python3-maturin.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/scdoc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:bootstrap/libxcrypt.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/diffutils.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/usbutils.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- gnome-build-meta.bst:core-deps/zenity.bst
- gnome-build-meta.bst:gnomeos-deps/python3-zstd.bst

config:
  build-commands:
  - |
    ./configure.sh --prefix=/usr --use-system-pyzstd --use-system-urllib
  - |
    %{make}
