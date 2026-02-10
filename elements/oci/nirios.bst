kind: script

build-depends:
  - freedesktop-sdk.bst:components/fakecap.bst
  - core/build-oci-rs.bst
  - freedesktop-sdk.bst:components/glib.bst
  - freedesktop-sdk.bst:vm/prepare-image.bst
  - freedesktop-sdk.bst:oci/layers/platform-init-script.bst
  - oci/layers/nirios-init-scripts.bst
  - filename: freedesktop-sdk.bst:oci/platform-oci.bst
    config:
      location: /parent
  - filename: oci/layers/nirios.bst
    config:
      location: /layer

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

variables:
  sysroot-seed: b57666f6-0fe5-4310-adff-f256936d164d

config:
  commands:
    - mkdir /fakecap
    - |
      prepare-image.sh \
         --sysroot /layer \
         --initscripts /initial_scripts \
         --seed "%{sysroot-seed}" \
         --noroot --noboot >/dev/null

    - |
      systemd-sysusers --root /layer

    - |
      glib-compile-schemas /layer/usr/share/glib-2.0/schemas

    - |
      cd "%{install-root}"
      build-oci -j %{max-jobs} <<EOF
      mode: oci
      gzip: disabled
      images:
      - os: linux
        architecture: "%{go-arch}"
        parent:
          image: /parent
        layer: /layer
        comment: "Import NiriOS layer"
        config:
          Labels:
            'com.github.containers.toolbox': 'true'
            'org.opencontainers.image.source': 'https://github.com/hecknt/nirios/'
            'org.opencontainers.image.url': 'https://github.com/hecknt/nirios/'
            'containers.bootc': '1'
        index-annotations:
          'org.opencontainers.image.ref.name': 'ghcr.io/hecknt/nirios:latest'
      EOF
