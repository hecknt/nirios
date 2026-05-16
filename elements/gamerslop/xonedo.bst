kind: manual

sources:
- kind: git_repo
  url: github:OpenGamingCollective/xonedo.git
  track: master
  ref: 982cbcb019ae4d2bee5ae69385223409ee555c88

build-depends:
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/stripper.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  install-commands:
  - |
    commitdate=$(git log -1 --format=%cd --date=format:%Y%m%d)
    commithash=$(git rev-parse --short HEAD)

    if git describe --tag &>/dev/null; then
      version=$(git describe --tag --abbrev=0)
      version=${version##v}
    else
      version="git.${commitdate}.${commithash}"
    fi
      
    sed -i \
      -e "s|#VERSION#|${version}|g" \
      -e 's|kernel/drivers/input/joystick|extra|g' \
      dkms.conf

    mkdir -p "%{install-root}%{prefix}/src/xonedo-${version}"
    cp -r auth bus driver transport Kbuild dkms.conf "%{install-root}%{prefix}/src/xonedo-${version}/"

    install -Dm0644 install/modprobe.conf "%{install-root}%{indep-libdir}/modprobe.d/xonedo.conf"
  - |
    %{install-extra}
