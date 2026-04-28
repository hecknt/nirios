kind: stack

depends:
  - stacks/zirconium.bst
  - core/linux-fedora.bst
  - core/initramfs.bst

public:
  bst:
    integration-commands:
      - mkdir /var/tmp
      - rm -rfv /boot /run
      - mkdir /boot
      - mkdir /run
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
      - ln -s ../../var/usrlocal usr/local

      - touch /etc/machine-id
