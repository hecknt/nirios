kind: compose

build-depends:
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:extensions/mesa/mesa.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:extensions/mesa/libdrm.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:components/libglvnd.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:components/fontconfig.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:components/xorg-lib-xinerama.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:components/libva.bst
- freedesktop-sdk.bst:cross-compilers/freedesktop-sdk-i686.bst:bootstrap/libxcrypt.bst

public:
  bst:
    split-rules:
      arch:
        - "%{includedir}/i386-linux-gnu/**"
        - "%{indep-libdir}/i386-linux-gnu/**"
        - "%{prefix}/lib*/ld-linux*.so.*"
        - "/lib*/ld-linux*.so.*"
        - "/etc/ld.so.conf.d/*.conf"
