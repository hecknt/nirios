kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p %{install-root}%{sysconfdir}/ld.so.conf.d

  - |
    cat <<EOF >%{install-root}%{sysconfdir}/ld.so.conf.d/00_lib32.conf
    %{libdir}/i386-linux-gnu
    %{libdir}/i386-linux-gnu/GL/default/lib
    EOF

  - |
    cat <<EOF >%{install-root}%{sysconfdir}/ld.so.conf.d/01_codecs_extra.conf
    %{libdir}/codecs-extra/lib
    EOF


  - "%{install-extra}"
