kind: manual

sources:
- kind: git_repo
  url: kernel:utils/i2c-tools/i2c-tools.git
  track: v*
  ref: v4.4-0-gc20cd0b4be78e7b84104452b7fc9c570f00f92bf
- kind: local
  path: files/i2c-tools

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/make.bst
- freedesktop-sdk.bst:components/gcc.bst
- freedesktop-sdk.bst:components/stripper.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:components/python3-build.bst
- freedesktop-sdk.bst:components/python3-installer.bst
- freedesktop-sdk.bst:components/python3-wheel.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/perl.bst

config:
  build-commands:
  - |
    make EXTRA="eeprog"
    cd py-smbus
    python -m build -wn

  install-commands:
  - |
    install -Dm0644 "i2c-tools.sysusers" "%{install-root}%{indep-libdir}/sysusers.d/i2c-tools.conf"
    install -Dm0644 "45-i2c-tools.rules" -t "%{install-root}%{indep-libdir}/udev/rules.d"
    install -Dm0644 "i2c-tools.conf" -t "%{install-root}%{indep-libdir}/modules-load.d"
    make EXTRA="eeprog" PREFIX="%{install-root}%{prefix}" sbindir="%{install-root}%{bindir}" install

    pushd py-smbus
    python -m installer --destdir="%{install-root}" dist/*.whl
    popd
  - |
    %{install-extra}
