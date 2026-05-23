kind: manual

sources:
- kind: git_repo
  url: github:InioX/matugen.git
  track: v*
  ref: v4.1.0-0-g4112d352914742ba69f6380fd07984adba02d376
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
    name: adler2
    version: 2.0.1
    sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
  - kind: registry
    name: ahash
    version: 0.8.11
    sha: e89da841a80418a9b391ebaea17f5c112ffaaa96f621d2c285b5174da76b9011
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: aligned
    version: 0.4.3
    sha: ee4508988c62edf04abd8d92897fca0c2995d907ce1dfeaf369dac3716a40685
  - kind: registry
    name: aligned-vec
    version: 0.5.0
    sha: 4aa90d7ce82d4be67b64039a3d588d38dbcc6736577de4a847025ce5b0c468d1
  - kind: registry
    name: aligned-vec
    version: 0.6.4
    sha: dc890384c8602f339876ded803c97ad529f3842aba97f6392b3dba0dd171769b
  - kind: registry
    name: alloc-no-stdlib
    version: 2.0.4
    sha: cc7bb162ec39d46ab1ca8c77bf72e890535becd1751bb45f64c597edb4c8c6b3
  - kind: registry
    name: alloc-stdlib
    version: 0.2.2
    sha: 94fb8275041c72129eb51b7d0322c29b8387a0386127718b096429201a5d6ece
  - kind: registry
    name: allocator-api2
    version: 0.2.21
    sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
  - kind: registry
    name: anes
    version: 0.1.6
    sha: 4b46cbb362ab8752921c97e041f5e366ee6297bd428a31275b9fcf1e380f7299
  - kind: registry
    name: anstream
    version: 0.6.15
    sha: 64e15c1ab1f89faffbf04a634d5e1962e9074f2741eef6d97f3c4e322426d526
  - kind: registry
    name: anstyle
    version: 1.0.8
    sha: 1bec1de6f59aedf83baf9ff929c98f2ad654b97c9510f4e70cf6f661d49fd5b1
  - kind: registry
    name: anstyle-parse
    version: 0.2.5
    sha: eb47de1e80c2b463c735db5b217a0ddc39d612e7ac9e2e96a5aed1f57616c1cb
  - kind: registry
    name: anstyle-query
    version: 1.1.1
    sha: 6d36fc52c7f6c869915e99412912f22093507da8d9e942ceaf66fe4b7c14422a
  - kind: registry
    name: anstyle-wincon
    version: 3.0.4
    sha: 5bf74e1b6e971609db8ca7a9ce79fd5768ab6ae46441c572e46cf596f59e57f8
  - kind: registry
    name: anyhow
    version: 1.0.86
    sha: b3d1d046238990b9cf5bcde22a3fb3584ee5cf65fb2765f454ed428c7a0063da
  - kind: registry
    name: approx
    version: 0.5.1
    sha: cab112f0a86d568ea0e627cc1d6be74a1e9cd55214684db5561995f6dad897c6
  - kind: registry
    name: arbitrary
    version: 1.3.2
    sha: 7d5a26814d8dcb93b0e5a0ff3c6d80a8843bafb21b39e8e18a6f05471870e110
  - kind: registry
    name: arg_enum_proc_macro
    version: 0.3.4
    sha: 0ae92a5119aa49cdbcf6b9f893fe4e1d98b04ccbf82ee0584ad948a44a734dea
  - kind: registry
    name: ariadne
    version: 0.5.1
    sha: 36f5e3dca4e09a6f340a61a0e9c7b61e030c69fc27bf29d73218f7e5e3b7638f
  - kind: registry
    name: arrayvec
    version: 0.7.6
    sha: 7c02d123df017efcdfbd739ef81735b36c5ba83ec3c59c80a9d7ecc718f92e50
  - kind: registry
    name: as-slice
    version: 0.2.1
    sha: 516b6b4f0e40d50dcda9365d53964ec74560ad4284da2e7fc97122cd83174516
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: av-scenechange
    version: 0.14.1
    sha: 0f321d77c20e19b92c39e7471cf986812cbb46659d2af674adc4331ef3f18394
  - kind: registry
    name: av1-grain
    version: 0.2.3
    sha: 6678909d8c5d46a42abcf571271e15fdbc0a225e3646cf23762cd415046c78bf
  - kind: registry
    name: avif-serialize
    version: 0.8.8
    sha: 375082f007bd67184fb9c0374614b29f9aaa604ec301635f72338bb65386a53d
  - kind: registry
    name: backtrace
    version: 0.3.71
    sha: 26b05800d2e817c8b3b4b54abd461726265fa9789ae34330622f2db9ee696f9d
  - kind: registry
    name: base64
    version: 0.21.7
    sha: 9d297deb1925b89f2ccc13d7635fa0714f12c87adce1c75356b39ca9b7178567
  - kind: registry
    name: base64
    version: 0.22.1
    sha: 72b3254f16251a8381aa12e40e3c4d2f0199f8c6508fbecb9d91f575e0fbb8c6
  - kind: registry
    name: bit_field
    version: 0.10.2
    sha: dc827186963e592360843fb5ba4b973e145841266c1357f7180c43526f2e5b61
  - kind: registry
    name: bitflags
    version: 1.3.2
    sha: bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a
  - kind: registry
    name: bitflags
    version: 2.11.0
    sha: 843867be96c8daad0d758b57df9392b6d8d271134fce549de6ce169ff98a92af
  - kind: registry
    name: bitstream-io
    version: 4.9.0
    sha: 60d4bd9d1db2c6bdf285e223a7fa369d5ce98ec767dec949c6ca62863ce61757
  - kind: registry
    name: block-buffer
    version: 0.10.4
    sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
  - kind: registry
    name: brotli-decompressor
    version: 5.0.0
    sha: 874bb8112abecc98cbd6d81ea4fa7e94fb9449648c93cc89aa40c81c24d7de03
  - kind: registry
    name: built
    version: 0.8.0
    sha: f4ad8f11f288f48ca24471bbd51ac257aaeaaa07adae295591266b792902ae64
  - kind: registry
    name: bumpalo
    version: 3.16.0
    sha: 79296716171880943b8470b5f8d03aa55eb2e645a4874bdbb28adb49162e012c
  - kind: registry
    name: by_address
    version: 1.2.1
    sha: 64fa3c856b712db6612c019f14756e64e4bcea13337a6b33b696333a9eaa2d06
  - kind: registry
    name: bytemuck
    version: 1.25.0
    sha: c8efb64bd706a16a1bdde310ae86b351e4d21550d98d056f22f8a7f7a2183fec
  - kind: registry
    name: byteorder
    version: 1.5.0
    sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
  - kind: registry
    name: byteorder-lite
    version: 0.1.0
    sha: 8f1fe948ff07f4bd06c30984e69f5b4899c516a3ef74f34df92a2df2ab535495
  - kind: registry
    name: bytes
    version: 1.7.1
    sha: 8318a53db07bb3f8dca91a600466bdb3f2eaadeedfdbcf02e1accbad9271ba50
  - kind: registry
    name: cast
    version: 0.3.0
    sha: 37b2a672a2cb129a2e41c10b1224bb368f9f37a2b16b612598138befd7b37eb5
  - kind: registry
    name: cc
    version: 1.2.18
    sha: 525046617d8376e3db1deffb079e91cef90a89fc3ca5c185bbf8c9ecdd15cd5c
  - kind: registry
    name: cfg-if
    version: 1.0.0
    sha: baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd
  - kind: registry
    name: chumsky
    version: 0.10.1
    sha: 14377e276b2c8300513dff55ba4cc4142b44e5d6de6d00eb5b2307d650bb4ec1
  - kind: registry
    name: ciborium
    version: 0.2.2
    sha: 42e69ffd6f0917f5c029256a24d0161db17cea3997d185db0d35926308770f0e
  - kind: registry
    name: ciborium-io
    version: 0.2.2
    sha: 05afea1e0a06c9be33d539b876f1ce3692f4afea2cb41f740e7743225ed1c757
  - kind: registry
    name: ciborium-ll
    version: 0.2.2
    sha: 57663b653d948a338bfb3eeba9bb2fd5fcfaecb9e199e87e1eda4d9e8b240fd9
  - kind: registry
    name: clap
    version: 4.5.16
    sha: ed6719fffa43d0d87e5fd8caeab59be1554fb028cd30edc88fc4369b17971019
  - kind: registry
    name: clap_builder
    version: 4.5.15
    sha: 216aec2b177652e3846684cbfe25c9964d18ec45234f0f5da5157b207ed1aab6
  - kind: registry
    name: clap_derive
    version: 4.5.13
    sha: 501d359d5f3dcaf6ecdeee48833ae73ec6e42723a1e52419c79abf9507eec0a0
  - kind: registry
    name: clap_lex
    version: 0.7.2
    sha: 1462739cb27611015575c0c11df5df7601141071f07518d56fcc1be504cbec97
  - kind: registry
    name: color-eyre
    version: 0.6.5
    sha: e5920befb47832a6d61ee3a3a846565cfa39b331331e68a3b1d1116630f2f26d
  - kind: registry
    name: color_quant
    version: 1.1.0
    sha: 3d7b894f5411737b7867f4827955924d7c254fc9f4d91a6aad6b097804b1018b
  - kind: registry
    name: colorchoice
    version: 1.0.2
    sha: d3fd119d74b830634cea2a0f58bbd0d54540518a14397557951e79340abc28c0
  - kind: registry
    name: colorsys
    version: 0.6.7
    sha: 54261aba646433cb567ec89844be4c4825ca92a4f8afba52fc4dd88436e31bbd
  - kind: registry
    name: comfy-table
    version: 7.2.2
    sha: 958c5d6ecf1f214b4c2bbbbf6ab9523a864bd136dcf71a7e8904799acfe1ad47
  - kind: registry
    name: console
    version: 0.16.2
    sha: 03e45a4a8926227e4197636ba97a9fc9b00477e9f4bd711395687c5f0734bec4
  - kind: registry
    name: convert_case
    version: 0.10.0
    sha: 633458d4ef8c78b72454de2d54fd6ab2e60f9e02be22f3c6104cdc8a4e0fceb9
  - kind: registry
    name: core-foundation
    version: 0.9.4
    sha: 91e195e091a93c46f7102ec7818a2aa394e1e1771c3ab4825963fa03e45afb8f
  - kind: registry
    name: core-foundation-sys
    version: 0.8.7
    sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
  - kind: registry
    name: core2
    version: 0.4.0
    sha: b49ba7ef1ad6107f8824dbe97de947cbaac53c44e7f9756a1fba0d37c1eec505
  - kind: registry
    name: cpufeatures
    version: 0.2.17
    sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
  - kind: registry
    name: crc32fast
    version: 1.4.2
    sha: a97769d94ddab943e4510d138150169a2758b5ef3eb191a9ee688de3e23ef7b3
  - kind: registry
    name: criterion
    version: 0.5.1
    sha: f2b12d017a929603d80db1831cd3a24082f8137ce19c69e6447f54f5fc8d692f
  - kind: registry
    name: criterion-plot
    version: 0.5.0
    sha: 6b50826342786a51a89e2da3a28f1c32b06e387201bc2d19791f622c673706b1
  - kind: registry
    name: crossbeam-deque
    version: 0.8.5
    sha: 613f8cc01fe9cf1a3eb3d7f488fd2fa8388403e97039e2f73692932e291a770d
  - kind: registry
    name: crossbeam-epoch
    version: 0.9.18
    sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
  - kind: registry
    name: crossbeam-utils
    version: 0.8.20
    sha: 22ec99545bb0ed0ea7bb9b8e1e9122ea386ff8a48c0922e43f36d45ab09e0e80
  - kind: registry
    name: crossterm
    version: 0.29.0
    sha: d8b9f2e4c67f833b660cdb0a3523065869fb35570177239812ed4c905aeff87b
  - kind: registry
    name: crossterm_winapi
    version: 0.9.1
    sha: acdd7c62a3665c7f6830a51635d9ac9b23ed385797f70a83bb8bafe9c572ab2b
  - kind: registry
    name: crunchy
    version: 0.2.2
    sha: 7a81dae078cea95a014a339291cec439d2f232ebe854a9d672b796c6afafa9b7
  - kind: registry
    name: crypto-common
    version: 0.1.6
    sha: 1bfb12502f3fc46cca1bb51ac28df9d618d813cdc3d2f25b9fe775a34af26bb3
  - kind: registry
    name: csscolorparser
    version: 0.7.2
    sha: 5fda6aace1fbef3aa217b27f4c8d7d071ef2a70a5ca51050b1f17d40299d3f16
  - kind: registry
    name: dialoguer
    version: 0.12.0
    sha: 25f104b501bf2364e78d0d3974cbc774f738f5865306ed128e1e0d7499c0ad96
  - kind: registry
    name: digest
    version: 0.10.7
    sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
  - kind: registry
    name: directories
    version: 5.0.1
    sha: 9a49173b84e034382284f27f1af4dcbbd231ffa358c0fe316541a7337f376a35
  - kind: registry
    name: dirs
    version: 4.0.0
    sha: ca3aa72a6f96ea37bbc5aa912f6788242832f75369bdfdadcb0e38423f100059
  - kind: registry
    name: dirs-sys
    version: 0.3.7
    sha: 1b1d1d91c932ef41c0f2663aa8b0ca0342d444d842c06914aa0a7e352d0bada6
  - kind: registry
    name: dirs-sys
    version: 0.4.1
    sha: 520f05a5cbd335fae5a99ff7a6ab8627577660ee5cfd6a94a6a929b52ff0321c
  - kind: registry
    name: document-features
    version: 0.2.12
    sha: d4b8a88685455ed29a21542a33abd9cb6510b6b129abadabdcef0f4c55bc8f61
  - kind: registry
    name: either
    version: 1.13.0
    sha: 60b1af1c220855b6ceac025d3f6ecdd2b7c4894bfe9cd9bda4fbb4bc7c0d4cf0
  - kind: registry
    name: encode_unicode
    version: 1.0.0
    sha: 34aa73646ffb006b8f5147f3dc182bd4bcb190227ce861fc4a4844bf8e3cb2c0
  - kind: registry
    name: encoding_rs
    version: 0.8.34
    sha: b45de904aa0b010bce2ab45264d0631681847fa7b6f2eaa7dab7619943bc4f59
  - kind: registry
    name: enquote
    version: 1.1.0
    sha: 06c36cb11dbde389f4096111698d8b567c0720e3452fd5ac3e6b4e47e1939932
  - kind: registry
    name: env_logger
    version: 0.10.2
    sha: 4cd405aab171cb85d6735e5c8d9db038c17d3ca007a4d2c25f337935c3d90580
  - kind: registry
    name: equator
    version: 0.4.2
    sha: 4711b213838dfee0117e3be6ac926007d7f433d7bbe33595975d4190cb07e6fc
  - kind: registry
    name: equator-macro
    version: 0.4.2
    sha: 44f23cf4b44bfce11a86ace86f8a73ffdec849c9fd00a386a53d278bd9e81fb3
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: errno
    version: 0.3.14
    sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
  - kind: registry
    name: execute
    version: 0.2.15
    sha: 0be3cc61fe54b4cae4463cdbda0401978ffe19d4dcc7a5201a312cddf64726dd
  - kind: registry
    name: execute-command-macro
    version: 0.1.9
    sha: 90dec53d547564e911dc4ff3ecb726a64cf41a6fa01a2370ebc0d95175dd08bd
  - kind: registry
    name: execute-command-macro-impl
    version: 0.1.10
    sha: ce8cd46a041ad005ab9c71263f9a0ff5b529eac0fe4cc9b4a20f4f0765d8cf4b
  - kind: registry
    name: execute-command-tokens
    version: 0.1.7
    sha: 69dc321eb6be977f44674620ca3aa21703cb20ffbe560e1ae97da08401ffbcad
  - kind: registry
    name: exr
    version: 1.74.0
    sha: 4300e043a56aa2cb633c01af81ca8f699a321879a7854d3896a0ba89056363be
  - kind: registry
    name: eyre
    version: 0.6.12
    sha: 7cd915d99f24784cdc19fd37ef22b97e3ff0ae756c7e492e9fbfe897d61e2aec
  - kind: registry
    name: fast-srgb8
    version: 1.0.0
    sha: dd2e7510819d6fbf51a5545c8f922716ecfb14df168a3242f7d33e0239efe6a1
  - kind: registry
    name: fax
    version: 0.2.6
    sha: f05de7d48f37cd6730705cbca900770cab77a89f413d23e100ad7fad7795a0ab
  - kind: registry
    name: fax_derive
    version: 0.2.0
    sha: a0aca10fb742cb43f9e7bb8467c91aa9bcb8e3ffbc6a6f7389bb93ffc920577d
  - kind: registry
    name: fdeflate
    version: 0.3.4
    sha: 4f9bfee30e4dedf0ab8b422f03af778d9612b63f502710fc500a334ebe2de645
  - kind: registry
    name: flate2
    version: 1.1.9
    sha: 843fba2746e448b37e26a819579957415c8cef339bf08564fe8b7ddbd959573c
  - kind: registry
    name: fnv
    version: 1.0.7
    sha: 3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1
  - kind: registry
    name: foldhash
    version: 0.1.5
    sha: d9c4f5dac5e15c24eb999c26181a6ca40b39fe946cbe4c263c7209467bc83af2
  - kind: registry
    name: form_urlencoded
    version: 1.2.1
    sha: e13624c2627564efccf4934284bdd98cbaa14e79b0b5a141218e507b3a823456
  - kind: registry
    name: futures-channel
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - kind: registry
    name: futures-core
    version: 0.3.30
    sha: dfc6580bb841c5a68e9ef15c77ccc837b40a7504914d52e47b8b0e9bbda25a1d
  - kind: registry
    name: futures-io
    version: 0.3.30
    sha: a44623e20b9681a318efdd71c299b6b222ed6f231972bfe2f224ebad6311f0c1
  - kind: registry
    name: futures-sink
    version: 0.3.30
    sha: 9fb8e00e87438d937621c1c6269e53f536c14d3fbd6a042bb24879e57d474fb5
  - kind: registry
    name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - kind: registry
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: registry
    name: generic-array
    version: 0.14.7
    sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
  - kind: registry
    name: generic-array
    version: 1.1.0
    sha: 96512db27971c2c3eece70a1e106fbe6c87760234e31e8f7e5634912fe52794a
  - kind: registry
    name: getrandom
    version: 0.2.15
    sha: c4567c8db10ae91089c99af84c68c38da3ec2f087c3f82960bcdbf3656b6f4d7
  - kind: registry
    name: getrandom
    version: 0.3.4
    sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
  - kind: registry
    name: gif
    version: 0.14.1
    sha: f5df2ba84018d80c213569363bdcd0c64e6933c67fe4c1d60ecf822971a3c35e
  - kind: registry
    name: gimli
    version: 0.28.1
    sha: 4271d37baee1b8c7e4b708028c57d816cf9d2434acb33a549475f78c181f6253
  - kind: registry
    name: h2
    version: 0.3.26
    sha: 81fe527a889e1532da5c525686d96d4c2e74cdd345badf8dfef9f6b39dd5f5e8
  - kind: registry
    name: half
    version: 2.4.1
    sha: 6dd08c532ae367adf81c312a4580bc67f1d0fe8bc9c460520283f4c0ff277888
  - kind: registry
    name: hashbrown
    version: 0.15.2
    sha: bf151400ff0baff5465007dd2f3e717f3fe502074ca563069ce3a6629d07b289
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
    version: 0.4.0
    sha: fbf6a919d6cf397374f7dfeeea91d974c7c0a7221d0d0f4f20d859d329e53fcc
  - kind: registry
    name: http
    version: 0.2.12
    sha: 601cbb57e577e2f5ef5be8e7b83f0f63994f25aa94d673e54a92d5c516d101f1
  - kind: registry
    name: http
    version: 1.1.0
    sha: 21b9ddb458710bc376481b842f5da65cdf31522de232c1ca8146abce2a358258
  - kind: registry
    name: http-body
    version: 0.4.6
    sha: 7ceab25649e9960c0311ea418d17bee82c0dcec1bd053b5f9a66e265a693bed2
  - kind: registry
    name: http-body
    version: 1.0.1
    sha: 1efedce1fb8e6913f23e0c92de8e62cd5b772a67e7b3946df930a62566c93184
  - kind: registry
    name: http-body-util
    version: 0.1.2
    sha: 793429d76616a256bcb62c2a2ec2bed781c8307e797e2598c50010f2bee2544f
  - kind: registry
    name: httparse
    version: 1.9.4
    sha: 0fcc0b4a115bf80b728eb8ea024ad5bd707b615bfed49e0665b6e0f86fd082d9
  - kind: registry
    name: httpdate
    version: 1.0.3
    sha: df3b46402a9d5adb4c86a0cf463f42e19994e3ee891101b1841f30a545cb49a9
  - kind: registry
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: hyper
    version: 0.14.30
    sha: a152ddd61dfaec7273fe8419ab357f33aee0d914c5f4efbf0d96fa749eea5ec9
  - kind: registry
    name: hyper
    version: 1.4.1
    sha: 50dfd22e0e76d0f662d429a5f80fcaf3855009297eab6a0a9f8543834744ba05
  - kind: registry
    name: hyper-rustls
    version: 0.24.2
    sha: ec3efd23720e2049821a693cbc7e65ea87c72f1c58ff2f9522ff332b1491e590
  - kind: registry
    name: hyper-rustls
    version: 0.27.2
    sha: 5ee4be2c948921a1a5320b629c4193916ed787a7f7f293fd3f7f5a6c9de74155
  - kind: registry
    name: hyper-util
    version: 0.1.7
    sha: cde7055719c54e36e95e8719f95883f22072a48ede39db7fc17a4e1d5281e9b9
  - kind: registry
    name: idna
    version: 0.5.0
    sha: 634d9b1461af396cad843f47fdba5597a4f9e6ddd4bfb6ff5d85028c25cb12f6
  - kind: registry
    name: image
    version: 0.25.10
    sha: 85ab80394333c02fe689eaf900ab500fbd0c2213da414687ebf995a65d5a6104
  - kind: registry
    name: image-webp
    version: 0.2.4
    sha: 525e9ff3e1a4be2fbea1fdf0e98686a6d98b4d8f937e1bf7402245af1909e8c3
  - kind: registry
    name: imgref
    version: 1.12.0
    sha: e7c5cedc30da3a610cac6b4ba17597bdf7152cf974e8aab3afb3d54455e371c8
  - kind: registry
    name: indenter
    version: 0.3.4
    sha: 964de6e86d545b246d84badc0fef527924ace5134f30641c203ef52ba83f58d5
  - kind: registry
    name: indexmap
    version: 2.7.0
    sha: 62f822373a4fe84d4bb149bf54e584a7f4abec90e072ed49cda0edea5b95471f
  - kind: registry
    name: interpolate_name
    version: 0.2.4
    sha: c34819042dc3d3971c46c2190835914dfbe0c3c13f61449b2997f4e9722dfa60
  - kind: registry
    name: ipnet
    version: 2.9.0
    sha: 8f518f335dce6725a761382244631d86cf0ccb2863413590b31338feb467f9c3
  - kind: registry
    name: is-terminal
    version: 0.4.13
    sha: 261f68e344040fbd0edea105bef17c66edf46f984ddb1115b775ce31be948f4b
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: itertools
    version: 0.10.5
    sha: b0fd2260e829bddf4cb6ea802289de2f86d6a7a690192fbe91b3f46e0f2c8473
  - kind: registry
    name: itertools
    version: 0.14.0
    sha: 2b192c782037fadd9cfa75548310488aabdbf3d2da73885b31bd0abd03351285
  - kind: registry
    name: itoa
    version: 1.0.11
    sha: 49f1f14873335454500d59611f1cf4a4b0f786f9ac11f4312a78e4cf2566695b
  - kind: registry
    name: jobserver
    version: 0.1.32
    sha: 48d1dbcbbeb6a7fec7e059840aa538bd62aaccf972c7346c4d9d2059312853d0
  - kind: registry
    name: js-sys
    version: 0.3.70
    sha: 1868808506b929d7b0cfa8f75951347aa71bb21144b7791bae35d9bccfcfe37a
  - kind: registry
    name: jxl-bitstream
    version: 1.1.0
    sha: b480e752277e29eb4054f69546887a9b84656fe78c08f54ba5850ced98a378fe
  - kind: registry
    name: jxl-coding
    version: 1.0.1
    sha: cd972bcd125e776f1eb241ac50e39f956095a1c2770c64736c968f8946bd9a3c
  - kind: registry
    name: jxl-color
    version: 0.11.0
    sha: f316b1358c1711755b3ee8e8cb5c4a1dad12e796233088a7a513440782de80b2
  - kind: registry
    name: jxl-frame
    version: 0.13.3
    sha: 2d967c6fd669c7c01060b5022d8835fa82fd46b06ffc98b549f17600a097c2b3
  - kind: registry
    name: jxl-grid
    version: 0.6.1
    sha: a0e0ef92d5d60e76bf41098e57e985f523185e08fad54268da448637feca6989
  - kind: registry
    name: jxl-image
    version: 0.13.0
    sha: c5f752d62577c702a94dbbce4045caf08cb58639e8a4d56464b40ecf33ffe565
  - kind: registry
    name: jxl-jbr
    version: 0.2.1
    sha: e35d032bcec660647828527ff42c6f5776d2fd44b8357f9f6d9ac6dc07218e46
  - kind: registry
    name: jxl-modular
    version: 0.11.2
    sha: da758b2f989aafd9eeb39489fe43d7be5a3a0d2ad61cf1bad705eb6990a6053c
  - kind: registry
    name: jxl-oxide
    version: 0.12.5
    sha: ee8ecd2678ed70c1eda42b811ccb2e25ab836edeb18e7f1178c1f917ed36b772
  - kind: registry
    name: jxl-oxide-common
    version: 1.0.0
    sha: b62394c5021b3a9e7e0dbb2d639d555d019090c9946c39f6d3b09d390db4157b
  - kind: registry
    name: jxl-render
    version: 0.12.3
    sha: aa0c3100918bd3c41bb0f8ce1f4f1664e48f3032ff8eeab0d6a2cfc3276f462d
  - kind: registry
    name: jxl-threadpool
    version: 1.0.0
    sha: 25f15eb830aa77a7f21148d72e153562a26bfe570139bd4922eab1908dd499d3
  - kind: registry
    name: jxl-vardct
    version: 0.11.1
    sha: ce72a18c6d3a47172ab6c479be2bdb56f22066b5d7092663f03b4490820b4511
  - kind: registry
    name: lebe
    version: 0.5.2
    sha: 03087c2bad5e1034e8cace5926dec053fb3790248370865f5117a7d0213354c8
  - kind: registry
    name: libc
    version: 0.2.182
    sha: 6800badb6cb2082ffd7b6a67e6125bb39f18782f793520caee8cb8846be06112
  - kind: registry
    name: libfuzzer-sys
    version: 0.4.7
    sha: a96cfd5557eb82f2b83fed4955246c988d331975a002961b07c81584d107e7f7
  - kind: registry
    name: libredox
    version: 0.1.3
    sha: c0ff37bd590ca25063e35af745c343cb7a0271906fb7b37e4813e8f79f00268d
  - kind: registry
    name: linux-raw-sys
    version: 0.11.0
    sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
  - kind: registry
    name: litrs
    version: 1.0.0
    sha: 11d3d7f243d5c5a8b9bb5d6dd2b1602c0cb0b9db1621bafc7ed66e35ff9fe092
  - kind: registry
    name: lock_api
    version: 0.4.14
    sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: loop9
    version: 0.1.5
    sha: 0fae87c125b03c1d2c0150c90365d7d6bcc53fb73a9acaef207d2d065860f062
  - kind: registry
    name: material-colors
    version: 0.4.2
    sha: e226ffda362d5bc26bb8f730d637a0851eedfb05e35d92108c9d8b48d2e47941
  - kind: registry
    name: maybe-rayon
    version: 0.1.1
    sha: 8ea1f30cedd69f0a2954655f7188c6a834246d2bcf1e315e2ac40c4b24dc9519
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: mime
    version: 0.3.17
    sha: 6877bb514081ee2a7ff5ef9de3281f14a4dd4bceac4c09388074a6b5df8a139a
  - kind: registry
    name: minimal-lexical
    version: 0.2.1
    sha: 68354c5c6bd36d73ff3feceb05efa59b6acb7626617f4962be322a825e61f79a
  - kind: registry
    name: miniz_oxide
    version: 0.7.4
    sha: b8a240ddb74feaf34a79a7add65a741f3167852fba007066dcac1ca548d89c08
  - kind: registry
    name: miniz_oxide
    version: 0.8.9
    sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
  - kind: registry
    name: mio
    version: 1.0.2
    sha: 80e04d1dcff3aae0704555fe5fee3bcfaf3d1fdf8a7e521d5b9d2b42acb52cec
  - kind: registry
    name: moxcms
    version: 0.8.1
    sha: bb85c154ba489f01b25c0d36ae69a87e4a1c73a72631fc6c0eb6dde34a73e44b
  - kind: registry
    name: new_debug_unreachable
    version: 1.0.6
    sha: 650eef8c711430f1a879fdd01d4745a7deea475becfb90269c06775983bbf086
  - kind: registry
    name: nom
    version: 7.1.3
    sha: d273983c5a657a70a3e8f2a01329822f3b8c8172b73826411a55751e404a0a4a
  - kind: registry
    name: noop_proc_macro
    version: 0.3.0
    sha: 0676bb32a98c1a483ce53e500a81ad9c3d5b3f7c920c28c24e9cb0980d0b5bc8
  - kind: registry
    name: num-bigint
    version: 0.4.6
    sha: a5e44f723f1133c9deac646763579fdb3ac745e418f2a7af9cd0c431da1f20b9
  - kind: registry
    name: num-derive
    version: 0.4.2
    sha: ed3955f1a9c7c0c15e092f9c887db08b1fc683305fdf6eb6684f22555355e202
  - kind: registry
    name: num-integer
    version: 0.1.46
    sha: 7969661fd2958a5cb096e56c8e1ad0444ac2bbcd0061bd28660485a44879858f
  - kind: registry
    name: num-rational
    version: 0.4.2
    sha: f83d14da390562dca69fc84082e73e548e1ad308d24accdedd2720017cb37824
  - kind: registry
    name: num-traits
    version: 0.2.19
    sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
  - kind: registry
    name: object
    version: 0.32.2
    sha: a6a622008b6e321afc04970976f62ee297fdbaa6f95318ca343e3eebb9648441
  - kind: registry
    name: once_cell
    version: 1.19.0
    sha: 3fdb12b2476b595f9358c5161aa467c2438859caa136dec86c26fdd2efe17b92
  - kind: registry
    name: oorandom
    version: 11.1.4
    sha: b410bbe7e14ab526a0e86877eb47c6996a2bd7746f027ba551028c925390e4e9
  - kind: registry
    name: option-ext
    version: 0.2.0
    sha: 04744f49eae99ab78e0d5c0b603ab218f515ea8cfe5a456d7629ad883a3b6e7d
  - kind: registry
    name: owo-colors
    version: 4.0.0
    sha: caff54706df99d2a78a5a4e3455ff45448d81ef1bb63c22cd14052ca0e993a3f
  - kind: registry
    name: palette
    version: 0.7.6
    sha: 4cbf71184cc5ecc2e4e1baccdb21026c20e5fc3dcf63028a086131b3ab00b6e6
  - kind: registry
    name: palette_derive
    version: 0.7.6
    sha: f5030daf005bface118c096f510ffb781fc28f9ab6a32ab224d8631be6851d30
  - kind: registry
    name: paris
    version: 1.5.15
    sha: 8fecab3723493c7851f292cb060f3ee1c42f19b8d749345d0d7eaf3fd19aa62d
  - kind: registry
    name: paris-log
    version: 1.0.2
    sha: 774dbe6c00feee96462fae6b32789d9f570569f0b1543cea61336932b240d7eb
  - kind: registry
    name: parking_lot
    version: 0.12.5
    sha: 93857453250e3077bd71ff98b6a65ea6621a19bb0f559a85248955ac12c45a1a
  - kind: registry
    name: parking_lot_core
    version: 0.9.12
    sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
  - kind: registry
    name: paste
    version: 1.0.15
    sha: 57c0d7b74b563b49d38dae00a0c37d4d6de9b432382b2892f0574ddcae73fd0a
  - kind: registry
    name: pastey
    version: 0.1.1
    sha: 35fb2e5f958ec131621fdd531e9fc186ed768cbe395337403ae56c17a74c68ec
  - kind: registry
    name: percent-encoding
    version: 2.3.1
    sha: e3148f5046208a5d56bcfc03053e3ca6334e51da8dfb19b6cdc8b306fae3283e
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
    version: 1.1.5
    sha: b6bf43b791c5b9e34c3d182969b4abb522f9343702850a2e57f460d00d09b4b3
  - kind: registry
    name: pin-project-internal
    version: 1.1.5
    sha: 2f38a4412a78282e09a2cf38d195ea5420d15ba0602cb375210efbc877243965
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: plotters
    version: 0.3.6
    sha: a15b6eccb8484002195a3e44fe65a4ce8e93a625797a063735536fd59cb01cf3
  - kind: registry
    name: plotters-backend
    version: 0.3.6
    sha: 414cec62c6634ae900ea1c56128dfe87cf63e7caece0852ec76aba307cebadb7
  - kind: registry
    name: plotters-svg
    version: 0.3.6
    sha: 81b30686a7d9c3e010b84284bdd26a29f2138574f52f5eb6f794fc0ad924e705
  - kind: registry
    name: png
    version: 0.18.1
    sha: 60769b8b31b2a9f263dae2776c37b1b28ae246943cf719eb6946a1db05128a61
  - kind: registry
    name: ppv-lite86
    version: 0.2.20
    sha: 77957b295656769bb8ad2b6a6b09d897d94f05c41b069aede1fcdaa675eaea04
  - kind: registry
    name: pretty_env_logger
    version: 0.5.0
    sha: 865724d4dbe39d9f3dd3b52b88d859d66bcb2d6a0acfd5ea68a65fb66d4bdc1c
  - kind: registry
    name: proc-macro2
    version: 1.0.106
    sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
  - kind: registry
    name: profiling
    version: 1.0.16
    sha: afbdc74edc00b6f6a218ca6a5364d6226a259d4b8ea1af4a0ea063f27e179f4d
  - kind: registry
    name: profiling-procmacros
    version: 1.0.16
    sha: a65f2e60fbf1063868558d69c6beacf412dc755f9fc020f514b7955fc914fe30
  - kind: registry
    name: psm
    version: 0.1.25
    sha: f58e5423e24c18cc840e1c98370b3993c6649cd1678b4d24318bcf0a083cbe88
  - kind: registry
    name: pxfm
    version: 0.1.28
    sha: b5a041e753da8b807c9255f28de81879c78c876392ff2469cde94799b2896b9d
  - kind: registry
    name: qoi
    version: 0.4.1
    sha: 7f6d64c71eb498fe9eae14ce4ec935c555749aef511cca85b5568910d6e48001
  - kind: registry
    name: quick-error
    version: 2.0.1
    sha: a993555f31e5a609f617c12db6250dedcac1b0a85076912c436e6fc9b2c8e6a3
  - kind: registry
    name: quinn
    version: 0.11.3
    sha: b22d8e7369034b9a7132bc2008cac12f2013c8132b45e0554e6e20e2617f2156
  - kind: registry
    name: quinn-proto
    version: 0.11.6
    sha: ba92fb39ec7ad06ca2582c0ca834dfeadcaf06ddfc8e635c80aa7e1c05315fdd
  - kind: registry
    name: quinn-udp
    version: 0.5.4
    sha: 8bffec3605b73c6f1754535084a85229fa8a30f86014e6c81aeec4abb68b0285
  - kind: registry
    name: quote
    version: 1.0.36
    sha: 0fa76aaf39101c457836aec0ce2316dbdc3ab723cdda1c6bd4e6ad4208acaca7
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
    version: 0.3.1
    sha: e6c10a63a0fa32252be49d21e7709d4d4baf8d231c2dbce1eaa8141b9b127d88
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
    version: 0.9.5
    sha: 76afc826de14238e6e8c374ddcc1fa19e374fd8dd986b0d2af0d02377261d83c
  - kind: registry
    name: rav1e
    version: 0.8.1
    sha: 43b6dd56e85d9483277cde964fd1bdb0428de4fec5ebba7540995639a21cb32b
  - kind: registry
    name: ravif
    version: 0.13.0
    sha: e52310197d971b0f5be7fe6b57530dcd27beb35c1b013f29d66c1ad73fbbcc45
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
    version: 0.5.18
    sha: ed2bf2547551a7053d6fdfafda3f938979645c44812fbfcda098faae3f1a362d
  - kind: registry
    name: redox_users
    version: 0.4.5
    sha: bd283d9651eeda4b2a83a43c1c91b266c40fd76ecd39a50a8c630ae69dc72891
  - kind: registry
    name: regex
    version: 1.11.1
    sha: b544ef1b4eac5dc2db33ea63606ae9ffcfac26c1416a2806ae0bf5f56b201191
  - kind: registry
    name: regex-automata
    version: 0.3.9
    sha: 59b23e92ee4318893fa3fe3e6fb365258efbfe6ac6ab30f090cdcbb7aa37efa9
  - kind: registry
    name: regex-automata
    version: 0.4.9
    sha: 809e8dc61f6de73b46c85f4c96486310fe304c434cfa43669d7b40f711150908
  - kind: registry
    name: regex-syntax
    version: 0.7.5
    sha: dbb5fb1acd8a1a18b3dd5be62d25485eb770e05afb408a9627d14d451bae12da
  - kind: registry
    name: regex-syntax
    version: 0.8.5
    sha: 2b15c43186be67a4fd63bee50d0303afffcef381492ebe2c5d87f324e1b8815c
  - kind: registry
    name: reqwest
    version: 0.11.27
    sha: dd67538700a17451e7cba03ac727fb961abb7607553461627b97de0b89cf4a62
  - kind: registry
    name: reqwest
    version: 0.12.5
    sha: c7d6d2a27d57148378eb5e111173f4276ad26340ecc5c49a4a2152167a2d6a37
  - kind: registry
    name: resolve-path
    version: 0.1.0
    sha: 321e5e41b3b192dab6f1e75b9deacb6688b4b8c5e68906a78e8f43e7c2887bb5
  - kind: registry
    name: rgb
    version: 0.8.53
    sha: 47b34b781b31e5d73e9fbc8689c70551fd1ade9a19e3e28cfec8580a79290cc4
  - kind: registry
    name: ring
    version: 0.17.8
    sha: c17fa4cb658e3583423e915b9f3acc01cceaee1860e33d59ebae66adc3a2dc0d
  - kind: registry
    name: rustc-demangle
    version: 0.1.24
    sha: 719b953e2095829ee67db738b3bfa9fa368c94900df327b3f07fe6e794d2fe1f
  - kind: registry
    name: rustc-hash
    version: 2.0.0
    sha: 583034fd73374156e66797ed8e5b0d5690409c9226b22d87cb7f19821c05d152
  - kind: registry
    name: rustix
    version: 1.1.3
    sha: 146c9e247ccc180c1f61615433868c99f3de3ae256a30a43b49f67c2d9171f34
  - kind: registry
    name: rustls
    version: 0.21.12
    sha: 3f56a14d1f48b391359b22f731fd4bd7e43c97f3c50eee276f3aa09c94784d3e
  - kind: registry
    name: rustls
    version: 0.23.12
    sha: c58f8c84392efc0a126acce10fa59ff7b3d2ac06ab451a33f2741989b806b044
  - kind: registry
    name: rustls-pemfile
    version: 1.0.4
    sha: 1c74cae0a4cf6ccbbf5f359f08efdf8ee7e1dc532573bf0db71968cb56b1448c
  - kind: registry
    name: rustls-pemfile
    version: 2.1.3
    sha: 196fe16b00e106300d3e45ecfcb764fa292a535d7326a29a5875c579c7417425
  - kind: registry
    name: rustls-pki-types
    version: 1.8.0
    sha: fc0a2ce646f8655401bb81e7927b812614bd5d91dbc968696be50603510fcaf0
  - kind: registry
    name: rustls-webpki
    version: 0.101.7
    sha: 8b6275d1ee7a1cd780b64aca7726599a1dbc893b1e64144529e55c3c2f745765
  - kind: registry
    name: rustls-webpki
    version: 0.102.6
    sha: 8e6b52d4fda176fd835fdc55a835d4a89b8499cad995885a21149d5ad62f852e
  - kind: registry
    name: ryu
    version: 1.0.18
    sha: f3cb5ba0dc43242ce17de99c180e96db90b235b8a9fdc9543c96d2209116bd9f
  - kind: registry
    name: same-file
    version: 1.0.6
    sha: 93fc1dc3aaa9bfed95e02e6eadabb4baf7e3078b0bd1b4d7b6b0b68378900502
  - kind: registry
    name: scopeguard
    version: 1.2.0
    sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
  - kind: registry
    name: sct
    version: 0.7.1
    sha: da046153aa2352493d6cb7da4b6e5c0c057d8a1d0a9aa8560baffdd945acd414
  - kind: registry
    name: semver
    version: 1.0.23
    sha: 61697e0a1c7e512e84a621326239844a24d8207b4669b41bc18b32ea5cbf988b
  - kind: registry
    name: serde
    version: 1.0.219
    sha: 5f0e2c6ed6606019b4e29e69dbaba95b11854410e5347d525002456dbbb786b6
  - kind: registry
    name: serde_derive
    version: 1.0.219
    sha: 5b0276cf7f2c73365f7157c8123c21cd9a50fbbd844757af28ca1f5925fc2a00
  - kind: registry
    name: serde_json
    version: 1.0.125
    sha: 83c8e735a073ccf5be70aa8066aa984eaf2fa000db6c8d0100ae605b366d31ed
  - kind: registry
    name: serde_spanned
    version: 0.6.7
    sha: eb5b1b31579f3811bf615c144393417496f152e12ac8b7663bf664f4a815306d
  - kind: registry
    name: serde_urlencoded
    version: 0.7.1
    sha: d3491c14715ca2294c4d6a88f15e84739788c1d030eed8c110436aafdaa2f3fd
  - kind: registry
    name: sha2
    version: 0.10.9
    sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
  - kind: registry
    name: shell-words
    version: 1.1.1
    sha: dc6fe69c597f9c37bfeeeeeb33da3530379845f10be461a66d16d03eca2ded77
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: simd-adler32
    version: 0.3.7
    sha: d66dc143e6b11c1eddc06d5c423cfc97062865baf299914ab64caa38182078fe
  - kind: registry
    name: simd_helpers
    version: 0.1.0
    sha: 95890f873bec569a0362c235787f3aca6e1e887302ba4840839bcc6459c42da6
  - kind: registry
    name: siphasher
    version: 1.0.1
    sha: 56199f7ddabf13fe5074ce809e7d3f42b42ae711800501b5b16ea82ad029c39d
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: socket2
    version: 0.5.7
    sha: ce305eb0b4296696835b71df73eb912e0f1ffd2556a501fcede6e0c50349191c
  - kind: registry
    name: spin
    version: 0.9.8
    sha: 6980e8d7511241f8acf4aebddbb1ff938df5eebe98691418c4468d0b72a96a67
  - kind: registry
    name: stable_deref_trait
    version: 1.2.1
    sha: 6ce2be8dc25455e1f91df71bfa12ad37d7af1092ae736f3a6cd0e37bc7810596
  - kind: registry
    name: stacker
    version: 0.1.20
    sha: 601f9201feb9b09c00266478bf459952b9ef9a6b94edb2f21eba14ab681a60a9
  - kind: registry
    name: strsim
    version: 0.11.1
    sha: 7da8b5736845d9f2fcb837ea5d9e2628564b3b043a70948a3f0b778838c5fb4f
  - kind: registry
    name: subtle
    version: 2.6.1
    sha: 13c2bddecc57b384dee18652358fb23172facb8a2c51ccc10d74c157bdea3292
  - kind: registry
    name: syn
    version: 2.0.87
    sha: 25aa4ce346d03a6dcd68dd8b4010bcb74e54e62c90c573f394c46eae99aba32d
  - kind: registry
    name: sync_wrapper
    version: 0.1.2
    sha: 2047c6ded9c721764247e62cd3b03c09ffc529b2ba5b10ec482ae507a4a70160
  - kind: registry
    name: sync_wrapper
    version: 1.0.1
    sha: a7065abeca94b6a8a577f9bd45aa0867a2238b74e8eb67cf10d492bc39351394
  - kind: registry
    name: system-configuration
    version: 0.5.1
    sha: ba3a3adc5c275d719af8cb4272ea1c4a6d668a777f37e115f6d11ddbc1c8e0e7
  - kind: registry
    name: system-configuration-sys
    version: 0.5.0
    sha: a75fb188eb626b924683e3b95e3a48e63551fcfb51949de2f06a9d91dbee93c9
  - kind: registry
    name: termcolor
    version: 1.4.1
    sha: 06794f8f6c5c898b3275aebefa6b8a1cb24cd2c6c79397ab15774837a0bc5755
  - kind: registry
    name: thiserror
    version: 1.0.63
    sha: c0342370b38b6a11b6cc11d6a805569958d54cfa061a29969c3b5ce2ea405724
  - kind: registry
    name: thiserror
    version: 2.0.12
    sha: 567b8a2dae586314f7be2a752ec7474332959c6460e02bde30d702a66d488708
  - kind: registry
    name: thiserror-impl
    version: 1.0.63
    sha: a4558b58466b9ad7ca0f102865eccc95938dca1a74a856f2b57b6629050da261
  - kind: registry
    name: thiserror-impl
    version: 2.0.12
    sha: 7f7cf42b4507d8ea322120659672cf1b9dbb93f8f2d4ecfd6e51350ff5b17a1d
  - kind: registry
    name: tiff
    version: 0.11.3
    sha: b63feaf3343d35b6ca4d50483f94843803b0f51634937cc2ec519fc32232bc52
  - kind: registry
    name: tinytemplate
    version: 1.2.1
    sha: be4d6b5f19ff7664e8c98d03e2139cb510db9b0a60b55f8e8709b689d939b6bc
  - kind: registry
    name: tinyvec
    version: 1.8.0
    sha: 445e881f4f6d382d5f27c034e25eb92edd7c784ceab92a0937db7f2e9471b938
  - kind: registry
    name: tinyvec_macros
    version: 0.1.1
    sha: 1f3ccbac311fea05f86f61904b462b55fb3df8837a366dfc601a0161d0532f20
  - kind: registry
    name: tokio
    version: 1.39.3
    sha: 9babc99b9923bfa4804bd74722ff02c0381021eafa4db9949217e3be8e84fff5
  - kind: registry
    name: tokio-rustls
    version: 0.24.1
    sha: c28327cf380ac148141087fbfb9de9d7bd4e84ab5d2c28fbc911d753de8a7081
  - kind: registry
    name: tokio-rustls
    version: 0.26.0
    sha: 0c7bc40d0e5a97695bb96e27995cd3a08538541b0a846f65bba7a359f36700d4
  - kind: registry
    name: tokio-util
    version: 0.7.11
    sha: 9cf6b47b3771c49ac75ad09a6162f53ad4b8088b76ac60e8ec1455b31a189fe1
  - kind: registry
    name: toml
    version: 0.8.19
    sha: a1ed1f98e3fdc28d6d910e6737ae6ab1a93bf1985935a1193e68f93eeb68d24e
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.20
    sha: 583c44c02ad26b0c3f3066fe629275e50627026c51ac2e595cca4c230ce1ce1d
  - kind: registry
    name: tower
    version: 0.4.13
    sha: b8fa9be0de6cf49e536ce1851f987bd21a43b771b09473c3549a6c853db37c1c
  - kind: registry
    name: tower-layer
    version: 0.3.3
    sha: 121c2a6cda46980bb0fcd1647ffaf6cd3fc79a013de288782836f6df9c48780e
  - kind: registry
    name: tower-service
    version: 0.3.3
    sha: 8df9b6e13f2d32c91b9bd719c00d1958837bc7dec474d94952798cc8e69eeec3
  - kind: registry
    name: tracing
    version: 0.1.40
    sha: c3523ab5a71916ccf420eebdf5521fcef02141234bbc0b8a49f2fdc4544364ef
  - kind: registry
    name: tracing-core
    version: 0.1.32
    sha: c06d3da6113f116aaee68e4d601191614c9053067f9ab7f6edbcb161237daa54
  - kind: registry
    name: try-lock
    version: 0.2.5
    sha: e421abadd41a4225275504ea4d6566923418b7f05506fbc9c0fe86ba7396114b
  - kind: registry
    name: typenum
    version: 1.17.0
    sha: 42ff0bf0c66b8238c6f3b578df37d0b7848e55df8577b3f74f92a69acceeb825
  - kind: registry
    name: unicode-bidi
    version: 0.3.15
    sha: 08f95100a766bf4f8f28f90d77e0a5461bbdb219042e7679bebe79004fed8d75
  - kind: registry
    name: unicode-ident
    version: 1.0.12
    sha: 3354b9ac3fae1ff6755cb6db53683adb661634f67557942dea4facebec0fee4b
  - kind: registry
    name: unicode-normalization
    version: 0.1.23
    sha: a56d1686db2308d901306f92a263857ef59ea39678a5458e7cb17f01415101f5
  - kind: registry
    name: unicode-segmentation
    version: 1.12.0
    sha: f6ccf251212114b54433ec949fd6a7841275f9ada20dddd2f29e9ceea4501493
  - kind: registry
    name: unicode-width
    version: 0.1.13
    sha: 0336d538f7abc86d282a4189614dfaa90810dfc2c6f6427eaf88e16311dd225d
  - kind: registry
    name: unicode-width
    version: 0.2.2
    sha: b4ac048d71ede7ee76d585517add45da530660ef4390e49b098733c6e897f254
  - kind: registry
    name: untrusted
    version: 0.9.0
    sha: 8ecb6da28b8a351d773b68d5825ac39017e680750f980f3a1a85cd8dd28a47c1
  - kind: registry
    name: update-informer
    version: 1.1.0
    sha: 2f8811797a24ff123db3c6e1087aa42551d03d772b3724be421ad063da1f5f3f
  - kind: registry
    name: ureq
    version: 2.10.1
    sha: b74fc6b57825be3373f7054754755f03ac3a8f5d70015ccad699ba2029956f4a
  - kind: registry
    name: url
    version: 2.5.2
    sha: 22784dbdf76fdde8af1aeda5622b546b422b6fc585325248a2bf9f5e41e94d6c
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: v_frame
    version: 0.3.8
    sha: d6f32aaa24bacd11e488aa9ba66369c7cd514885742c9fe08cfe85884db3e92b
  - kind: registry
    name: version_check
    version: 0.9.5
    sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
  - kind: registry
    name: walkdir
    version: 2.5.0
    sha: 29790946404f91d9c5d06f9874efddea1dc06c5efe94541a7d6863108e3a5e4b
  - kind: registry
    name: want
    version: 0.3.1
    sha: bfa7760aed19e106de2c7c0b581b509f2f25d3dacaf737cb82ac61bc6d760b0e
  - kind: registry
    name: wasi
    version: 0.11.0+wasi-snapshot-preview1
    sha: 9c8d87e72b64a3b4db28d11ce29237c246188f4f51057d65a7eab63b7987e423
  - kind: registry
    name: wasip2
    version: 1.0.2+wasi-0.2.9
    sha: 9517f9239f02c069db75e65f174b3da828fe5f5b945c4dd26bd25d89c03ebcf5
  - kind: registry
    name: wasm-bindgen
    version: 0.2.93
    sha: a82edfc16a6c469f5f44dc7b571814045d60404b55a0ee849f9bcfa2e63dd9b5
  - kind: registry
    name: wasm-bindgen-backend
    version: 0.2.93
    sha: 9de396da306523044d3302746f1208fa71d7532227f15e347e2d93e4145dd77b
  - kind: registry
    name: wasm-bindgen-futures
    version: 0.4.43
    sha: 61e9300f63a621e96ed275155c108eb6f843b6a26d053f122ab69724559dc8ed
  - kind: registry
    name: wasm-bindgen-macro
    version: 0.2.93
    sha: 585c4c91a46b072c92e908d99cb1dcdf95c5218eeb6f3bf1efa991ee7a68cccf
  - kind: registry
    name: wasm-bindgen-macro-support
    version: 0.2.93
    sha: afc340c74d9005395cf9dd098506f7f44e38f2b4a21c6aaacf9a105ea5e1e836
  - kind: registry
    name: wasm-bindgen-shared
    version: 0.2.93
    sha: c62a0a307cb4a311d3a07867860911ca130c3494e8c2719593806c08bc5d0484
  - kind: registry
    name: web-sys
    version: 0.3.70
    sha: 26fdeaafd9bd129f65e7c031593c24d62186301e0c72c8978fa1678be7d532c0
  - kind: registry
    name: webpki-roots
    version: 0.25.4
    sha: 5f20c57d8d7db6d3b86154206ae5d8fba62dd39573114de97c2cb0578251f8e1
  - kind: registry
    name: webpki-roots
    version: 0.26.3
    sha: bd7c23921eeb1713a4e851530e9b9756e4fb0e89978582942612524cf09f01cd
  - kind: registry
    name: weezl
    version: 0.1.12
    sha: a28ac98ddc8b9274cb41bb4d9d4d5c425b6020c50c46f25559911905610b4a88
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
    version: 0.1.9
    sha: cf221c93e13a30d793f7645a0e7762c55d169dbb0a49671918a2319d289b10bb
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-link
    version: 0.2.1
    sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
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
    version: 0.61.2
    sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
  - kind: registry
    name: windows-targets
    version: 0.48.5
    sha: 9a2fa6e2155d7247be68c096456083145c183cbbbc2764150dda45a87197940c
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.48.5
    sha: 2b38e32f0abccf9987a4e3079dfb67dcd799fb61361e53e2882c3cbaf0d905d8
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.48.5
    sha: dc35310971f3b2dbbf3f0690a219f40e2d9afcf64f9ab7cc1be722937c26b4bc
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.48.5
    sha: a75915e7def60c94dcef72200b9a8e58e5091744960da64ec734a6c6e9b3743e
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_msvc
    version: 0.48.5
    sha: 8f55c233f70c4b27f66c523580f78f1004e8b5a8b659e05a4eb49d4166cca406
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.48.5
    sha: 53d40abd2583d23e4718fddf1ebec84dbff8381c07cae67ff7768bbf19c6718e
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.48.5
    sha: 0b7b52767868a23d5bab768e390dc5f5c55825b6d30b86c844ff2dc7414044cc
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.48.5
    sha: ed94fce61571a4006852b7389a063ab983c02eb1bb37b47f8272ce92d06d9538
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.6.18
    sha: 68a9bda4691f099d435ad181000724da8e5899daa10713c2d432552b9ccd3a6f
  - kind: registry
    name: winreg
    version: 0.50.0
    sha: 524e57b2c537c0f9b1e69f1965311ec12182b4122e45035b1508cd24d2adadb1
  - kind: registry
    name: winreg
    version: 0.52.0
    sha: a277a57398d4bfa075df44f501a17cfdf8542d224f0d36095a2adc7aee4ef0a5
  - kind: registry
    name: wit-bindgen
    version: 0.51.0
    sha: d7249219f66ced02969388cf2bb044a09756a083d0fab1e566056b04d9fbcaa5
  - kind: registry
    name: y4m
    version: 0.8.0
    sha: 7a5a4b21e1a62b67a2970e6831bc091d7b87e119e7f9791aef9702e3bef04448
  - kind: registry
    name: yansi
    version: 1.0.1
    sha: cfe53a6657fd280eaa890a3bc59152892ffa3e30101319d168b781ed6529b049
  - kind: registry
    name: zerocopy
    version: 0.7.35
    sha: 1b9b4fd18abc82b8136838da5d50bae7bdea537c574d8dc1a34ed098d6c166f0
  - kind: registry
    name: zerocopy-derive
    version: 0.7.35
    sha: fa4f8080344d4671fb4e831a13ad1e68092748387dfc4f55e356242fae12ce3e
  - kind: registry
    name: zeroize
    version: 1.8.1
    sha: ced3678a2879b30306d323f4542626697a464a97c0a07c9aebf7ebca65cd4dde
  - kind: registry
    name: zune-core
    version: 0.5.1
    sha: cb8a0807f7c01457d0379ba880ba6322660448ddebc890ce29bb64da71fb40f9
  - kind: registry
    name: zune-inflate
    version: 0.2.54
    sha: 73ab332fe2f6680068f3582b16a24f90ad7096d5d39b974d1c0aff0125116f02
  - kind: registry
    name: zune-jpeg
    version: 0.5.12
    sha: 410e9ecef634c709e3831c2cfdb8d9c32164fae1c67496d5b68fff728eec37fe
build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/rust.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - cargo build --release --all-features --frozen --offline

  install-commands:
  - |
    install -Dm0755 "target/release/matugen" "%{install-root}%{bindir}/matugen"
  - |
    %{install-extra}
