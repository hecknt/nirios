kind: script

build-depends:
  - freedesktop-sdk.bst:components/fakecap.bst
  - nirios/deps.bst
  - freedesktop-sdk.bst:vm/prepare-image.bst
  - core/bootc.bst

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
    - mkdir -p /fakecap /tmp /var/tmp
    - |
      prepare-image.sh --noroot --noboot \
                       --seed "%{uuidnamespace}" >/dev/null

    - |
      echo '%{libdir}' >/etc/ld.so.conf

    - |
      mkdir -p "%{install-root}/$(find /usr/lib/modules -maxdepth 1 -type d | grep -v -E "*.img" | tail -n 1)"
      mkdir -p "%{install-root}/usr/lib/dracut/dracut.conf.d"
      printf "systemdsystemconfdir=/etc/systemd/system\nsystemdsystemunitdir=/usr/lib/systemd/system\n" | tee "%{install-root}/usr/lib/dracut/dracut.conf.d/30-bootcrew-fix-bootc-module.conf" && \
        printf 'reproducible=yes\nhostonly=no\ncompress=zstd\nadd_dracutmodules+=" ostree bootc "' | tee "%{install-root}/usr/lib/dracut/dracut.conf.d/30-bootcrew-bootc-container-build.conf" && \
      printf "systemdsystemconfdir=/etc/systemd/system\nsystemdsystemunitdir=/usr/lib/systemd/system\n" | tee "/usr/lib/dracut/dracut.conf.d/30-bootcrew-fix-bootc-module.conf" && \
        printf 'reproducible=yes\nhostonly=no\ncompress=zstd\nadd_dracutmodules+=" ostree bootc "' | tee "/usr/lib/dracut/dracut.conf.d/30-bootcrew-bootc-container-build.conf" && \
        dracut --force "%{install-root}/$(find /usr/lib/modules -maxdepth 1 -type d | grep -v -E "*.img" | tail -n 1)/initramfs.img"

    - |
      mv /boot/vmlinuz "%{install-root}/$(find /usr/lib/modules -maxdepth 1 -type d | grep -v -E "*.img" | tail -n 1)/vmlinuz"
      rm -rf /boot
      mkdir /boot
