kind: manual

build-depends:
  - freedesktop-sdk.bst:components/fakecap.bst
  - freedesktop-sdk.bst:components/squashfs-tools.bst
  - freedesktop-sdk.bst:components/python3.bst
  - freedesktop-sdk.bst:components/erofs-utils.bst
  - freedesktop-sdk.bst:vm/prepare-image.bst
  - oci/zirconium/init-scripts.bst
  - sysext/jackrabbit/init-scripts.bst
  - filename: oci/zirconium/filesystem.bst
    config:
      location: /sysroot
  - filename: sysext/jackrabbit/filesystem.bst
    config:
      location: /sysroot-jackrabbit

sources:
- kind: local
  path: files/sysext/make-layer.py
# We'll add these when we do signing for the sysext
# - kind: local
#   path: files/boot-keys/SYSEXT.key
# - kind: local
#   path: files/boot-keys/SYSEXT.crt

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 53752261-a988-42fb-a585-b35ae0ab2af4
  strip-binaries: ''

environment:
  EROFS_OPTIONS: -z zstd --all-time -T %{filesystem-time} -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

environment-nocache:
- EROFS_WORKERS

config:
  build-commands:
    - mkdir fakecap
    - cp -a /sysroot sysroot
    - cp -a /sysroot-jackrabbit sysroot-jackrabbit
    - |
      prepare-image.sh \
        --sysroot sysroot \
        --initscripts /initial_scripts \
        --seed "%{sysroot-seed}" \
        --noroot --noboot --nodepmod >/dev/null
    - |
      prepare-image.sh \
        --sysroot sysroot-jackrabbit \
        --initscripts /initial_scripts-jackrabbit \
        --seed "%{sysroot-seed}" \
        --noroot --noboot --nodepmod >/dev/null

    - |
      cd sysroot
      cp -a --parents usr/share/zirconium/just/00-start.just ../sysroot-jackrabbit
      echo 'import "/usr/share/zirconium/just/67-gamerslop.just"' >> ../sysroot-jackrabbit/usr/share/zirconium/just/00-start.just

    - rm /sysroot-jackrabbit/

    - |
      mkdir -p sysroot-jackrabbit/usr/lib/extension-release.d

      cat <<EOF >sysroot-jackrabbit/usr/lib/extension-release.d/extension-release.jackrabbit
      ID="zirconium-hawaii"
      VERSION_ID="%{freedesktop-sdk-flatpak-branch}"
      EOF

    - |
      mkdir -p output
      python ./make-layer.py sysroot/usr sysroot-jackrabbit/usr output/usr

    - |
      mkdir -p tmp

    - |
      TMPDIR='%{build-root}/tmp' \
      mkfs.erofs ${EROFS_OPTIONS} ${EROFS_WORKERS} jackrabbit-%{systemd-arch}.raw output

  install-commands:
    - |
      mv jackrabbit-%{systemd-arch}.raw %{install-root}
