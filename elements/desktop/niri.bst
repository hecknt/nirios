kind: manual

sources:
- kind: git_repo
  url: github:yalter/niri.git
  track: v*
  ref: v25.11-0-gb35bcae35b3f9665043c335e55ed5828af77db85
- kind: cargo2
  ref:
  - kind: registry
    name: accesskit
    version: 0.21.0
    sha: 9c0690ad6e6f9597b8439bd3c95e8c6df5cd043afd950c6d68f3b37df641e27c
  - kind: registry
    name: accesskit_atspi_common
    version: 0.14.0
    sha: 8fb511e093896d3cae0efba40322087dff59ea322308a3e6edf70f28d22f2607
  - kind: registry
    name: accesskit_consumer
    version: 0.30.0
    sha: ec27574c1baeb7747c802a194566b46b602461e81dc4957949580ea8da695038
  - kind: registry
    name: accesskit_unix
    version: 0.17.0
    sha: 2abbfb16144cca5bb2ea6acad5865b7c1e70d4fa171ceba1a52ea8e78a7515f4
  - kind: registry
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: ahash
    version: 0.8.12
    sha: 5a15f179cd60c4584b8a8c596927aadc462e27f2ca70c04e0071964a73ba7a75
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: aliasable
    version: 0.1.3
    sha: 250f629c0161ad8107cf89319e990051fae62832fd343083bea452d93e2205fd
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: android-activity
    version: 0.6.0
    sha: ef6978589202a00cd7e118380c448a08b6ed394c3a8df3a430d0898e3a42d046
  - kind: registry
    name: android-properties
    version: 0.2.2
    sha: fc7eb209b1518d6bb87b283c20095f5228ecda460da70b44f0802523dea6da04
  - kind: registry
    name: annotate-snippets
    version: 0.11.5
    sha: 710e8eae58854cdc1790fcb56cca04d712a17be849eeb81da2a724bf4bae2bc4
  - kind: registry
    name: anstream
    version: 0.6.20
    sha: 3ae563653d1938f79b1ab1b5e668c87c76a9930414574a6583a7b7e11a8e6192
  - kind: registry
    name: anstyle
    version: 1.0.13
    sha: 5192cca8006f1fd4f7237516f40fa183bb07f8fbdfedaa0036de5ea9b0b45e78
  - kind: registry
    name: anstyle-parse
    version: 0.2.7
    sha: 4e7644824f0aa2c7b9384579234ef10eb7efb6a0deb83f9630a49594dd9c15c2
  - kind: registry
    name: anstyle-query
    version: 1.1.4
    sha: 9e231f6134f61b71076a3eab506c379d4f36122f2af15a9ff04415ea4c3339e2
  - kind: registry
    name: anstyle-wincon
    version: 3.0.10
    sha: 3e0633414522a32ffaac8ac6cc8f748e090c5717661fddeea04219e2344f5f2a
  - kind: registry
    name: anyhow
    version: 1.0.100
    sha: a23eb6b1614318a8071c9b2521f36b424b2c83db5eb3a0fead4a6c0809af6e61
  - kind: registry
    name: appendlist
    version: 1.4.0
    sha: e149dc73cd30538307e7ffa2acd3d2221148eaeed4871f246657b1c3eaa1cbd2
  - kind: registry
    name: approx
    version: 0.4.0
    sha: 3f2a05fd1bd10b2527e20a2cd32d8873d115b8b39fe219ee25f42a8aca6ba278
  - kind: registry
    name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - kind: registry
    name: arrayvec
    version: 0.7.6
    sha: 7c02d123df017efcdfbd739ef81735b36c5ba83ec3c59c80a9d7ecc718f92e50
  - kind: registry
    name: as-raw-xcb-connection
    version: 1.0.1
    sha: 175571dd1d178ced59193a6fc02dde1b972eb0bc56c892cde9beeceac5bf0f6b
  - kind: registry
    name: async-broadcast
    version: 0.7.2
    sha: 435a87a52755b8f27fcf321ac4f04b2802e337c8c4872923137471ec39c37532
  - kind: registry
    name: async-channel
    version: 2.5.0
    sha: 924ed96dd52d1b75e9c1a3e6275715fd320f5f9439fb5a4a11fa51f4221158d2
  - kind: registry
    name: async-executor
    version: 1.13.3
    sha: 497c00e0fd83a72a79a39fcbd8e3e2f055d6f6c7e025f3b3d91f4f8e76527fb8
  - kind: registry
    name: async-io
    version: 2.6.0
    sha: 456b8a8feb6f42d237746d4b3e9a178494627745c3c56c6ea55d92ba50d026fc
  - kind: registry
    name: async-lock
    version: 3.4.1
    sha: 5fd03604047cee9b6ce9de9f70c6cd540a0520c813cbd49bae61f33ab80ed1dc
  - kind: registry
    name: async-process
    version: 2.5.0
    sha: fc50921ec0055cdd8a16de48773bfeec5c972598674347252c0399676be7da75
  - kind: registry
    name: async-recursion
    version: 1.1.1
    sha: 3b43422f69d8ff38f95f1b2bb76517c91589a924d1559a0e935d7c8ce0274c11
  - kind: registry
    name: async-signal
    version: 0.2.13
    sha: 43c070bbf59cd3570b6b2dd54cd772527c7c3620fce8be898406dd3ed6adc64c
  - kind: registry
    name: async-task
    version: 4.7.1
    sha: 8b75356056920673b02621b35afd0f7dda9306d03c79a30f5c56c44cf256e3de
  - kind: registry
    name: async-trait
    version: 0.1.89
    sha: 9035ad2d096bed7955a320ee7e2230574d28fd3c3a0f186cbea1ff3c7eed5dbb
  - kind: registry
    name: atomic
    version: 0.6.1
    sha: a89cbf775b137e9b968e67227ef7f775587cde3fd31b0d8599dbd0f598a48340
  - kind: registry
    name: atomic-waker
    version: 1.1.2
    sha: 1505bd5d3d116872e7271a6d4e16d81d0c8570876c8de68093a09ac269d8aac0
  - kind: registry
    name: atomic_float
    version: 1.1.0
    sha: 628d228f918ac3b82fe590352cc719d30664a0c13ca3a60266fe02c7132d480a
  - kind: registry
    name: atspi
    version: 0.25.0
    sha: c83247582e7508838caf5f316c00791eee0e15c0bf743e6880585b867e16815c
  - kind: registry
    name: atspi-common
    version: 0.9.0
    sha: 33dfc05e7cdf90988a197803bf24f5788f94f7c94a69efa95683e8ffe76cfdfb
  - kind: registry
    name: atspi-connection
    version: 0.9.0
    sha: 4193d51303d8332304056ae0004714256b46b6635a5c556109b319c0d3784938
  - kind: registry
    name: atspi-proxies
    version: 0.9.0
    sha: d2eebcb9e7e76f26d0bcfd6f0295e1cd1e6f33bedbc5698a971db8dc43d7751c
  - kind: registry
    name: autocfg
    version: 1.5.0
    sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
  - kind: registry
    name: base64
    version: 0.21.7
    sha: 9d297deb1925b89f2ccc13d7635fa0714f12c87adce1c75356b39ca9b7178567
  - kind: registry
    name: bindgen
    version: 0.72.1
    sha: 993776b509cfb49c750f11b8f07a46fa23e0a1386ffc01fb1e7d343efc387895
  - kind: registry
    name: bit-set
    version: 0.8.0
    sha: 08807e080ed7f9d5433fa9b275196cfc35414f66a0c79d864dc51a0d825231a3
  - kind: registry
    name: bit-vec
    version: 0.8.0
    sha: 5e764a1d40d510daf35e07be9eb06e75770908c27d411ee6c92109c9840eaaf7
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.9.4
    sha: 2261d10cca569e4643e526d8dc2e62e433cc8aba21ab764233731f8d369bf394
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: block2
    version: 0.5.1
    sha: 2c132eebf10f5cad5289222520a4a058514204aed6d791f1cf4fe8088b82d15f
  - kind: registry
    name: blocking
    version: 1.6.2
    sha: e83f8d02be6967315521be875afa792a316e28d57b5a2d401897e2a7921b7f21
  - kind: registry
    name: bumpalo
    version: 3.19.0
    sha: 46c5e41b57b8bba42a04676d81cb89e9ee8e859a1a66f80a5a72e1cb76b34d43
  - kind: registry
    name: bytemuck
    version: 1.23.2
    sha: 3995eaeebcdf32f91f980d360f78732ddc061097ab4e39991ae7a6ace9194677
  - kind: registry
    name: bytemuck_derive
    version: 1.10.1
    sha: 4f154e572231cb6ba2bd1176980827e3d5dc04cc183a75dea38109fbdd672d29
  - kind: registry
    name: bytes
    version: 1.10.1
    sha: d71b6127be86fdcfddb610f7182ac57211d4b18a3e9c82eb2d17662f2227ad6a
  - kind: registry
    name: cairo-rs
    version: 0.20.12
    sha: 91e3bd0f4e25afa9cabc157908d14eeef9067d6448c49414d17b3fb55f0eadd0
  - kind: registry
    name: cairo-sys-rs
    version: 0.20.10
    sha: 059cc746549898cbfd9a47754288e5a958756650ef4652bbb6c5f71a6bda4f8b
  - kind: registry
    name: calloop
    version: 0.13.0
    sha: b99da2f8558ca23c71f4fd15dc57c906239752dd27ff3c00a1d56b685b7cbfec
  - kind: registry
    name: calloop
    version: 0.14.3
    sha: cb9f6e1368bd4621d2c86baa7e37de77a938adf5221e5dd3d6133340101b309e
  - kind: registry
    name: calloop-wayland-source
    version: 0.3.0
    sha: 95a66a987056935f7efce4ab5668920b5d0dac4a7c99991a67395f13702ddd20
  - kind: registry
    name: calloop-wayland-source
    version: 0.4.1
    sha: 138efcf0940a02ebf0cc8d1eff41a1682a46b431630f4c52450d6265876021fa
  - kind: registry
    name: cc
    version: 1.2.39
    sha: e1354349954c6fc9cb0deab020f27f783cf0b604e8bb754dc4658ecf0d29c35f
  - kind: registry
    name: cesu8
    version: 1.1.0
    sha: 6d43a04d8753f35258c91f8ec639f792891f748a1edbd759cf1dcea3382ad83c
  - kind: registry
    name: cexpr
    version: 0.6.0
    sha: 6fac387a98bb7c37292057cffc56d62ecb629900026402633ae9160df93a8766
  - kind: registry
    name: cfg-expr
    version: 0.18.0
    sha: 1a2b34126159980f92da2a08bdec0694fd80fb5eb9e48aff25d20a0d8dfa710d
  - kind: registry
    name: cfg-if
    version: 1.0.3
    sha: 2fd1289c04a9ea8cb22300a459a72a385d7c73d3259e2ed7dcb2af674838cfa9
  - kind: registry
    name: cfg_aliases
    version: 0.2.1
    sha: 613afe47fcd5fac7ccf1db93babcb082c5994d996f20b8b159f2ad1658eb5724
  - kind: registry
    name: cgmath
    version: 0.18.0
    sha: 1a98d30140e3296250832bbaaff83b27dcd6fa3cc70fb6f1f3e5c9c0023b5317
  - kind: registry
    name: chumsky
    version: 0.9.3
    sha: 8eebd66744a15ded14960ab4ccdbfb51ad3b81f51f3f04a80adac98c985396c9
  - kind: registry
    name: clang-sys
    version: 1.8.1
    sha: 0b023947811758c97c59bf9d1c188fd619ad4718dcaa767947df1cadb14f39f4
  - kind: registry
    name: clap
    version: 4.5.48
    sha: e2134bb3ea021b78629caa971416385309e0131b351b25e01dc16fb54e1b5fae
  - kind: registry
    name: clap_builder
    version: 4.5.48
    sha: c2ba64afa3c0a6df7fa517765e31314e983f51dda798ffba27b988194fb65dc9
  - kind: registry
    name: clap_complete
    version: 4.5.58
    sha: 75bf0b32ad2e152de789bb635ea4d3078f6b838ad7974143e99b99f45a04af4a
  - kind: registry
    name: clap_complete_nushell
    version: 4.5.8
    sha: 0a0c951694691e65bf9d421d597d68416c22de9632e884c28412cb8cd8b73dce
  - kind: registry
    name: clap_derive
    version: 4.5.47
    sha: bbfd7eae0b0f1a6e63d4b13c9c478de77c2eb546fba158ad50b4203dc24b9f9c
  - kind: registry
    name: clap_lex
    version: 0.7.5
    sha: b94f61472cee1439c0b966b47e3aca9ae07e45d070759512cd390ea2bebc6675
  - kind: registry
    name: colorchoice
    version: 1.0.4
    sha: b05b61dc5112cbb17e4b6cd61790d9845d13888356391624cbe7e41efeac1e75
  - kind: registry
    name: combine
    version: 4.6.7
    sha: ba5a308b75df32fe02788e748662718f03fde005016435c444eea572398219fd
  - kind: registry
    name: concurrent-queue
    version: 2.5.0
    sha: 4ca0197aee26d1ae37445ee532fefce43251d24cc7c166799f4d46817f1d3973
  - kind: registry
    name: console
    version: 0.15.11
    sha: 054ccb5b10f9f2cbf51eb355ca1d05c2d279ce1804688d0db74b4733a5aeafd8
  - kind: registry
    name: convert_case
    version: 0.8.0
    sha: baaaa0ecca5b51987b9423ccdc971514dd8b0bb7b4060b983d3664dad3f1f89f
  - kind: registry
    name: cookie-factory
    version: 0.3.3
    sha: 9885fa71e26b8ab7855e2ec7cae6e9b380edff76cd052e07c683a0319d51b3a2
  - kind: registry
    name: core-foundation
    version: 0.9.4
    sha: 91e195e091a93c46f7102ec7818a2aa394e1e1771c3ab4825963fa03e45afb8f
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: core-graphics
    version: 0.23.2
    sha: c07782be35f9e1140080c6b96f0d44b739e2278479f64e02fdab4e32dfd8b081
  - kind: registry
    name: core-graphics-types
    version: 0.1.3
    sha: 45390e6114f68f718cc7a830514a96f903cccd70d02a8f6d9f643ac4ba45afaf
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: crc32fast
    version: 1.5.0
    sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
  - kind: registry
    name: crossbeam-deque
    version: 0.8.6
    sha: 9dd111b7b7f7d55b72c0a6ae361660ee5853c9af73f70c3c2ef6858b950e2e51
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.21
    sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: csscolorparser
    version: 0.7.2
    sha: 5fda6aace1fbef3aa217b27f4c8d7d071ef2a70a5ca51050b1f17d40299d3f16
  - kind: registry
    name: cursor-icon
    version: 1.2.0
    sha: f27ae1dd37df86211c42e150270f82743308803d90a6f6e6651cd730d5e1732f
  - kind: registry
    name: diff
    version: 0.1.13
    sha: 56254986775e3233ffa9c4d7d3faaf6d36a2c09d30b20687e9f88bc8bafc16c8
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: directories
    version: 6.0.0
    sha: 16f5094c54661b38d03bd7e50df373292118db60b585c08a411c6d840017fe7d
  - kind: registry
    name: dirs-sys
    version: 0.5.0
    sha: e01a3366d27ee9890022452ee61b2b63a67e6f13f58900b651ff5665f0bb1fab
  - kind: registry
    name: dispatch
    version: 0.2.0
    sha: bd0c93bb4b0c6d9b77f4435b0ae98c24d17f1c45b2ff844c6151a07256ca923b
  - kind: registry
    name: displaydoc
    version: 0.2.5
    sha: 97369cbbc041bc366949bc74d34658d6cda5621039731c6310521892a3a20ae0
  - kind: registry
    name: dlib
    version: 0.5.2
    sha: 330c60081dcc4c72131f8eb70510f1ac07223e5d4163db481a04a0befcffa412
  - kind: registry
    name: downcast-rs
    version: 1.2.1
    sha: 75b325c5dbd37f80359721ad39aca5a29fb04c89279657cffdda8736d0c0b9d2
  - kind: registry
    name: dpi
    version: 0.1.2
    sha: d8b14ccef22fc6f5a8f4d7d768562a182c04ce9a3b3157b91390b52ddfdf1a76
  - kind: registry
    name: drm
    version: 0.14.1
    sha: 80bc8c5c6c2941f70a55c15f8d9f00f9710ebda3ffda98075f996a0e6c92756f
  - kind: registry
    name: drm-ffi
    version: 0.9.0
    sha: d8e41459d99a9b529845f6d2c909eb9adf3b6d2f82635ae40be8de0601726e8b
  - kind: registry
    name: drm-fourcc
    version: 2.2.0
    sha: 0aafbcdb8afc29c1a7ee5fbe53b5d62f4565b35a042a662ca9fecd0b54dae6f4
  - kind: registry
    name: drm-sys
    version: 0.8.0
    sha: bafb66c8dbc944d69e15cfcc661df7e703beffbaec8bd63151368b06c5f9858c
  - kind: registry
    name: dyn-clone
    version: 1.0.20
    sha: d0881ea181b1df73ff77ffaaf9c7544ecc11e82fba9b5f27b262a3c73a332555
  - kind: registry
    name: either
    version: 1.15.0
    sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
  - kind: registry
    name: encode_unicode
    version: 1.0.0
    sha: 34aa73646ffb006b8f5147f3dc182bd4bcb190227ce861fc4a4844bf8e3cb2c0
  - kind: registry
    name: endi
    version: 1.1.0
    sha: a3d8a32ae18130a3c84dd492d4215c3d913c3b07c6b63c2eb3eb7ff1101ab7bf
  - kind: registry
    name: enumflags2
    version: 0.7.12
    sha: 1027f7680c853e056ebcec683615fb6fbbc07dbaa13b4d5d9442b146ded4ecef
  - kind: registry
    name: enumflags2_derive
    version: 0.7.12
    sha: 67c78a4d8fdf9953a5c9d458f9efe940fd97a0cab0941c075a813ac594733827
  - kind: registry
    name: equivalent
    version: 1.0.2
    sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: event-listener
    version: 5.4.1
    sha: e13b66accf52311f30a0db42147dadea9850cb48cd070028831ae5f5d4b856ab
  - kind: registry
    name: event-listener-strategy
    version: 0.5.4
    sha: 8be9f3dfaaffdae2972880079a491a1a8bb7cbed0b8dd7a347f668b4150a3b93
  - kind: registry
    name: fastrand
    version: 2.3.0
    sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
  - kind: registry
    name: fdeflate
    version: 0.3.7
    sha: 1e6853b52649d4ac5c0bd02320cddc5ba956bdb407c4b75a2c6b75bf51500f8c
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: find-msvc-tools
    version: 0.1.2
    sha: 1ced73b1dacfc750a6db6c0a0c3a3853c8b41997e2e2c563dc90804ae6867959
  - kind: registry
    name: flate2
    version: 1.1.2
    sha: 4a3d7db9596fecd151c5f638c0ee5d5bd487b6e0ea232e5dc96d5250f6f94b1d
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foldhash
    version: 0.1.5
    sha: d9c4f5dac5e15c24eb999c26181a6ca40b39fe946cbe4c263c7209467bc83af2
  - kind: registry
    name: foreign-types
    version: 0.5.0
    sha: d737d9aa519fb7b749cbc3b962edcf310a8dd1f4b67c91c4f83975dbdd17d965
  - kind: registry
    name: foreign-types-macros
    version: 0.2.3
    sha: 1a5c6c585bc94aaf2c7b51dd4c2ba22680844aba4c687be581871a6f518c5742
  - kind: registry
    name: foreign-types-shared
    version: 0.3.1
    sha: aa9a19cbb55df58761df49b23516a86d432839add4af60fc256da840f66ed35b
  - kind: registry
    name: form_urlencoded
    version: 1.2.2
    sha: cb4cb245038516f5f85277875cdaa4f7d2c9a0fa0468de06ed190163b1581fcf
  - kind: registry
    name: futures-channel
    version: 0.3.31
    sha: 2dff15bf788c671c1934e366d07e30c1814a8ef514e1af724a602e8a2fbe1b10
  - kind: registry
    name: futures-core
    version: 0.3.31
    sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
  - kind: registry
    name: futures-executor
    version: 0.3.31
    sha: 1e28d1d997f585e54aebc3f97d39e72338912123a67330d723fdbb564d646c9f
  - kind: registry
    name: futures-io
    version: 0.3.31
    sha: 9e5c1b78ca4aae1ac06c48a526a655760685149f0d465d21f37abfe57ce075c6
  - kind: registry
    name: futures-lite
    version: 2.6.1
    sha: f78e10609fe0e0b3f4157ffab1876319b5b0db102a2c60dc4626306dc46b44ad
  - kind: registry
    name: futures-macro
    version: 0.3.31
    sha: 162ee34ebcb7c64a8abebc059ce0fee27c2262618d7b60ed8faf72fef13c3650
  - kind: registry
    name: futures-task
    version: 0.3.31
    sha: f90f7dce0722e95104fcb095585910c0977252f286e354b5e3bd38902cd99988
  - kind: registry
    name: futures-util
    version: 0.3.31
    sha: 9fa08315bb612088cc391249efdc3bc77536f16c91f6cf495e6fbe85b20a4a81
  - kind: registry
    name: gbm
    version: 0.18.0
    sha: ce852e998d3ca5e4a97014fb31c940dc5ef344ec7d364984525fd11e8a547e6a
  - kind: registry
    name: gbm-sys
    version: 0.4.0
    sha: c13a5f2acc785d8fb6bf6b7ab6bfb0ef5dad4f4d97e8e70bb8e470722312f76f
  - kind: registry
    name: gdk-pixbuf
    version: 0.20.10
    sha: 2fd242894c084f4beed508a56952750bce3e96e85eb68fdc153637daa163e10c
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.20.10
    sha: 5b34f3b580c988bd217e9543a2de59823fafae369d1a055555e5f95a8b130b96
  - kind: registry
    name: gdk4
    version: 0.9.6
    sha: 4850c9d9c1aecd1a3eb14fadc1cdb0ac0a2298037e116264c7473e1740a32d60
  - kind: registry
    name: gdk4-sys
    version: 0.9.6
    sha: 6f6eb95798e2b46f279cf59005daf297d5b69555428f185650d71974a910473a
  - kind: registry
    name: generator
    version: 0.8.7
    sha: 605183a538e3e2a9c1038635cc5c2d194e2ee8fd0d1b66b8349fad7dbacce5a2
  - kind: registry
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: gethostname
    version: 1.0.2
    sha: fc257fdb4038301ce4b9cd1b3b51704509692bb3ff716a410cbd07925d9dae55
  - kind: registry
    name: getrandom
    version: 0.2.16
    sha: 335ff9f135e4384c8150d6f27c6daed433577f86b4750418338c01a1a2528592
  - kind: registry
    name: getrandom
    version: 0.3.3
    sha: 26145e563e54f2cadc477553f1ec5ee650b00862f0a58bcd12cbdc5f0ea2d2f4
  - kind: registry
    name: gio
    version: 0.20.12
    sha: 8e27e276e7b6b8d50f6376ee7769a71133e80d093bdc363bd0af71664228b831
  - kind: registry
    name: gio-sys
    version: 0.20.10
    sha: 521e93a7e56fc89e84aea9a52cfc9436816a4b363b030260b699950ff1336c83
  - kind: registry
    name: git-version
    version: 0.3.9
    sha: 1ad568aa3db0fcbc81f2f116137f263d7304f512a1209b35b85150d3ef88ad19
  - kind: registry
    name: git-version-macro
    version: 0.3.9
    sha: 53010ccb100b96a67bc32c0175f0ed1426b31b655d562898e57325f81c023ac0
  - kind: registry
    name: gl_generator
    version: 0.14.0
    sha: 1a95dfc23a2b4a9a2f5ab41d194f8bfda3cabec42af4e39f08c339eb2a0c124d
  - kind: registry
    name: glam
    version: 0.30.8
    sha: e12d847aeb25f41be4c0ec9587d624e9cd631bc007a8fd7ce3f5851e064c6460
  - kind: registry
    name: glib
    version: 0.20.12
    sha: ffc4b6e352d4716d84d7dde562dd9aee2a7d48beb872dd9ece7f2d1515b2d683
  - kind: registry
    name: glib-macros
    version: 0.20.12
    sha: e8084af62f09475a3f529b1629c10c429d7600ee1398ae12dd3bf175d74e7145
  - kind: registry
    name: glib-sys
    version: 0.20.10
    sha: 8ab79e1ed126803a8fb827e3de0e2ff95191912b8db65cee467edb56fc4cc215
  - kind: registry
    name: glob
    version: 0.3.3
    sha: 0cc23270f6e1808e30a928bdc84dea0b9b4136a8bc82338574f23baf47bbd280
  - kind: registry
    name: gobject-sys
    version: 0.20.10
    sha: ec9aca94bb73989e3cfdbf8f2e0f1f6da04db4d291c431f444838925c4c63eda
  - kind: registry
    name: graphene-rs
    version: 0.20.10
    sha: 6b86dfad7d14251c9acaf1de63bc8754b7e3b4e5b16777b6f5a748208fe9519b
  - kind: registry
    name: graphene-sys
    version: 0.20.10
    sha: df583a85ba2d5e15e1797e40d666057b28bc2f60a67c9c24145e6db2cc3861ea
  - kind: registry
    name: gsk4
    version: 0.9.6
    sha: 61f5e72f931c8c9f65fbfc89fe0ddc7746f147f822f127a53a9854666ac1f855
  - kind: registry
    name: gsk4-sys
    version: 0.9.6
    sha: 755059de55fa6f85a46bde8caf03e2184c96bfda1f6206163c72fb0ea12436dc
  - kind: registry
    name: gtk4
    version: 0.9.7
    sha: f274dd0102c21c47bbfa8ebcb92d0464fab794a22fad6c3f3d5f165139a326d6
  - kind: registry
    name: gtk4-macros
    version: 0.9.5
    sha: 0ed1786c4703dd196baf7e103525ce0cf579b3a63a0570fe653b7ee6bac33999
  - kind: registry
    name: gtk4-sys
    version: 0.9.6
    sha: 41e03b01e54d77c310e1d98647d73f996d04b2f29b9121fe493ea525a7ec03d6
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: hashbrown
    version: 0.15.5
    sha: 9229cfe53dfd69f0609a49f65461bd93001ea1ef889cd5529dd176593f5338a1
  - kind: registry
    name: heck
    version: 0.4.1
    sha: 95505c38b4572b2d910cecb0281560f54b440a19336cbbcb27bf6ce6adc6f5a8
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: hermit-abi
    version: 0.3.9
    sha: d231dfb89cfffdbc30e7fc41579ed6066ad03abda9e567ccafae602b97ec5024
  - kind: registry
    name: hermit-abi
    version: 0.5.2
    sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
  - kind: registry
    name: hex
    version: 0.4.3
    sha: 7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70
  - kind: registry
    name: icu_collections
    version: 1.5.0
    sha: db2fa452206ebee18c4b5c2274dbf1de17008e874b4dc4f0aea9d01ca79e4526
  - kind: registry
    name: icu_locid
    version: 1.5.0
    sha: 13acbb8371917fc971be86fc8057c41a64b521c184808a698c02acc242dbf637
  - kind: registry
    name: icu_locid_transform
    version: 1.5.0
    sha: 01d11ac35de8e40fdeda00d9e1e9d92525f3f9d887cdd7aa81d727596788b54e
  - kind: registry
    name: icu_locid_transform_data
    version: 1.5.1
    sha: 7515e6d781098bf9f7205ab3fc7e9709d34554ae0b21ddbcb5febfa4bc7df11d
  - kind: registry
    name: icu_normalizer
    version: 1.5.0
    sha: 19ce3e0da2ec68599d193c93d088142efd7f9c5d6fc9b803774855747dc6a84f
  - kind: registry
    name: icu_normalizer_data
    version: 1.5.1
    sha: c5e8338228bdc8ab83303f16b797e177953730f601a96c25d10cb3ab0daa0cb7
  - kind: registry
    name: icu_properties
    version: 1.5.1
    sha: 93d6020766cfc6302c15dbbc9c8778c37e62c14427cb7f6e601d849e092aeef5
  - kind: registry
    name: icu_properties_data
    version: 1.5.1
    sha: 85fb8799753b75aee8d2a21d7c14d9f38921b54b3dbda10f5a3c7a7b82dba5e2
  - kind: registry
    name: icu_provider
    version: 1.5.0
    sha: 6ed421c8a8ef78d3e2dbc98a973be2f3770cb42b606e3ab18d6237c4dfde68d9
  - kind: registry
    name: icu_provider_macros
    version: 1.5.0
    sha: 1ec89e9337638ecdc08744df490b221a7399bf8d164eb52a665454e60e075ad6
  - kind: registry
    name: idna
    version: 1.1.0
    sha: 3b0875f23caa03898994f6ddc501886a45c7d3d62d04d2d90788d47be1b1e4de
  - kind: registry
    name: idna_adapter
    version: 1.2.0
    sha: daca1df1c957320b2cf139ac61e7bd64fed304c5040df000a745aa1de3b4ef71
  - kind: registry
    name: indexmap
    version: 2.11.4
    sha: 4b0f83760fb341a774ed326568e19f5a863af4a952def8c39f9ab92fd95b88e5
  - kind: registry
    name: input
    version: 0.9.1
    sha: fbdc09524a91f9cacd26f16734ff63d7dc650daffadd2b6f84d17a285bd875a9
  - kind: registry
    name: input-sys
    version: 1.18.0
    sha: bd4f5b4d1c00331c5245163aacfe5f20be75b564c7112d45893d4ae038119eb0
  - kind: registry
    name: insta
    version: 1.43.2
    sha: 46fdb647ebde000f43b5b53f773c30cf9b0cb4300453208713fa38b2c70935a0
  - kind: registry
    name: io-lifetimes
    version: 1.0.11
    sha: eae7b9aee968036d54dce06cebaefd919e4472e753296daccd6d344e3e2df0c2
  - kind: registry
    name: is-terminal
    version: 0.4.16
    sha: e04d7f318608d35d4b61ddd75cbdaee86b023ebe2bd5a66ee0915f0bf93095a9
  - kind: registry
    name: is_ci
    version: 1.2.0
    sha: 7655c9839580ee829dfacba1d1278c2b7883e50a277ff7541299489d6bdfdc45
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: itertools
    version: 0.13.0
    sha: 413ee7dfc52ee1a4949ceeb7dbc8a33f2d6c088194d9f922fb8318faf1f01186
  - kind: registry
    name: itoa
    version: 1.0.15
    sha: 4a5f13b858c8d314ee3e8f639011f7ccefe71f97f96e50151fb991f267928e2c
  - kind: registry
    name: jni
    version: 0.21.1
    sha: 1a87aa2bb7d2af34197c04845522473242e1aa17c12f4935d5856491a7fb8c97
  - kind: registry
    name: jni-sys
    version: 0.3.0
    sha: 8eaf4bc02d17cbdd7ff4c7438cafcdf7fb9a4613313ad11b4f8fefe7d3fa0130
  - kind: registry
    name: jobserver
    version: 0.1.34
    sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
  - kind: registry
    name: js-sys
    version: 0.3.81
    sha: ec48937a97411dcb524a265206ccd4c90bb711fca92b2792c407f268825b9305
  - kind: registry
    name: keyframe
    version: 1.1.1
    sha: 60708bf7981518d09095d6f5673ce5cf6a64f1e0d9708b554f670e6d9d2bd9a9
  - kind: registry
    name: khronos_api
    version: 3.1.0
    sha: e2db585e1d738fc771bf08a151420d3ed193d9d895a36df7f6f8a9456b911ddc
  - kind: registry
    name: knuffel
    version: 3.2.0
    sha: 04bee6ddc6071011314b1ce4f7705fef6c009401dba4fd22cb0009db6a177413
  - kind: registry
    name: knuffel-derive
    version: 3.2.0
    sha: 91977f56c49cfb961e3d840e2e7c6e4a56bde7283898cf606861f1421348283d
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.7.2
    sha: 500135d29c16aabf67baafd3e7741d48e8b8978ca98bac39e589165c8dc78191
  - kind: registry
    name: libadwaita-sys
    version: 0.7.2
    sha: 6680988058c2558baf3f548a370e4e78da3bf7f08469daa822ac414842c912db
  - kind: registry
    name: libc
    version: 0.2.176
    sha: 58f929b4d672ea937a23a1ab494143d968337a5f47e56d0815df1e0890ddf174
  - kind: registry
    name: libdisplay-info
    version: 0.3.0
    sha: 59fd96dbb2381ff31f314f07accbdf8550febdcc5cd8761ecaf7c1763361c359
  - kind: registry
    name: libdisplay-info-derive
    version: 0.1.1
    sha: 8dc2c710cf5819e91220a446d9e64acc6814386cc22c509c3f0df83c0b874a98
  - kind: registry
    name: libdisplay-info-sys
    version: 0.3.0
    sha: 26590d55b8819f9c6b0d95d9d12dc9edbfd1f2413e88814a33b631ac049bb51f
  - kind: registry
    name: libloading
    version: 0.8.9
    sha: d7c4b02199fee7c5d21a5ae7d8cfa79a6ef5bb2fc834d6e9058e89c825efdc55
  - kind: registry
    name: libm
    version: 0.2.15
    sha: f9fbbcab51052fe104eb5e5d351cf728d30a5be1fe14d9be8a3b097481fb97de
  - kind: registry
    name: libredox
    version: 0.1.10
    sha: 416f7e718bdb06000964960ffa43b4335ad4012ae8b99060261aa4a8088d5ccb
  - kind: registry
    name: libseat
    version: 0.2.3
    sha: c23a245bbd5790c690791c4fe6eefafe4c75851226288a71cb657601135aa00c
  - kind: registry
    name: libseat-sys
    version: 0.1.9
    sha: 134621e50557e8698a96ccff3eadbc6f4b449d5d12f8aa48fcef8d40b4b02725
  - kind: registry
    name: libspa
    version: 0.9.2
    sha: b6b8cfa2a7656627b4c92c6b9ef929433acd673d5ab3708cda1b18478ac00df4
  - kind: registry
    name: libspa-sys
    version: 0.9.2
    sha: 901049455d2eb6decf9058235d745237952f4804bc584c5fcb41412e6adcc6e0
  - kind: registry
    name: libudev-sys
    version: 0.1.4
    sha: 3c8469b4a23b962c1396b9b451dda50ef5b283e8dd309d69033475fa9b334324
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: linux-raw-sys
    version: 0.4.15
    sha: d26c52dbd32dccf2d10cac7725f8eae5296885fb5703b261f7d0a0739ec807ab
  - kind: registry
    name: linux-raw-sys
    version: 0.6.5
    sha: 2a385b1be4e5c3e362ad2ffa73c392e53f031eaa5b7d648e64cd87f27f6063d7
  - kind: registry
    name: litemap
    version: 0.7.4
    sha: 4ee93343901ab17bd981295f2cf0026d4ad018c7c31ba84549a4ddbb47a45104
  - kind: registry
    name: log
    version: 0.4.28
    sha: 34080505efa8e45a4b816c349525ebe327ceaa8559756f0356cba97ef3bf7432
  - kind: registry
    name: loom
    version: 0.7.2
    sha: 419e0dc8046cb947daa77eb95ae174acfbddb7673b4151f56d1eed8e93fbfaca
  - kind: registry
    name: matchers
    version: 0.1.0
    sha: 8263075bb86c5a1b1427b5ae862e8889656f126e9f77c484496e8b47cf5c5558
  - kind: registry
    name: memchr
    version: 2.7.6
    sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
  - kind: registry
    name: memmap2
    version: 0.9.8
    sha: 843a98750cd611cc2965a8213b53b43e715f13c37a9e096c6408e69990961db7
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: miette
    version: 5.10.0
    sha: 59bb584eaeeab6bd0226ccf3509a69d7936d148cf3d036ad350abe35e8c6856e
  - kind: registry
    name: miette-derive
    version: 5.10.0
    sha: 49e7bc1560b95a3c4a25d03de42fe76ca718ab92d1a22a55b9b4cf67b3ae635c
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: ndk
    version: 0.9.0
    sha: c3f42e7bbe13d351b6bead8286a43aac9534b82bd3cc43e47037f012ebfd62d4
  - kind: registry
    name: ndk-context
    version: 0.1.1
    sha: 27b02d87554356db9e9a873add8782d4ea6e3e58ea071a9adb9a2e8ddb884a8b
  - kind: registry
    name: ndk-sys
    version: 0.6.0+11769913
    sha: ee6cda3051665f1fb8d9e08fc35c96d5a244fb1be711a03b71118828afc9a873
  - kind: registry
    name: nix
    version: 0.30.1
    sha: 74523f3a35e05aba87a1d978330aef40f67b0304ac79c1c00b294c9830543db6
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: nom
    version: 8.0.0
    sha: df9761775871bdef83bee530e60050f7e54b1105350d6884eb0fb4f46c2f9405
  - kind: registry
    name: nu-ansi-term
    version: 0.46.0
    sha: 77a8165726e8236064dbb45459242600304b42a5ea24ee2948e18e023bf7ba84
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: num_enum
    version: 0.7.4
    sha: a973b4e44ce6cad84ce69d797acf9a044532e4184c4f267913d1b546a0727b7a
  - kind: registry
    name: num_enum_derive
    version: 0.7.4
    sha: 77e878c846a8abae00dd069496dbe8751b16ac1c3d6bd2a7283a938e8228f90d
  - kind: registry
    name: objc-sys
    version: 0.3.5
    sha: cdb91bdd390c7ce1a8607f35f3ca7151b65afc0ff5ff3b34fa350f7d7c7e4310
  - kind: registry
    name: objc2
    version: 0.5.2
    sha: 46a785d4eeff09c14c487497c162e92766fbb3e4059a71840cecc03d9a50b804
  - kind: registry
    name: objc2-app-kit
    version: 0.2.2
    sha: e4e89ad9e3d7d297152b17d39ed92cd50ca8063a89a9fa569046d41568891eff
  - kind: registry
    name: objc2-cloud-kit
    version: 0.2.2
    sha: 74dd3b56391c7a0596a295029734d3c1c5e7e510a4cb30245f8221ccea96b009
  - kind: registry
    name: objc2-contacts
    version: 0.2.2
    sha: a5ff520e9c33812fd374d8deecef01d4a840e7b41862d849513de77e44aa4889
  - kind: registry
    name: objc2-core-data
    version: 0.2.2
    sha: 617fbf49e071c178c0b24c080767db52958f716d9eabdf0890523aeae54773ef
  - kind: registry
    name: objc2-core-image
    version: 0.2.2
    sha: 55260963a527c99f1819c4f8e3b47fe04f9650694ef348ffd2227e8196d34c80
  - kind: registry
    name: objc2-core-location
    version: 0.2.2
    sha: 000cfee34e683244f284252ee206a27953279d370e309649dc3ee317b37e5781
  - kind: registry
    name: objc2-encode
    version: 4.1.0
    sha: ef25abbcd74fb2609453eb695bd2f860d389e457f67dc17cafc8b8cbc89d0c33
  - kind: registry
    name: objc2-foundation
    version: 0.2.2
    sha: 0ee638a5da3799329310ad4cfa62fbf045d5f56e3ef5ba4149e7452dcf89d5a8
  - kind: registry
    name: objc2-link-presentation
    version: 0.2.2
    sha: a1a1ae721c5e35be65f01a03b6d2ac13a54cb4fa70d8a5da293d7b0020261398
  - kind: registry
    name: objc2-metal
    version: 0.2.2
    sha: dd0cba1276f6023976a406a14ffa85e1fdd19df6b0f737b063b95f6c8c7aadd6
  - kind: registry
    name: objc2-quartz-core
    version: 0.2.2
    sha: e42bee7bff906b14b167da2bac5efe6b6a07e6f7c0a21a7308d40c960242dc7a
  - kind: registry
    name: objc2-symbols
    version: 0.2.2
    sha: 0a684efe3dec1b305badae1a28f6555f6ddd3bb2c2267896782858d5a78404dc
  - kind: registry
    name: objc2-ui-kit
    version: 0.2.2
    sha: b8bb46798b20cd6b91cbd113524c490f1686f4c4e8f49502431415f3512e2b6f
  - kind: registry
    name: objc2-uniform-type-identifiers
    version: 0.2.2
    sha: 44fa5f9748dbfe1ca6c0b79ad20725a11eca7c2218bceb4b005cb1be26273bfe
  - kind: registry
    name: objc2-user-notifications
    version: 0.2.2
    sha: 76cfcbf642358e8689af64cee815d139339f3ed8ad05103ed5eaf73db8d84cb3
  - kind: registry
    name: once_cell
    version: 1.21.3
    sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
  - kind: registry
    name: once_cell_polyfill
    version: 1.70.1
    sha: a4895175b425cb1f87721b59f0f286c2092bd4af812243672510e1ac53e2e0ad
  - kind: registry
    name: option-ext
    version: 0.2.0
    sha: 04744f49eae99ab78e0d5c0b603ab218f515ea8cfe5a456d7629ad883a3b6e7d
  - kind: registry
    name: orbclient
    version: 0.3.48
    sha: ba0b26cec2e24f08ed8bb31519a9333140a6599b867dac464bb150bdb796fd43
  - kind: registry
    name: ordered-float
    version: 5.1.0
    sha: 7f4779c6901a562440c3786d08192c6fbda7c1c2060edd10006b05ee35d10f2d
  - kind: registry
    name: ordered-stream
    version: 0.2.0
    sha: 9aa2b01e1d916879f73a53d01d1d6cee68adbb31d6d9177a8cfce093cced1d50
  - kind: registry
    name: overload
    version: 0.1.1
    sha: b15813163c1d831bf4a13c3610c05c0d03b39feb07f7e09fa234dac9b15aaf39
  - kind: registry
    name: owo-colors
    version: 3.5.0
    sha: c1b04fb49957986fdce4d6ee7a65027d55d4b6d2265e5848bbb507b58ccfdb6f
  - kind: registry
    name: pango
    version: 0.20.12
    sha: 6576b311f6df659397043a5fa8a021da8f72e34af180b44f7d57348de691ab5c
  - kind: registry
    name: pango-sys
    version: 0.20.10
    sha: 186909673fc09be354555c302c0b3dcf753cd9fa08dcb8077fa663c80fb243fa
  - kind: registry
    name: pangocairo
    version: 0.20.10
    sha: 58890dc451db9964ac2d8874f903a4370a4b3932aa5281ff0c8d9810937ad84f
  - kind: registry
    name: pangocairo-sys
    version: 0.20.10
    sha: b9952903f88aa93e2927e7bca2d1ebae64fc26545a9280b4ce6bddeda26b5c42
  - kind: registry
    name: parking
    version: 2.2.1
    sha: f38d5652c16fde515bb1ecef450ab0f6a219d619a7274976324d5e377f7dceba
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: percent-encoding
    version: 2.3.2
    sha: 9b4f627cb1b25917193a259e49bdad08f671f8d9708acfd5fe0a8c1455d87220
  - kind: registry
    name: phf
    version: 0.11.3
    sha: 1fd6780a80ae0c52cc120a26a1a42c1ae51b247a253e4e06113d23d2c2edd078
  - kind: registry
    name: phf_generator
    version: 0.11.3
    sha: 3c80231409c20246a13fddb31776fb942c38553c51e871f8cbd687a4cfb5843d
  - kind: registry
    name: phf_macros
    version: 0.11.3
    sha: f84ac04429c13a7ff43785d75ad27569f2951ce0ffd30a3321230db2fc727216
  - kind: registry
    name: phf_shared
    version: 0.11.3
    sha: 67eabc2ef2a60eb7faa00097bd1ffdb5bd28e62bf39990626a582201b7a754e5
  - kind: registry
    name: pin-project
    version: 1.1.10
    sha: 677f1add503faace112b9f1373e43e9e054bfdd22ff1a63c1bc485eaec6a6a8a
  - kind: registry
    name: pin-project-internal
    version: 1.1.10
    sha: 6e918e4ff8c4549eb882f14b3a4bc8c8bc93de829416eacf579f1207a8fbf861
  - kind: registry
    name: pin-project-lite
    version: 0.2.16
    sha: 3b3cff922bd51709b605d9ead9aa71031d81447142d828eb4a6eba76fe619f9b
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: piper
    version: 0.2.4
    sha: 96c8c490f422ef9a4efd2cb5b42b76c8613d7e7dfc1caf667b8a3350a5acc066
  - kind: registry
    name: pipewire
    version: 0.9.2
    sha: 9688b89abf11d756499f7c6190711d6dbe5a3acdb30c8fbf001d6596d06a8d44
  - kind: registry
    name: pipewire-sys
    version: 0.9.2
    sha: cb028afee0d6ca17020b090e3b8fa2d7de23305aef975c7e5192a5050246ea36
  - kind: registry
    name: pixman
    version: 0.2.1
    sha: cea217d496c19ac0a8e502b37078e1f683d16344adee9eb247a5d57c165e1edf
  - kind: registry
    name: pixman-sys
    version: 0.1.0
    sha: a1a0483e89e81d7915defe83c51f23f6800594d64f6f4a21253ce87fd8444ada
  - kind: registry
    name: pkg-config
    version: 0.3.32
    sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
  - kind: registry
    name: png
    version: 0.18.0
    sha: 97baced388464909d42d89643fe4361939af9b7ce7a31ee32a168f832a70f2a0
  - kind: registry
    name: polling
    version: 3.11.0
    sha: 5d0e4f59085d47d8241c88ead0f274e8a0cb551f3625263c05eb8dd897c34218
  - kind: registry
    name: portable-atomic
    version: 1.11.1
    sha: f84267b20a16ea918e43c6a88433c2d54fa145c92a811b5b047ccbe153674483
  - kind: registry
    name: ppv-lite86
    version: 0.2.21
    sha: 85eae3c4ed2f50dcfe72643da4befc30deadb458a9b590d720cde2f2b1e97da9
  - kind: registry
    name: pretty_assertions
    version: 1.4.1
    sha: 3ae130e2f271fbc2ac3a40fb1d07180839cdbbe443c7a27e1e3c13c5cac0116d
  - kind: registry
    name: proc-macro-crate
    version: 3.4.0
    sha: 219cb19e96be00ab2e37d6e299658a0cfa83e52429179969b0f0121b4ac46983
  - kind: registry
    name: proc-macro-error
    version: 1.0.4
    sha: da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c
  - kind: registry
    name: proc-macro-error-attr
    version: 1.0.4
    sha: a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869
  - kind: registry
    name: proc-macro2
    version: 1.0.101
    sha: 89ae43fd86e4158d6db51ad8e2b80f313af9cc74f5c0e03ccb87de09998732de
  - kind: registry
    name: profiling
    version: 1.0.17
    sha: 3eb8486b569e12e2c32ad3e204dbaba5e4b5b216e9367044f25f1dba42341773
  - kind: registry
    name: profiling-procmacros
    version: 1.0.17
    sha: 52717f9a02b6965224f95ca2a81e2e0c5c43baacd28ca057577988930b6c3d5b
  - kind: registry
    name: proptest
    version: 1.8.0
    sha: 2bb0be07becd10686a0bb407298fb425360a5c44a663774406340c59a22de4ce
  - kind: registry
    name: proptest-derive
    version: 0.6.0
    sha: 095a99f75c69734802359b682be8daaf8980296731f6470434ea2c652af1dd30
  - kind: registry
    name: quick-error
    version: 1.2.3
    sha: a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0
  - kind: registry
    name: quick-xml
    version: 0.36.2
    sha: f7649a7b4df05aed9ea7ec6f628c67c9953a43869b8bc50929569b2999d443fe
  - kind: registry
    name: quick-xml
    version: 0.37.5
    sha: 331e97a1af0bf59823e6eadffe373d7b27f485be8748f71471c662c1f269b7fb
  - kind: registry
    name: quote
    version: 1.0.41
    sha: ce25767e7b499d1b604768e7cde645d14cc8584231ea6b295e9c9eb22c02e1d1
  - kind: registry
    name: r-efi
    version: 5.3.0
    sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
  - kind: registry
    name: rand
    version: 0.8.5
    sha: 34af8d1a0e25924bc5b7c43c079c942339d8f0a8b57c39049bef581b46327404
  - kind: registry
    name: rand
    version: 0.9.2
    sha: 6db2770f06117d490610c7488547d543617b21bfa07796d7a12f6f1bd53850d1
  - kind: registry
    name: rand_chacha
    version: 0.9.0
    sha: d3022b5f1df60f26e1ffddd6c66e8aa15de382ae63b3a0c1bfc0e4d3e3f325cb
  - kind: registry
    name: rand_core
    version: 0.6.4
    sha: ec0be4795e2f6a28069bec0b5ff3e2ac9bafc99e6a9a7dc3547996c5c816922c
  - kind: registry
    name: rand_core
    version: 0.9.3
    sha: 99d9a13982dcf210057a8a78572b2217b667c3beacbf3a0d8b454f6f82837d38
  - kind: registry
    name: rand_xorshift
    version: 0.4.0
    sha: 513962919efc330f829edb2535844d1b912b0fbe2ca165d613e4e8788bb05a5a
  - kind: registry
    name: raw-window-handle
    version: 0.6.2
    sha: 20675572f6f24e9e76ef639bc5552774ed45f1c30e2951e1e99c59888861c539
  - kind: registry
    name: rayon
    version: 1.11.0
    sha: 368f01d005bf8fd9b1206fb6fa653e6c4a81ceb1466406b81792d87c5677a58f
  - kind: registry
    name: rayon-core
    version: 1.13.0
    sha: 22e18b0f0062d30d4230b2e85ff77fdfe4326feb054b9783a3460d8435c8ab91
  - kind: registry
    name: redox_syscall
    version: 0.4.1
    sha: 4722d768eff46b75989dd134e5c353f0d6296e5aaa3132e776cbdb56be7731aa
  - kind: registry
    name: redox_syscall
    version: 0.5.17
    sha: 5407465600fb0548f1442edf71dd20683c6ed326200ace4b1ef0763521bb3b77
  - kind: registry
    name: redox_users
    version: 0.5.2
    sha: a4e608c6638b9c18977b00b475ac1f28d14e84b27d8d42f70e0bf1e3dec127ac
  - kind: registry
    name: ref-cast
    version: 1.0.25
    sha: f354300ae66f76f1c85c5f84693f0ce81d747e2c3f21a45fef496d89c960bf7d
  - kind: registry
    name: ref-cast-impl
    version: 1.0.25
    sha: b7186006dcb21920990093f30e3dea63b7d6e977bf1256be20c3563a5db070da
  - kind: registry
    name: regex
    version: 1.11.3
    sha: 8b5288124840bee7b386bc413c487869b360b2b4ec421ea56425128692f2a82c
  - kind: registry
    name: regex-automata
    version: 0.1.10
    sha: 6c230d73fb8d8c1b9c0b3135c5142a8acee3a0558fb8db5cf1cb65f8d7862132
  - kind: registry
    name: regex-automata
    version: 0.4.11
    sha: 833eb9ce86d40ef33cb1306d8accf7bc8ec2bfea4355cbdebb3df68b40925cad
  - kind: registry
    name: regex-syntax
    version: 0.6.29
    sha: f162c6dd7b008981e4d40210aca20b4bd0f9b60ca9271061b07f78537722f2e1
  - kind: registry
    name: regex-syntax
    version: 0.8.6
    sha: caf4aa5b0f434c91fe5c7f1ecb6a5ece2130b02ad2a590589dda5146df959001
  - kind: registry
    name: rustc-hash
    version: 2.1.1
    sha: 357703d41365b4b27c590e3ed91eabb1b663f07c4c084095e60cbed4362dff0d
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: rustix
    version: 0.38.44
    sha: fdb5bc1ae2baa591800df16c9ca78619bf65c0488b41b96ccec5d11220d8c154
  - kind: registry
    name: rustix
    version: 1.1.2
    sha: cd15f8a2c5551a84d56efdc1cd049089e409ac19a3072d5037a17fd70719ff3e
  - kind: registry
    name: rustversion
    version: 1.0.22
    sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
  - kind: registry
    name: rusty-fork
    version: 0.3.0
    sha: cb3dcc6e454c328bb824492db107ab7c0ae8fcffe4ad210136ef014458c1bc4f
  - kind: registry
    name: ryu
    version: 1.0.20
    sha: 28d3b2b1366ec20994f1fd18c3c594f05c5dd4bc44d8bb0c1c632c8d6829481f
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: schemars
    version: 1.0.4
    sha: 82d20c4491bc164fa2f6c5d44565947a52ad80b9505d8e36f8d54c27c739fcd0
  - kind: registry
    name: schemars_derive
    version: 1.0.4
    sha: 33d020396d1d138dc19f1165df7545479dcd58d93810dc5d646a16e55abefa80
  - kind: registry
    name: scoped-tls
    version: 1.0.1
    sha: e1cf6437eb19a8f4a6cc0f7dca544973b0b78843adbfeb3683d1a94a0024a294
  - kind: registry
    name: sd-notify
    version: 0.4.5
    sha: b943eadf71d8b69e661330cb0e2656e31040acf21ee7708e2c238a0ec6af2bf4
  - kind: registry
    name: semver
    version: 1.0.27
    sha: d767eb0aabc880b29956c35734170f26ed551a859dbd361d140cdbeca61ab1e2
  - kind: registry
    name: serde
    version: 1.0.228
    sha: 9a8e94ea7f378bd32cbbd37198a4a91436180c5bb472411e48b5ec2e2124ae9e
  - kind: registry
    name: serde_core
    version: 1.0.228
    sha: 41d385c7d4ca58e59fc732af25c3983b67ac852c1a25000afe1175de458b67ad
  - kind: registry
    name: serde_derive
    version: 1.0.228
    sha: d540f220d3187173da220f885ab66608367b6574e925011a9353e4badda91d79
  - kind: registry
    name: serde_derive_internals
    version: 0.29.1
    sha: 18d26a20a969b9e3fdf2fc2d9f21eda6c40e2de84c9408bb5d3b05d499aae711
  - kind: registry
    name: serde_json
    version: 1.0.145
    sha: 402a6f66d8c709116cf22f558eab210f5a50187f702eb4d7e5ef38d9a7f1c79c
  - kind: registry
    name: serde_repr
    version: 0.1.20
    sha: 175ee3e80ae9982737ca543e96133087cbd9a485eecc3bc4de9c1a37b47ea59c
  - kind: registry
    name: serde_spanned
    version: 0.6.9
    sha: bf41e0cfaf7226dca15e8197172c295a782857fcb97fad1808a166870dee75a3
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: sharded-slab
    version: 0.1.7
    sha: f40ca3c46823713e0d4209592e8d6e826aa57e928f09752619fc696c499637f6
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: signal-hook-registry
    version: 1.4.6
    sha: b2a4719bff48cee6b39d12c020eeb490953ad2443b7055bd0b21fca26bd8c28b
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: similar
    version: 2.7.0
    sha: bbbb5d9659141646ae647b42fe094daf6c6192d1620870b449d9557f748b2daa
  - kind: registry
    name: siphasher
    version: 1.0.1
    sha: 56199f7ddabf13fe5074ce809e7d3f42b42ae711800501b5b16ea82ad029c39d
  - kind: registry
    name: slab
    version: 0.4.11
    sha: 7a2ae44ef20feb57a68b23d846850f861394c2e02dc425a50098ae8c90267589
  - kind: registry
    name: smallvec
    version: 1.15.1
    sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
  - kind: registry
    name: smawk
    version: 0.3.2
    sha: b7c388c1b5e93756d0c740965c41e8822f866621d41acbdf6336a6a168f8840c
  - kind: git
    commit: d743e1a317fa0f01d1c4cadd96d277a1ec7b59d9
    repo: github:Smithay/smithay.git
    name: smithay
    version: 0.7.0
  - kind: registry
    name: smithay-client-toolkit
    version: 0.19.2
    sha: 3457dea1f0eb631b4034d61d4d8c32074caa6cd1ab2d59f2327bd8461e2c0016
  - kind: git
    commit: d743e1a317fa0f01d1c4cadd96d277a1ec7b59d9
    repo: github:Smithay/smithay.git
    name: smithay-drm-extras
    version: 0.1.0
  - kind: registry
    name: smol_str
    version: 0.2.2
    sha: dd538fb6910ac1099850255cf94a94df6551fbdd602454387d0adb2d1ca6dead
  - kind: registry
    name: stable_deref_trait
    version: 1.2.0
    sha: a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3
  - kind: registry
    name: static_assertions
    version: 1.1.0
    sha: a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: supports-color
    version: 2.1.0
    sha: d6398cde53adc3c4557306a96ce67b302968513830a77a95b2b17305d9719a89
  - kind: registry
    name: supports-hyperlinks
    version: 2.1.0
    sha: f84231692eb0d4d41e4cdd0cabfdd2e6cd9e255e65f80c9aa7c98dd502b4233d
  - kind: registry
    name: supports-unicode
    version: 2.1.0
    sha: f850c19edd184a205e883199a261ed44471c81e39bd95b1357f5febbef00e77a
  - kind: registry
    name: syn
    version: 1.0.109
    sha: 72b64191b275b66ffe2469e8af2c1cfe3bafa67b529ead792a6d0160888b4237
  - kind: registry
    name: syn
    version: 2.0.106
    sha: ede7c438028d4436d71104916910f5bb611972c5cfd7f89b8300a8186e6fada6
  - kind: registry
    name: synstructure
    version: 0.13.2
    sha: 728a70f3dbaf5bab7f0c4b1ac8d7ae5ea60a4b5549c8a5914361c99147a709d2
  - kind: registry
    name: system-deps
    version: 7.0.5
    sha: e4be53aa0cba896d2dc615bd42bbc130acdcffa239e0a2d965ea5b3b2a86ffdb
  - kind: registry
    name: target-lexicon
    version: 0.13.2
    sha: e502f78cdbb8ba4718f566c418c52bc729126ffd16baee5baa718cf25dd5a69a
  - kind: registry
    name: tempfile
    version: 3.23.0
    sha: 2d31c77bdf42a745371d260a26ca7163f1e0924b64afa0b688e61b5a9fa02f16
  - kind: registry
    name: terminal_size
    version: 0.1.17
    sha: 633c1a546cee861a1a6d0dc69ebeca693bf4296661ba7852b9d21d159e0506df
  - kind: registry
    name: textwrap
    version: 0.15.2
    sha: b7b3e525a49ec206798b40326a44121291b530c963cfb01018f63e135bac543d
  - kind: registry
    name: thiserror
    version: 1.0.69
    sha: b6aaf5339b578ea85b50e080feb250a3e8ae8cfcdff9a461c9ec2904bc923f52
  - kind: registry
    name: thiserror
    version: 2.0.17
    sha: f63587ca0f12b72a0600bcba1d40081f830876000bb46dd2337a3051618f4fc8
  - kind: registry
    name: thiserror-impl
    version: 1.0.69
    sha: 4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1
  - kind: registry
    name: thiserror-impl
    version: 2.0.17
    sha: 3ff15c8ecd7de3849db632e14d18d2571fa09dfc5ed93479bc4485c7a517c913
  - kind: registry
    name: thread_local
    version: 1.1.9
    sha: f60246a4944f24f6e018aa17cdeffb7818b76356965d03b07d6a9886e8962185
  - kind: registry
    name: tinystr
    version: 0.7.6
    sha: 9117f5d4db391c1cf6927e7bea3db74b9a1c1add8f7eda9ffd5364f40f57b82f
  - kind: registry
    name: toml
    version: 0.8.23
    sha: dc1beb996b9d83529a9e75c17a1686767d148d70663143c7854d8b4a09ced362
  - kind: registry
    name: toml_datetime
    version: 0.6.11
    sha: 22cddaf88f4fbc13c51aebbf5f8eceb5c7c5a9da2ac40a13519eb5b0a0e8f11c
  - kind: registry
    name: toml_datetime
    version: 0.7.2
    sha: 32f1085dec27c2b6632b04c80b3bb1b4300d6495d1e129693bdda7d91e72eec1
  - kind: registry
    name: toml_edit
    version: 0.22.27
    sha: 41fe8c660ae4257887cf66394862d21dbca4a6ddd26f04a3560410406a2f819a
  - kind: registry
    name: toml_edit
    version: 0.23.6
    sha: f3effe7c0e86fdff4f69cdd2ccc1b96f933e24811c5441d44904e8683e27184b
  - kind: registry
    name: toml_parser
    version: 1.0.3
    sha: 4cf893c33be71572e0e9aa6dd15e6677937abd686b066eac3f8cd3531688a627
  - kind: registry
    name: tracing
    version: 0.1.41
    sha: 784e0ac535deb450455cbfa28a6f0df145ea1bb7ae51b821cf5e7927fdcfbdd0
  - kind: registry
    name: tracing-attributes
    version: 0.1.30
    sha: 81383ab64e72a7a8b8e13130c49e3dab29def6d0c7d76a03087b3cf71c5c6903
  - kind: registry
    name: tracing-core
    version: 0.1.34
    sha: b9d12581f227e93f094d3af2ae690a574abb8a2b9b7a96e7cfe9647b2b617678
  - kind: registry
    name: tracing-log
    version: 0.2.0
    sha: ee855f1f400bd0e5c02d150ae5de3840039a3f54b025156404e34c23c03f47c3
  - kind: registry
    name: tracing-subscriber
    version: 0.3.19
    sha: e8189decb5ac0fa7bc8b96b7cb9b2701d60d48805aca84a238004d665fcc4008
  - kind: registry
    name: tracy-client
    version: 0.18.3
    sha: 91d722a05fe49b31fef971c4732a7d4aa6a18283d9ba46abddab35f484872947
  - kind: registry
    name: tracy-client-sys
    version: 0.27.0
    sha: 2fb391ac70462b3097a755618fbf9c8f95ecc1eb379a414f7b46f202ed10db1f
  - kind: registry
    name: typenum
    version: 1.19.0
    sha: 562d481066bde0658276a35467c4af00bdc6ee726305698a55b86e61d7ad82bb
  - kind: registry
    name: udev
    version: 0.9.3
    sha: af4e37e9ea4401fc841ff54b9ddfc9be1079b1e89434c1a6a865dd68980f7e9f
  - kind: registry
    name: uds_windows
    version: 1.1.0
    sha: 89daebc3e6fd160ac4aa9fc8b3bf71e1f74fbf92367ae71fb83a037e8bf164b9
  - kind: registry
    name: unarray
    version: 0.1.4
    sha: eaea85b334db583fe3274d12b4cd1880032beab409c0d774be044d4480ab9a94
  - kind: registry
    name: unicode-ident
    version: 1.0.19
    sha: f63a545481291138910575129486daeaf8ac54aee4387fe7906919f7830c7d9d
  - kind: registry
    name: unicode-linebreak
    version: 0.1.5
    sha: 3b09c83c3c29d37506a3e260c08c03743a6bb66a9cd432c6934ab501a190571f
  - kind: registry
    name: unicode-segmentation
    version: 1.12.0
    sha: f6ccf251212114b54433ec949fd6a7841275f9ada20dddd2f29e9ceea4501493
  - kind: registry
    name: unicode-width
    version: 0.1.14
    sha: 7dd6e30e90baa6f72411720665d41d89b9a3d039dc45b8faea1ddd07f617f6af
  - kind: registry
    name: unicode-width
    version: 0.2.1
    sha: 4a1a07cc7db3810833284e8d372ccdc6da29741639ecc70c9ec107df0fa6154c
  - kind: registry
    name: url
    version: 2.5.7
    sha: 08bc136a29a3d1758e07a9cca267be308aeebf5cfd5a10f3f67ab2097683ef5b
  - kind: registry
    name: utf16_iter
    version: 1.0.5
    sha: c8232dd3cdaed5356e0f716d285e4b40b932ac434100fe9b7e0e8e935b9e6246
  - kind: registry
    name: utf8_iter
    version: 1.0.4
    sha: b6c140620e7ffbb22c2dee59cafe6084a59b5ffc27a8859a5f0d494b5d52b6be
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: valuable
    version: 0.1.1
    sha: ba73ea9cf16a25df0c8caa16c51acb937d5712a8429db78a3ee29d5dcacd3a65
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: wait-timeout
    version: 0.2.1
    sha: 09ac3b126d3914f9849036f826e054cbabdc8519970b8998ddaf3b5bd3c65f11
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: wasi
    version: 0.11.1+wasi-snapshot-preview1
    sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
  - kind: registry
    name: wasi
    version: 0.14.4+wasi-0.2.4
    sha: 88a5f4a424faf49c3c2c344f166f0662341d470ea185e939657aaff130f0ec4a
  - kind: registry
    name: wasm-bindgen
    version: 0.2.104
    sha: c1da10c01ae9f1ae40cbfac0bac3b1e724b320abfcf52229f80b547c0d250e2d
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.104
    sha: 671c9a5a66f49d8a47345ab942e2cb93c7d1d0339065d4f8139c486121b43b19
  - kind: registry
    name: wasm-bindgen-futures
    version: 0.4.54
    sha: 7e038d41e478cc73bae0ff9b36c60cff1c98b8f38f8d7e8061e79ee63608ac5c
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.104
    sha: 7ca60477e4c59f5f2986c50191cd972e3a50d8a95603bc9434501cf156a9a119
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.104
    sha: 9f07d2f20d4da7b26400c9f4a0511e6e0345b040694e8a75bd41d578fa4421d7
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.104
    sha: bad67dc8b2a1a6e5448428adec4c3e84c43e561d8c9ee8a9e5aabeb193ec41d1
  - kind: registry
    name: wayland-backend
    version: 0.3.11
    sha: 673a33c33048a5ade91a6b139580fa174e19fb0d23f396dca9fa15f2e1e49b35
  - kind: registry
    name: wayland-client
    version: 0.31.11
    sha: c66a47e840dc20793f2264eb4b3e4ecb4b75d91c0dd4af04b456128e0bdd449d
  - kind: registry
    name: wayland-csd-frame
    version: 0.3.0
    sha: 625c5029dbd43d25e6aa9615e88b829a5cad13b2819c4ae129fdbb7c31ab4c7e
  - kind: registry
    name: wayland-cursor
    version: 0.31.11
    sha: 447ccc440a881271b19e9989f75726d60faa09b95b0200a9b7eb5cc47c3eeb29
  - kind: registry
    name: wayland-egl
    version: 0.32.8
    sha: d36232ee23ba3ea34a6835d68ca1af91d3ca3d6eddcf9c7147c4e0e66901b9fd
  - kind: registry
    name: wayland-protocols
    version: 0.32.9
    sha: efa790ed75fbfd71283bd2521a1cfdc022aabcc28bdcff00851f9e4ae88d9901
  - kind: registry
    name: wayland-protocols-misc
    version: 0.3.9
    sha: 2dfe33d551eb8bffd03ff067a8b44bb963919157841a99957151299a6307d19c
  - kind: registry
    name: wayland-protocols-plasma
    version: 0.3.9
    sha: a07a14257c077ab3279987c4f8bb987851bf57081b93710381daea94f2c2c032
  - kind: registry
    name: wayland-protocols-wlr
    version: 0.3.9
    sha: efd94963ed43cf9938a090ca4f7da58eb55325ec8200c3848963e98dc25b78ec
  - kind: registry
    name: wayland-scanner
    version: 0.31.7
    sha: 54cb1e9dc49da91950bdfd8b848c49330536d9d1fb03d4bfec8cae50caa50ae3
  - kind: registry
    name: wayland-server
    version: 0.31.10
    sha: fcbd4f3aba6c9fba70445ad2a484c0ef0356c1a9459b1e8e435bedc1971a6222
  - kind: registry
    name: wayland-sys
    version: 0.31.7
    sha: 34949b42822155826b41db8e5d0c1be3a2bd296c747577a43a3e6daefc296142
  - kind: registry
    name: web-sys
    version: 0.3.81
    sha: 9367c417a924a74cae129e6a2ae3b47fabb1f8995595ab474029da749a8be120
  - kind: registry
    name: web-time
    version: 1.1.0
    sha: 5a6580f308b1fad9207618087a65c04e7a10bc77e02c8e84e9b00dd4b12fa0bb
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-util
    version: 0.1.11
    sha: c2a7b1c03c876122aa43f3020e6c3c3ee5c05081c9a00739faf7503aeba10d22
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows
    version: 0.61.3
    sha: 9babd3a767a4c1aef6900409f85f5d53ce2544ccdfaa86dad48c91782c6d6893
  - kind: registry
    name: windows-collections
    version: 0.2.0
    sha: 3beeceb5e5cfd9eb1d76b381630e82c4241ccd0d27f1a39ed41b2760b255c5e8
  - kind: registry
    name: windows-core
    version: 0.61.2
    sha: c0fdd3ddb90610c7638aa2b3a3ab2904fb9e5cdbecc643ddb3647212781c4ae3
  - kind: registry
    name: windows-future
    version: 0.2.1
    sha: fc6a41e98427b19fe4b73c550f060b59fa592d7d686537eebf9385621bfbad8e
  - kind: registry
    name: windows-implement
    version: 0.60.1
    sha: edb307e42a74fb6de9bf3a02d9712678b22399c87e6fa869d6dfcd8c1b7754e0
  - kind: registry
    name: windows-interface
    version: 0.59.2
    sha: c0abd1ddbc6964ac14db11c7213d6532ef34bd9aa042c2e5935f59d7908b46a5
  - kind: registry
    name: windows-link
    version: 0.1.3
    sha: 5e6ad25900d524eaabdbbb96d20b4311e1e7ae1699af4fb28c17ae66c80d798a
  - kind: registry
    name: windows-link
    version: 0.2.0
    sha: 45e46c0661abb7180e7b9c281db115305d49ca1709ab8242adf09666d2173c65
  - kind: registry
    name: windows-numerics
    version: 0.2.0
    sha: 9150af68066c4c5c07ddc0ce30421554771e528bde427614c61038bc2c92c2b1
  - kind: registry
    name: windows-result
    version: 0.3.4
    sha: 56f42bd332cc6c8eac5af113fc0c1fd6a8fd2aa08a0119358686e5160d0586c6
  - kind: registry
    name: windows-strings
    version: 0.4.2
    sha: 56e6c93f3a0c3b36176cb1327a4958a0353d5d166c2a35cb268ace15e91d3b57
  - kind: registry
    name: windows-sys
    version: 0.45.0
    sha: 75283be5efb2831d37ea142365f009c02ec203cd29a3ebecbc093d52315b66d0
  - kind: registry
    name: windows-sys
    version: 0.48.0
    sha: 677d2418bec65e3338edb076e806bc1ec15693c5d0104683f2efe857f61056a9
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-sys
    version: 0.59.0
    sha: 1e38bc4d79ed67fd075bcc251a1c39b32a1776bbe92e5bef1f0bf1f8c531853b
  - kind: registry
    name: windows-sys
    version: 0.60.2
    sha: f2f500e4d28234f72040990ec9d39e3a6b950f9f22d3dba18416c35882612bcb
  - kind: registry
    name: windows-sys
    version: 0.61.1
    sha: 6f109e41dd4a3c848907eb83d5a42ea98b3769495597450cf6d153507b166f0f
  - kind: registry
    name: windows-targets
    version: 0.42.2
    sha: 8e5180c00cd44c9b1c88adb3693291f1cd93605ded80c250a75d472756b4d071
  - kind: registry
    name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows-targets
    version: 0.53.4
    sha: 2d42b7b7f66d2a06854650af09cfdf8713e427a439c97ad65a6375318033ac4b
  - kind: registry
    name: windows-threading
    version: 0.1.0
    sha: b66463ad2e0ea3bbf808b7f1d371311c80e115c0b71d60efc142cafbcfb057a6
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.42.2
    sha: 597a5118570b68bc08d8d59125332c54f1ba9d9adeedeef5b99b02ba2b0698f8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.53.0
    sha: 86b8d5f90ddd19cb4a147a5fa63ca848db3df085e25fee3cc10b39b6eebae764
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.42.2
    sha: e08e8864a60f06ef0d0ff4ba04124db8b0fb3be5776a5cd47641e942e58c4d43
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.53.0
    sha: c7651a1f62a11b8cbd5e0d42526e55f2c99886c77e007179efff86c2b137e66c
  - kind: registry
    name: windows_i686_gnu
    version: 0.42.2
    sha: c61d927d8da41da96a81f029489353e68739737d3beca43145c8afec9a31a84f
  - kind: registry
    name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnu
    version: 0.53.0
    sha: c1dc67659d35f387f5f6c479dc4e28f1d4bb90ddd1a5d3da2e5d97b42d6272c3
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.53.0
    sha: 9ce6ccbdedbf6d6354471319e781c0dfef054c81fbc7cf83f338a4296c0cae11
  - kind: registry
    name: windows_i686_msvc
    version: 0.42.2
    sha: 44d840b6ec649f480a41c8d80f9c65108b92d89345dd94027bfe06ac444d1060
  - kind: registry
    name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_i686_msvc
    version: 0.53.0
    sha: 581fee95406bb13382d2f65cd4a908ca7b1e4c2f1917f143ba16efe98a589b5d
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.42.2
    sha: 8de912b8b8feb55c064867cf047dda097f92d51efad5b491dfb98f6bbb70cb36
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.53.0
    sha: 2e55b5ac9ea33f2fc1716d1742db15574fd6fc8dadc51caab1c16a3d3b4190ba
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.42.2
    sha: 26d41b46a36d453748aedef1486d5c7a85db22e56aff34643984ea85514e94a3
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.53.0
    sha: 0a6e035dd0599267ce1ee132e51c27dd29437f63325753051e71dd9e42406c57
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.42.2
    sha: 9aec5da331524158c6d1a4ac0ab1541149c0b9505fde06423b02f5ef0106b9f0
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.53.0
    sha: 271414315aff87387382ec3d271b52d7ae78726f5d44ac98b4f4030c91880486
  - kind: registry
    name: winit
    version: 0.30.12
    sha: c66d4b9ed69c4009f6321f762d6e61ad8a2389cd431b97cb1e146812e9e6c732
  - kind: registry
    name: winnow
    version: 0.7.13
    sha: 21a0236b59786fed61e2a80582dd500fe61f18b5dca67a4a067d0bc9039339cf
  - kind: registry
    name: wit-bindgen
    version: 0.45.1
    sha: 5c573471f125075647d03df72e026074b7203790d41351cd6edc96f46bcccd36
  - kind: registry
    name: write16
    version: 1.0.0
    sha: d1890f4022759daae28ed4fe62859b1236caebfc61ede2f63ed4e695f3f6d936
  - kind: registry
    name: writeable
    version: 0.5.5
    sha: 1e9df38ee2d2c3c5948ea468a8406ff0db0b29ae1ffde1bcf20ef305bcc95c51
  - kind: registry
    name: x11-dl
    version: 2.21.0
    sha: 38735924fedd5314a6e548792904ed8c6de6636285cb9fec04d5b1db85c1516f
  - kind: registry
    name: x11rb
    version: 0.13.2
    sha: 9993aa5be5a26815fe2c3eacfc1fde061fc1a1f094bf1ad2a18bf9c495dd7414
  - kind: registry
    name: x11rb-protocol
    version: 0.13.2
    sha: ea6fc2961e4ef194dcbfe56bb845534d0dc8098940c7e5c012a258bfec6701bd
  - kind: registry
    name: xcursor
    version: 0.3.10
    sha: bec9e4a500ca8864c5b47b8b482a73d62e4237670e5b5f1d6b9e3cae50f28f2b
  - kind: registry
    name: xkbcommon
    version: 0.9.0
    sha: a7a974f48060a14e95705c01f24ad9c3345022f4d97441b8a36beb7ed5c4a02d
  - kind: registry
    name: xkbcommon-dl
    version: 0.4.2
    sha: d039de8032a9a8856a6be89cea3e5d12fdd82306ab7c94d74e6deab2460651c5
  - kind: registry
    name: xkeysym
    version: 0.2.1
    sha: b9cc00251562a284751c9973bace760d86c0276c471b4be569fe6b068ee97a56
  - kind: registry
    name: xml-rs
    version: 0.8.27
    sha: 6fd8403733700263c6eb89f192880191f1b83e332f7a20371ddcf421c4a337c7
  - kind: registry
    name: xshell
    version: 0.2.7
    sha: 9e7290c623014758632efe00737145b6867b66292c42167f2ec381eb566a373d
  - kind: registry
    name: xshell-macros
    version: 0.2.7
    sha: 32ac00cd3f8ec9c1d33fb3e7958a82df6989c42d747bd326c822b1d625283547
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: yoke
    version: 0.7.5
    sha: 120e6aef9aa629e3d4f52dc8cc43a015c7724194c97dfaf45180d2daf2b77f40
  - kind: registry
    name: yoke-derive
    version: 0.7.5
    sha: 2380878cad4ac9aac1e2435f3eb4020e8374b5f13c296cb75b4620ff8e229154
  - kind: registry
    name: zbus
    version: 5.11.0
    sha: 2d07e46d035fb8e375b2ce63ba4e4ff90a7f73cf2ffb0138b29e1158d2eaadf7
  - kind: registry
    name: zbus-lockstep
    version: 0.5.1
    sha: 29e96e38ded30eeab90b6ba88cb888d70aef4e7489b6cd212c5e5b5ec38045b6
  - kind: registry
    name: zbus-lockstep-macros
    version: 0.5.1
    sha: dc6821851fa840b708b4cbbaf6241868cabc85a2dc22f426361b0292bfc0b836
  - kind: registry
    name: zbus_macros
    version: 5.11.0
    sha: 57e797a9c847ed3ccc5b6254e8bcce056494b375b511b3d6edcec0aeb4defaca
  - kind: registry
    name: zbus_names
    version: 4.2.0
    sha: 7be68e64bf6ce8db94f63e72f0c7eb9a60d733f7e0499e628dfab0f84d6bcb97
  - kind: registry
    name: zbus_xml
    version: 5.0.2
    sha: 589e9a02bfafb9754bb2340a9e3b38f389772684c63d9637e76b1870377bec29
  - kind: registry
    name: zerocopy
    version: 0.8.27
    sha: 0894878a5fa3edfd6da3f88c4805f4c8558e2b996227a3d864f47fe11e38282c
  - kind: registry
    name: zerocopy-derive
    version: 0.8.27
    sha: 88d2b8d9c68ad2b9e4340d7832716a4d21a22a1154777ad56ea55c51a9cf3831
  - kind: registry
    name: zerofrom
    version: 0.1.5
    sha: cff3ee08c995dee1859d998dea82f7374f2826091dd9cd47def953cae446cd2e
  - kind: registry
    name: zerofrom-derive
    version: 0.1.6
    sha: d71e5d6e06ab090c67b5e44993ec16b72dcbaabc526db883a360057678b48502
  - kind: registry
    name: zerovec
    version: 0.10.4
    sha: aa2b893d79df23bfb12d5461018d408ea19dfafe76c2c7ef6d4eba614f8ff079
  - kind: registry
    name: zerovec-derive
    version: 0.10.3
    sha: 6eafa6dfb17584ea3e2bd6e76e0cc15ad7af12b09abdd1ca55961bed9b1063c6
  - kind: registry
    name: zvariant
    version: 5.7.0
    sha: 999dd3be73c52b1fccd109a4a81e4fcd20fab1d3599c8121b38d04e1419498db
  - kind: registry
    name: zvariant_derive
    version: 5.7.0
    sha: 6643fd0b26a46d226bd90d3f07c1b5321fe9bb7f04673cb37ac6d6883885b68e
  - kind: registry
    name: zvariant_utils
    version: 3.2.1
    sha: c6949d142f89f6916deca2232cf26a8afacf2b9fdc35ce766105e104478be599

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/pixman.bst
# - freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:extensions/mesa/libdrm.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libdisplay-info.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/llvm.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/libseat.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/libseat.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libdisplay-info.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

config:
  build-commands:
  - cargo build --release --features default --frozen --offline

  install-commands:
  - |
    install -Dm755 target/release/niri resources/niri-session -t "%{install-root}%{bindir}"
    install -Dm644 resources/niri.service  resources/niri-shutdown.target -t "%{install-root}/usr/lib/systemd/user/"
    install -Dm644 resources/niri.desktop -t "%{install-root}/usr/share/wayland-sessions/"
    install -Dm644 resources/niri-portals.conf -t "%{install-root}/usr/share/xdg-desktop-portal/"
    mkdir -p "%{install-root}/usr/share/bash-completion/completions/"
    target/release/niri completions bash > "%{install-root}/usr/share/bash-completion/completions/niri"
    mkdir -p "%{install-root}/usr/share/zsh/site-functions"
    target/release/niri completions zsh > "%{install-root}/usr/share/zsh/site-functions/_niri"
    mkdir -p "%{install-root}/usr/share/fish/vendor_completions.d"
    target/release/niri completions fish > "%{install-root}/usr/share/fish/vendor_completions.d/niri.fish"
  - |
    %{install-extra}
