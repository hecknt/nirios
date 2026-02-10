kind: manual

sources:
  - kind: git_repo
    url: github:repires/build-oci-rs.git
    track: main
    ref: e7316109fc25a4a4a7cc48f43aa328b00ecb4525

  - kind: cargo2

    ref:
      - kind: registry
        name: adler2
        version: 2.0.1
        sha: 320119579fcad9c21884f5c4861d16174d0e06250625266f50fe6898340abefa
      - kind: registry
        name: ahash
        version: 0.8.12
        sha: 5a15f179cd60c4584b8a8c596927aadc462e27f2ca70c04e0071964a73ba7a75
      - kind: registry
        name: allocator-api2
        version: 0.2.21
        sha: 683d7910e743518b0e34f1186f92494becacb047c7b6bf616c96772180fef923
      - kind: registry
        name: android_system_properties
        version: 0.1.5
        sha: 819e7219dbd41043ac279b19830f2efc897156490d7fd6ea916720117ee66311
      - kind: registry
        name: anyhow
        version: 1.0.100
        sha: a23eb6b1614318a8071c9b2521f36b424b2c83db5eb3a0fead4a6c0809af6e61
      - kind: registry
        name: autocfg
        version: 1.5.0
        sha: c08606f8c3cbf4ce6ec8e28fb0014a2c086708fe954eaa885384a6165172e7e8
      - kind: registry
        name: bitflags
        version: 2.10.0
        sha: 812e12b5285cc515a9c72a5c1d3b6d46a19dac5acfef5265968c166106e31dd3
      - kind: registry
        name: block-buffer
        version: 0.10.4
        sha: 3078c7629b62d3f0439517fa394996acacc5cbc91c5a20d8c658e77abd503a71
      - kind: registry
        name: bumpalo
        version: 3.19.1
        sha: 5dd9dc738b7a8311c7ade152424974d8115f2cdad61e8dab8dac9f2362298510
      - kind: registry
        name: byteorder
        version: 1.5.0
        sha: 1fd0f2584146f6f2ef48085050886acf353beff7305ebd1ae69500e27c67f64b
      - kind: registry
        name: bytes
        version: 1.11.0
        sha: b35204fbdc0b3f4446b89fc1ac2cf84a8a68971995d0bf2e925ec7cd960f9cb3
      - kind: registry
        name: cc
        version: 1.2.54
        sha: 6354c81bbfd62d9cfa9cb3c773c2b7b2a3a482d569de977fd0e961f6e7c00583
      - kind: registry
        name: cfg-if
        version: 1.0.4
        sha: 9330f8b2ff13f34540b44e946ef35111825727b38d33286ef986142615121801
      - kind: registry
        name: chrono
        version: 0.4.43
        sha: fac4744fb15ae8337dc853fee7fb3f4e48c0fbaa23d0afe49c447b4fab126118
      - kind: registry
        name: cmake
        version: 0.1.57
        sha: 75443c44cd6b379beb8c5b45d85d0773baf31cce901fe7bb252f4eff3008ef7d
      - kind: registry
        name: core-foundation-sys
        version: 0.8.7
        sha: 773648b94d0e5d620f64f280777445740e61fe701025087ec8b57f45c791888b
      - kind: registry
        name: core_affinity
        version: 0.8.3
        sha: a034b3a7b624016c6e13f5df875747cc25f884156aad2abd12b6c46797971342
      - kind: registry
        name: cpufeatures
        version: 0.2.17
        sha: 59ed5838eebb26a2bb2e58f6d5b5316989ae9d08bab10e0e6d103e656d1b0280
      - kind: registry
        name: crc32fast
        version: 1.5.0
        sha: 9481c1c90cbf2ac953f07c8d4a58aa3945c425b7185c9154d67a65e4230da511
      - kind: registry
        name: crossbeam
        version: 0.8.4
        sha: 1137cd7e7fc0fb5d3c5a8678be38ec56e819125d8d7907411fe24ccb943faca8
      - kind: registry
        name: crossbeam-channel
        version: 0.5.15
        sha: 82b8f8f868b36967f9606790d1903570de9ceaf870a7bf9fbbd3016d636a2cb2
      - kind: registry
        name: crossbeam-deque
        version: 0.8.6
        sha: 9dd111b7b7f7d55b72c0a6ae361660ee5853c9af73f70c3c2ef6858b950e2e51
      - kind: registry
        name: crossbeam-epoch
        version: 0.9.18
        sha: 5b82ac4a3c2ca9c3460964f020e1402edd5753411d7737aa39c3714ad1b5420e
      - kind: registry
        name: crossbeam-queue
        version: 0.3.12
        sha: 0f58bbc28f91df819d0aa2a2c00cd19754769c2fad90579b3592b1c9ba7a3115
      - kind: registry
        name: crossbeam-utils
        version: 0.8.21
        sha: d0a5c400df2834b80a4c3327b3aad3a4c4cd4de0629063962b03235697506a28
      - kind: registry
        name: crypto-common
        version: 0.1.7
        sha: 78c8292055d1c1df0cce5d180393dc8cce0abec0a7102adb6c7b1eef6016d60a
      - kind: registry
        name: dashmap
        version: 6.1.0
        sha: 5041cc499144891f3790297212f32a74fb938e5136a14943f338ef9e0ae276cf
      - kind: registry
        name: digest
        version: 0.10.7
        sha: 9ed9a281f7bc9b7576e61468ba615a66a5c8cfdff42420a70aa82701a3b1e292
      - kind: registry
        name: either
        version: 1.15.0
        sha: 48c757948c5ede0e46177b7add2e67155f70e33c07fea8284df6576da70b3719
      - kind: registry
        name: equivalent
        version: 1.0.2
        sha: 877a4ace8713b0bcf2a4e7eec82529c029f1d0619886d18145fea96c3ffe5c0f
      - kind: registry
        name: errno
        version: 0.3.14
        sha: 39cab71617ae0d63f51a36d69f866391735b51691dbda63cf6f96d042b63efeb
      - kind: registry
        name: fastrand
        version: 2.3.0
        sha: 37909eebbb50d72f9059c3b6d82c0463f2ff062c9e95845c43a6c9c0355411be
      - kind: registry
        name: filetime
        version: 0.2.27
        sha: f98844151eee8917efc50bd9e8318cb963ae8b297431495d3f758616ea5c57db
      - kind: registry
        name: find-msvc-tools
        version: 0.1.8
        sha: 8591b0bcc8a98a64310a2fae1bb3e9b8564dd10e381e6e28010fde8e8e8568db
      - kind: registry
        name: flate2
        version: 1.1.8
        sha: b375d6465b98090a5f25b1c7703f3859783755aa9a80433b36e0379a3ec2f369
      - kind: registry
        name: flume
        version: 0.10.14
        sha: 1657b4441c3403d9f7b3409e47575237dac27b1b5726df654a6ecbf92f0f7577
      - kind: registry
        name: futures-core
        version: 0.3.31
        sha: 05f29059c0c2090612e8d742178b0580d2dc940c837851ad723096f87af6663e
      - kind: registry
        name: futures-sink
        version: 0.3.31
        sha: e575fab7d1e0dcb8d0c7bcf9a63ee213816ab51902e6d244a95819acacf1d4f7
      - kind: registry
        name: generic-array
        version: 0.14.7
        sha: 85649ca51fd72272d7821adaf274ad91c288277713d9c18820d8499a7ff69e9a
      - kind: registry
        name: getrandom
        version: 0.2.17
        sha: ff2abc00be7fca6ebc474524697ae276ad847ad0a6b3faa4bcb027e9a4614ad0
      - kind: registry
        name: getrandom
        version: 0.3.4
        sha: 899def5c37c4fd7b2664648c28120ecec138e4d395b459e5ca34f9cce2dd77fd
      - kind: registry
        name: gzp
        version: 0.11.3
        sha: e7c65d1899521a11810501b50b898464d133e1afc96703cff57726964cfa7baf
      - kind: registry
        name: hashbrown
        version: 0.14.5
        sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
      - kind: registry
        name: hashbrown
        version: 0.16.1
        sha: 841d1cc9bed7f9236f321df977030373f4a4163ae1a7dbfe1a51a2c1a51d9100
      - kind: registry
        name: hermit-abi
        version: 0.5.2
        sha: fc0fef456e4baa96da950455cd02c081ca953b141298e41db3fc7e36b1da849c
      - kind: registry
        name: iana-time-zone
        version: 0.1.65
        sha: e31bc9ad994ba00e440a8aa5c9ef0ec67d5cb5e5cb0cc7f8b744a35b389cc470
      - kind: registry
        name: iana-time-zone-haiku
        version: 0.1.2
        sha: f31827a206f56af32e590ba56d5d2d085f558508192593743f16b2306495269f
      - kind: registry
        name: indexmap
        version: 2.13.0
        sha: 7714e70437a7dc3ac8eb7e6f8df75fd8eb422675fc7678aff7364301092b1017
      - kind: registry
        name: itoa
        version: 1.0.17
        sha: 92ecc6618181def0457392ccd0ee51198e065e016d1d527a7ac1b6dc7c1f09d2
      - kind: registry
        name: jobserver
        version: 0.1.34
        sha: 9afb3de4395d6b3e67a780b6de64b51c978ecf11cb9a462c66be7d4ca9039d33
      - kind: registry
        name: js-sys
        version: 0.3.85
        sha: 8c942ebf8e95485ca0d52d97da7c5a2c387d0e7f0ba4c35e93bfcaee045955b3
      - kind: registry
        name: jwalk
        version: 0.8.1
        sha: 2735847566356cd2179a2a38264839308f7079fa96e6bd5a42d740460e003c56
      - kind: registry
        name: lasso
        version: 0.7.3
        sha: 6e14eda50a3494b3bf7b9ce51c52434a761e383d7238ce1dd5dcec2fbc13e9fb
      - kind: registry
        name: libc
        version: 0.2.180
        sha: bcc35a38544a891a5f7c865aca548a982ccb3b8650a5b06d0fd33a10283c56fc
      - kind: registry
        name: libdeflate-sys
        version: 0.12.0
        sha: e1f7b0817f85e2ba608892f30fbf4c9d03f3ebf9db0c952d1b7c8f7387b54785
      - kind: registry
        name: libdeflater
        version: 0.12.0
        sha: 671e63282f642c7bcc7d292b212d5a4739fef02a77fe98429a75d308f96e7931
      - kind: registry
        name: libredox
        version: 0.1.12
        sha: 3d0b95e02c851351f877147b7deea7b1afb1df71b63aa5f8270716e0c5720616
      - kind: registry
        name: libz-ng-sys
        version: 1.1.23
        sha: 7bf914b7dd154ca9193afec311d8e39345c1bd93b48b3faa77329f0db8f553c0
      - kind: registry
        name: libz-sys
        version: 1.1.23
        sha: 15d118bbf3771060e7311cc7bb0545b01d08a8b4a7de949198dec1fa0ca1c0f7
      - kind: registry
        name: linux-raw-sys
        version: 0.11.0
        sha: df1d3c3b53da64cf5760482273a98e575c651a67eec7f77df96b5b642de8f039
      - kind: registry
        name: lock_api
        version: 0.4.14
        sha: 224399e74b87b5f3557511d98dff8b14089b3dadafcab6bb93eab67d3aace965
      - kind: registry
        name: log
        version: 0.4.29
        sha: 5e5032e24019045c762d3c0f28f5b6b8bbf38563a65908389bf7978758920897
      - kind: registry
        name: memchr
        version: 2.7.6
        sha: f52b00d39961fc5b2736ea853c9cc86238e165017a493d1d5c8eac6bdc4cc273
      - kind: registry
        name: memmap2
        version: 0.9.9
        sha: 744133e4a0e0a658e1374cf3bf8e415c4052a15a111acd372764c55b4177d490
      - kind: registry
        name: miniz_oxide
        version: 0.8.9
        sha: 1fa76a2c86f704bdb222d66965fb3d63269ce38518b83cb0575fca855ebb6316
      - kind: registry
        name: nanorand
        version: 0.7.0
        sha: 6a51313c5820b0b02bd422f4b44776fbf47961755c74ce64afc73bfad10226c3
      - kind: registry
        name: num-traits
        version: 0.2.19
        sha: 071dfc062690e90b734c0b2273ce72ad0ffa95f0c74596bc250dcfd960262841
      - kind: registry
        name: num_cpus
        version: 1.17.0
        sha: 91df4bbde75afed763b708b7eee1e8e7651e02d97f6d5dd763e89367e957b23b
      - kind: registry
        name: once_cell
        version: 1.21.3
        sha: 42f5e15c9953c5e4ccceeb2e7382a716482c34515315f7b03532b8b4e8393d2d
      - kind: registry
        name: parking_lot_core
        version: 0.9.12
        sha: 2621685985a2ebf1c516881c026032ac7deafcda1a2c9b7850dc81e3dfcb64c1
      - kind: registry
        name: pin-project
        version: 1.1.10
        sha: 677f1add503faace112b9f1373e43e9e054bfdd22ff1a63c1bc485eaec6a6a8a
      - kind: registry
        name: pin-project-internal
        version: 1.1.10
        sha: 6e918e4ff8c4549eb882f14b3a4bc8c8bc93de829416eacf579f1207a8fbf861
      - kind: registry
        name: pkg-config
        version: 0.3.32
        sha: 7edddbd0b52d732b21ad9a5fab5c704c14cd949e5e9a1ec5929a24fded1b904c
      - kind: registry
        name: proc-macro2
        version: 1.0.106
        sha: 8fd00f0bb2e90d81d1044c2b32617f68fcb9fa3bb7640c23e9c748e53fb30934
      - kind: registry
        name: quote
        version: 1.0.44
        sha: 21b2ebcf727b7760c461f091f9f0f539b77b8e87f2fd88131e7f1b433b3cece4
      - kind: registry
        name: r-efi
        version: 5.3.0
        sha: 69cdb34c158ceb288df11e18b4bd39de994f6657d83847bdffdbd7f346754b0f
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
        name: redox_syscall
        version: 0.7.0
        sha: 49f3fe0889e69e2ae9e41f4d6c4c0181701d00e4697b356fb1f74173a5e0ee27
      - kind: registry
        name: rustc-hash
        version: 2.1.1
        sha: 357703d41365b4b27c590e3ed91eabb1b663f07c4c084095e60cbed4362dff0d
      - kind: registry
        name: rustix
        version: 1.1.3
        sha: 146c9e247ccc180c1f61615433868c99f3de3ae256a30a43b49f67c2d9171f34
      - kind: registry
        name: rustversion
        version: 1.0.22
        sha: b39cdef0fa800fc44525c84ccb54a029961a8215f9619753635a9c0d2538d46d
      - kind: registry
        name: ryu
        version: 1.0.22
        sha: a50f4cf475b65d88e057964e0e9bb1f0aa9bbb2036dc65c64596b42932536984
      - kind: registry
        name: scopeguard
        version: 1.2.0
        sha: 94143f37725109f92c262ed2cf5e59bce7498c01bcc1502d7b9afe439a4e9f49
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
        name: serde_json
        version: 1.0.149
        sha: 83fc039473c5595ace860d8c4fafa220ff474b3fc6bfdb4293327f1a37e94d86
      - kind: registry
        name: serde_yaml
        version: 0.9.34+deprecated
        sha: 6a8b1a1a2ebf674015cc02edccce75287f1a0130d394307b36743c2f5d504b47
      - kind: registry
        name: sha2
        version: 0.10.9
        sha: a7507d819769d01a365ab707794a4084392c824f54a7a6a7862f8c3d0892b283
      - kind: registry
        name: sha2-asm
        version: 0.6.4
        sha: b845214d6175804686b2bd482bcffe96651bb2d1200742b712003504a2dac1ab
      - kind: registry
        name: shlex
        version: 1.3.0
        sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
      - kind: registry
        name: simd-adler32
        version: 0.3.8
        sha: e320a6c5ad31d271ad523dcf3ad13e2767ad8b1cb8f047f75a8aeaf8da139da2
      - kind: registry
        name: smallvec
        version: 1.15.1
        sha: 67b1b7a3b5fe4f1376887184045fcf45c69e92af734b7aaddc05fb777b6fbd03
      - kind: registry
        name: spin
        version: 0.9.8
        sha: 6980e8d7511241f8acf4aebddbb1ff938df5eebe98691418c4468d0b72a96a67
      - kind: registry
        name: syn
        version: 2.0.114
        sha: d4d107df263a3013ef9b1879b0df87d706ff80f65a86ea879bd9c31f9b307c2a
      - kind: registry
        name: tar
        version: 0.4.44
        sha: 1d863878d212c87a19c1a610eb53bb01fe12951c0501cf5a0d65f724914a667a
      - kind: registry
        name: tempfile
        version: 3.24.0
        sha: 655da9c7eb6305c55742045d5a8d2037996d61d8de95806335c7c86ce0f82e9c
      - kind: registry
        name: thiserror
        version: 1.0.69
        sha: b6aaf5339b578ea85b50e080feb250a3e8ae8cfcdff9a461c9ec2904bc923f52
      - kind: registry
        name: thiserror-impl
        version: 1.0.69
        sha: 4fee6c4efc90059e10f81e6d42c60a18f76588c3d74cb83a0b242a2b6c7504c1
      - kind: registry
        name: tikv-jemalloc-sys
        version: 0.5.4+5.3.0-patched
        sha: 9402443cb8fd499b6f327e40565234ff34dbda27460c5b47db0db77443dd85d1
      - kind: registry
        name: tikv-jemallocator
        version: 0.5.4
        sha: 965fe0c26be5c56c94e38ba547249074803efd52adfb66de62107d95aab3eaca
      - kind: registry
        name: typenum
        version: 1.19.0
        sha: 562d481066bde0658276a35467c4af00bdc6ee726305698a55b86e61d7ad82bb
      - kind: registry
        name: unicode-ident
        version: 1.0.22
        sha: 9312f7c4f6ff9069b165498234ce8be658059c6728633667c526e27dc2cf1df5
      - kind: registry
        name: unsafe-libyaml
        version: 0.2.11
        sha: 673aac59facbab8a9007c7f6108d11f63b603f7cabff99fabf650fea5c32b861
      - kind: registry
        name: vcpkg
        version: 0.2.15
        sha: accd4ea62f7bb7a82fe23066fb0957d48ef677f6eeb8215f372f52e48bb32426
      - kind: registry
        name: version_check
        version: 0.9.5
        sha: 0b928f33d975fc6ad9f86c8f283853ad26bdd5b10b7f1542aa2fa15e2289105a
      - kind: registry
        name: wasi
        version: 0.11.1+wasi-snapshot-preview1
        sha: ccf3ec651a847eb01de73ccad15eb7d99f80485de043efb2f370cd654f4ea44b
      - kind: registry
        name: wasip2
        version: 1.0.2+wasi-0.2.9
        sha: 9517f9239f02c069db75e65f174b3da828fe5f5b945c4dd26bd25d89c03ebcf5
      - kind: registry
        name: wasm-bindgen
        version: 0.2.108
        sha: 64024a30ec1e37399cf85a7ffefebdb72205ca1c972291c51512360d90bd8566
      - kind: registry
        name: wasm-bindgen-macro
        version: 0.2.108
        sha: 008b239d9c740232e71bd39e8ef6429d27097518b6b30bdf9086833bd5b6d608
      - kind: registry
        name: wasm-bindgen-macro-support
        version: 0.2.108
        sha: 5256bae2d58f54820e6490f9839c49780dff84c65aeab9e772f15d5f0e913a55
      - kind: registry
        name: wasm-bindgen-shared
        version: 0.2.108
        sha: 1f01b580c9ac74c8d8f0c0e4afb04eeef2acf145458e52c03845ee9cd23e3d12
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
        name: windows-core
        version: 0.62.2
        sha: b8e83a14d34d0623b51dce9581199302a221863196a1dde71a7663a4c2be9deb
      - kind: registry
        name: windows-implement
        version: 0.60.2
        sha: 053e2e040ab57b9dc951b72c264860db7eb3b0200ba345b4e4c3b14f67855ddf
      - kind: registry
        name: windows-interface
        version: 0.59.3
        sha: 3f316c4a2570ba26bbec722032c4099d8c8bc095efccdc15688708623367e358
      - kind: registry
        name: windows-link
        version: 0.2.1
        sha: f0805222e57f7521d6a62e36fa9163bc891acd422f971defe97d64e70d0a4fe5
      - kind: registry
        name: windows-result
        version: 0.4.1
        sha: 7781fa89eaf60850ac3d2da7af8e5242a5ea78d1a11c49bf2910bb5a73853eb5
      - kind: registry
        name: windows-strings
        version: 0.5.1
        sha: 7837d08f69c77cf6b07689544538e017c1bfcf57e34b4c0ff58e6c2cd3b37091
      - kind: registry
        name: windows-sys
        version: 0.61.2
        sha: ae137229bcbd6cdf0f7b80a31df61766145077ddf49416a728b02cb3921ff3fc
      - kind: registry
        name: wit-bindgen
        version: 0.51.0
        sha: d7249219f66ced02969388cf2bb044a09756a083d0fab1e566056b04d9fbcaa5
      - kind: registry
        name: xattr
        version: 1.6.1
        sha: 32e45ad4206f6d2479085147f02bc2ef834ac85886624a23575ae137c8aa8156
      - kind: registry
        name: zerocopy
        version: 0.8.36
        sha: dafd85c832c1b68bbb4ec0c72c7f6f4fc5179627d2bc7c26b30e4c0cc11e76cc
      - kind: registry
        name: zerocopy-derive
        version: 0.8.36
        sha: 7cb7e4e8436d9db52fbd6625dbf2f45243ab84994a72882ec8227b99e72b439a
      - kind: registry
        name: zmij
        version: 1.0.17
        sha: 02aae0f83f69aafc94776e879363e9771d7ecbffe2c7fbb6c14c5e00dfe88439
      - kind: registry
        name: zstd
        version: 0.13.3
        sha: e91ee311a569c327171651566e07972200e76fcfe2242a4fa446149a3881c08a
      - kind: registry
        name: zstd-safe
        version: 7.2.4
        sha: 8f49c4d5f0abb602a93fb8736af2a4f4dd9512e36f7f570d66e65ff867ed3b9d
      - kind: registry
        name: zstd-sys
        version: 2.0.16+zstd.1.5.7
        sha: 91e19ebc2adc8f83e43039e79776e3fda8ca919132d68a1fed6a5faca2683748
build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
  - freedesktop-sdk.bst:components/gcc.bst
  - freedesktop-sdk.bst:components/cmake.bst
  - freedesktop-sdk.bst:components/rust.bst

config:
  build-commands:
    - cargo build --release --frozen

  install-commands:
    - install -Dm755 -t "%{install-root}%{bindir}" target/release/build-oci
