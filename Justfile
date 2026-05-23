default:
    @just --choose

image_name := env("BUILD_IMAGE_NAME", "zirconium-hawaii")
image_tag := env("BUILD_IMAGE_TAG", "edge")
base_dir := env("BUILD_BASE_DIR", ".")
filesystem := env("BUILD_FILESYSTEM", "btrfs")
vendor := "Zirconium"
bst_image := env("BST_IMAGE", "registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images/bst2:latest")

bst *ARGS:
    #!/usr/bin/env bash
    set -xeuo pipefail

    mkdir -p "$HOME/.cache/buildstream"
    podman run --rm \
        --privileged \
        --device /dev/fuse \
        -v "{{base_dir}}":/pwd \
        -v "$HOME/.cache/buildstream:/root/.cache/buildstream:rw" \
        -w /pwd \
        "{{bst_image}}" bash -c 'bst --colors {{ARGS}}'

generate-keys $vendor=vendor:
    #!/usr/bin/env bash
    set -xeu
    for f in extra-db extra-kek modules; do
        [ ! -d "{{base_dir}}/files/boot-keys/${f}" ] && mkdir -p "{{base_dir}}/files/boot-keys/${f}"
    done

    for f in PK KEK DB VENDOR SYSEXT linux-module-cert; do
        [ ! -f "{{base_dir}}/files/boot-keys/${f}.key" ] && [ ! -f "{{base_dir}}/files/boot-keys/${f}.crt" ] && \
            openssl req -new -x509 -newkey rsa:2048 -subj "/CN=${vendor} ${f} key/" -keyout "files/boot-keys/${f}.key" -out "files/boot-keys/${f}.crt" -days 3650 -nodes -sha256
    done
    cp files/boot-keys/linux-module-cert.crt files/boot-keys/modules/linux-module-cert.crt

generate-image-version:
    #!/usr/bin/env bash
    set -xeu

    # IMAGE_VERSION=(branch).(date of last commit)
    IMAGE_VERSION=$(git rev-parse --abbrev-ref HEAD).$(git log -1 --format=%cd --date=format:%Y%m%d%H%M)
    COMMIT=$(git rev-parse HEAD)

    cat > include/image-version.yml <<EOF
    image-version: ${IMAGE_VERSION}
    commit: ${COMMIT}
    EOF

build *ARGS:
    #!/usr/bin/env bash
    set -eu

    bst build oci/zirconium/image.bst
    bst artifact checkout --tar - oci/zirconium/image.bst | pkexec podman load

checkout-container $element="oci/zirconium/image.bst" $file="oci.tar":
    #!/usr/bin/env bash
    set -x
    bst artifact checkout --tar ${file} ${element}

build-containerfile $image_name=image_name $image_tag=image_tag:
    sudo podman build --squash-all -t "${image_name}:${image_tag}" .

bootc *ARGS:
    sudo podman run \
        --rm --privileged --pid=host \
        -it \
        -v /var/lib/containers:/var/lib/containers \
        -v /dev:/dev \
        -e RUST_LOG=debug \
        -v "{{base_dir}}:/data" \
        --security-opt label=type:unconfined_t \
        "{{image_name}}:{{image_tag}}" bootc {{ARGS}}

generate-bootable-image $base_dir=base_dir $filesystem=filesystem:
    #!/usr/bin/env bash
    if [ ! -e "${base_dir}/bootable.raw" ] ; then
        fallocate -l 30G "${base_dir}/bootable.raw"
    fi

    just bootc install to-disk --composefs-backend \
        --via-loopback /data/bootable.raw \
        --filesystem "${filesystem}" \
        --wipe \
        --bootloader systemd \
