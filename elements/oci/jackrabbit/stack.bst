kind: stack

depends:
  - stacks/jackrabbit.bst
  - gamerslop/linux-ogc.bst
  - gamerslop/initramfs.bst

public:
  bst:
    integration-commands:
      - mkdir /var/tmp
      # Required for bootc to create the image
      - rm -rfv /boot
      - mkdir /boot
      - mkdir /sysroot
      - mkdir /sysroot/ostree
      - ln -s sysroot/ostree ostree

      - rm --verbose --recursive --force /root /home /opt /mnt /var

      # These also get created by 10-bootc.conf tmpfiles
      # but we need them to exist for the OCI image to
      # be usable as a container as well
      - mkdir -p /var/home
      - mkdir -p /var/roothome
      - mkdir -p /var/opt
      - mkdir -p /var/mnt
      - mkdir -p /var/srv

      - ln -s var/home /home
      - ln -s var/roothome /root
      - ln -s var/opt /opt
      - ln -s var/mnt /mnt
      - ln -s var/srv /srv

      - touch /etc/machine-id

      - echo 'import "/usr/share/zirconium/just/67-gamerslop.just"' >> /usr/share/zirconium/just/00-start.just
