kind: manual

sources:
- kind: git_repo
  url: sourcehut:~kennylevinsen/greetd
  track: "*"
  ref: 0.10.3-0-g08efe60feceea8c81f9571c666880ff1e1c2e3ff
- kind: local
  path: files/greetd
- kind: cargo2
  url: crates:crates
  ref:
  - kind: registry
    name: addr2line
    version: 0.21.0
    sha: 8a30b2e23b9e17a9f90641c7ab1549cd9b44f296d3ccbf309d2863cfe398a0cb
  - kind: registry
    name: adler
    version: 1.0.2
    sha: f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe
  - kind: registry
    name: async-trait
    version: 0.1.80
    sha: c6fa2087f2753a7da8cc1c0dbfcf89579dd57458e36769de5ac750b4671737ca
  - kind: registry
    name: backtrace
    version: 0.3.71
    sha: 26b05800d2e817c8b3b4b54abd461726265fa9789ae34330622f2db9ee696f9d
  - kind: registry
    name: bitflags
    version: 2.5.0
    sha: cf4b9d6a944f767f8e5e0db018570623c85f3d925ac718db4e06d0187adb21c1
  - kind: registry
    name: bytes
    version: 1.6.0
    sha: 514de17de45fdb8dc022b1a7975556c53c86f9f0aa5f534b98977b171857c2c9
  - kind: registry
    name: cc
    version: 1.0.95
    sha: d32a725bc159af97c3e629873bb9f88fb8cf8a4867175f76dc987815ea07c83b
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: enquote
    version: 1.1.0
    sha: 06c36cb11dbde389f4096111698d8b567c0720e3452fd5ac3e6b4e47e1939932
  - kind: registry
    name: getopts
    version: 0.2.21
    sha: 14dbbfd5c71d70241ecf9e6f13737f7b5ce823821063188d7e46c41d371eebd5
  - kind: registry
    name: gimli
    version: 0.28.1
    sha: 4271d37baee1b8c7e4b708028c57d816cf9d2434acb33a549475f78c181f6253
  - kind: registry
    name: itoa
    version: 1.0.11
    sha: 49f1f14873335454500d59611f1cf4a4b0f786f9ac11f4312a78e4cf2566695b
  - kind: registry
    name: libc
    version: 0.2.153
    sha: 9c198f91728a82281a64e1f4f9eeb25d82cb32a5de251c6bd1b5154d63a8e7bd
  - kind: registry
    name: memchr
    version: 2.7.2
    sha: 6c8640c5d730cb13ebd907d8d04b52f55ac9a2eec55b440c8892f40d56c76c1d
  - kind: registry
    name: miniz_oxide
    version: 0.7.2
    sha: 9d811f3e15f28568be3407c8e7fdb6514c1cda3cb30683f15b6a1a1dc4ea14a7
  - kind: registry
    name: mio
    version: 0.8.11
    sha: a4a650543ca06a924e8b371db273b2756685faae30f8487da1b56505a8f78b0c
  - kind: registry
    name: nix
    version: 0.27.1
    sha: 2eb04e9c688eff1c89d72b407f168cf79bb9e867a9d3323ed6c01519eb9cc053
  - kind: registry
    name: object
    version: 0.32.2
    sha: a6a622008b6e321afc04970976f62ee297fdbaa6f95318ca343e3eebb9648441
  - kind: registry
    name: pam-sys
    version: 0.5.6
    sha: cd4858311a097f01a0006ef7d0cd50bca81ec430c949d7bf95cbefd202282434
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: proc-macro2
    version: 1.0.81
    sha: 3d1597b0c024618f09a9c3b8655b7e430397a36d23fdafec26d6965e9eec3eba
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
  - kind: registry
    name: rpassword
    version: 5.0.1
    sha: ffc936cf8a7ea60c58f030fd36a612a48f440610214dc54bc36431f9ea0c3efb
  - kind: registry
    name: rustc-demangle
    version: 0.1.23
    sha: d626bb9dae77e28219937af045c257c28bfd3f69333c512553507f5f9798cb76
  - kind: registry
    name: ryu
    version: 1.0.17
    sha: e86697c916019a8588c99b5fac3cead74ec0b4b819707a682fd4d23fa0ce1ba1
  - kind: registry
    name: serde
    version: 1.0.198
    sha: 9846a40c979031340571da2545a4e5b7c4163bdae79b301d5f86d03979451fcc
  - kind: registry
    name: serde_derive
    version: 1.0.198
    sha: e88edab869b01783ba905e7d0153f9fc1a6505a96e4ad3018011eedb838566d9
  - kind: registry
    name: serde_json
    version: 1.0.116
    sha: 3e17db7126d17feb94eb3fad46bf1a96b034e8aacbc2e775fe81505f8b0b2813
  - kind: registry
    name: signal-hook-registry
    version: 1.4.1
    sha: d8229b473baa5980ac72ef434c4415e70c4b5e71b423043adb4ba059f89c99a1
  - kind: registry
    name: socket2
    version: 0.5.6
    sha: 05ffd9c0a93b7543e062e759284fcf5f5e3b098501104bfbdde4d404db792871
  - kind: registry
    name: syn
    version: 2.0.60
    sha: 909518bc7b1c9b779f1bbf07f2929d35af9f0f37e47c6e9ef7f9dddc1e1821f3
  - kind: registry
    name: thiserror
    version: 1.0.58
    sha: 03468839009160513471e86a034bb2c5c0e4baae3b43f79ffc55c4a5427b3297
  - kind: registry
    name: thiserror-impl
    version: 1.0.58
    sha: c61f3ba182994efc43764a46c018c347bc492c79f024e705f46567b418f6d4f7
  - kind: registry
    name: tokio
    version: 1.37.0
    sha: 1adbebffeca75fcfd058afa480fb6c0b81e165a0323f9c9d39c9697e37c46787
  - kind: registry
    name: tokio-macros
    version: 2.2.0
    sha: 5b8a1e28f2deaa14e508979454cb3a223b10b938b45af148bc0986de36f1923b
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: unicode-width
    version: 0.1.11
    sha: e51733f11c9c4f72aa0c160008246859e340b00807569a0da0e7a1079b27ba85
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - kind: registry
    name: windows-targets
    version: 0.52.5
    sha: 6f0713a46559409d202e70e28227288446bf7841d3211583a4b53e3f6d96e7eb
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.5
    sha: 7088eed71e8b8dda258ecc8bac5fb1153c5cffaf2578fc8ff5d61e23578d3263
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.5
    sha: 9985fd1504e250c615ca5f281c3f7a6da76213ebd5ccc9561496568a2752afb6
  - kind: registry
    name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.5
    sha: 88ba073cf16d5372720ec942a8ccbf61626074c6d4dd2e745299726ce8b89670
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.5
    sha: 87f4261229030a858f36b459e748ae97545d6f1ec60e5e0d6a3d32e0dc232ee9
  - kind: registry
    name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.5
    sha: db3c2bf3d13d5b658be73463284eaf12830ac9a26a90c717b7f771dfe97487bf
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.5
    sha: 4e4246f76bdeff09eb48875a0fd3e2af6aada79d409d33011886d3e1581517d9
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.5
    sha: 852298e482cd67c356ddd9570386e2862b5673c85bd5f88df9ab6802b334c596
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.5
    sha: bec47e5bfd1bff0eeaf6d8b485cc1074891a197ab4225d504cb7a1ab88b02bf0

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/scdoc.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/gcc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst

config:
  build-commands:
  - cargo build --release --all-features --frozen --offline
  - make -C man all

  install-commands:
  - |
    # greetd itself
    make -C man DESTDIR="%{install-root}" PREFIX="%{prefix}" install
    install -Dm0755 target/release/greetd -t "%{install-root}%{bindir}"
    install -Dm0644 greetd.service -t "%{install-root}%{prefix}/lib/systemd/system"
    install -Dm0644 greetd.pam "%{install-root}%{sysconfdir}/pam.d/greetd"
    install -Dm0644 greetd.sysusers "%{install-root}%{prefix}/lib/sysusers.d/greetd.conf"
    # agreety
    install -Dm0755 target/release/agreety -t "%{install-root}%{bindir}"
  - |
    %{install-extra}
