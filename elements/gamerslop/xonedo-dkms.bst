kind: script

build-depends:
  - core/dkms.bst
  - freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
  - core/linux-ogc.bst
  - gamerslop/xonedo.bst
  - stacks/zirconium.bst

config:
  commands:
  - |
    # install modprobe file and license file from xonedo.bst
    install -Dm0644 "%{indep-libdir}/modprobe.d/xonedo.conf" "%{install-root}%{indep-libdir}/modprobe.d/xonedo.conf"
    install -dm0755 "%{install-root}%{licensedir}/zirconium/xonedo"
    cp -aT "%{licensedir}/zirconium/xonedo" "%{install-root}%{licensedir}/zirconium/xonedo"

  - |
    kernel_modules_path=$(find "%{indep-libdir}/modules" -maxdepth 1 -type d | tail -n 1)
    kernel_version=$(basename ${kernel_modules_path})

    xonedo_module="$(basename $(find "%{prefix}/src" -maxdepth 1 -type d | grep -i xonedo))"
    xonedo_name="${xonedo_module%%-*}"
    xonedo_version="${xonedo_module#*$"-"}"

    dkms_arguments="--dkmstree /tmp/dkms --kernelsourcedir ${kernel_modules_path}/build --installtree %{install-root}%{indep-libdir}/modules -m ${xonedo_name} -v ${xonedo_version} -k ${kernel_version}"

    mkdir -p /tmp/dkms
    mkdir -p "%{install-root}${kernel_modules_path}"

    echo kernel_modules_path=$kernel_modules_path
    echo kernel_version=$kernel_version

    echo xonedo_module=$xonedo_module
    echo xonedo_version=$xonedo_version

    dkms ${dkms_arguments} add
    dkms ${dkms_arguments} build
    dkms ${dkms_arguments} install
