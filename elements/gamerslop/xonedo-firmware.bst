kind: manual

# as listed in xonedo/install/firmware.sh
# the device ids (used as file names) are taken from github:terrapkg/packages:anda/system/xonedo/stable/kmod-common/xonedo.spec
sources:
- kind: remote
  url: winupdate-catalog:d/msdownload/update/driver/drvs/2017/03/2ea9591b-f751-442c-80ce-8f4692cdc67b_6b555a3a288153cf04aec6e03cba360afe2fce34.cab
  filename: 02e6.cab
  ref: d89a72e8dc10b7c4f16d5c887fe7f54c34c22005ac1f360704d5d9462258ef32
- kind: remote
  url: winupdate-catalog:c/msdownload/update/driver/drvs/2017/07/1cd6a87c-623f-4407-a52d-c31be49e925c_e19f60808bdcbfbd3c3df6be3e71ffc52e43261e.cab
  filename: 02fe.cab
  ref: 65736a84ff4036645b8f8ec602bed91ab6353019c9cb3233decab9feec0f6f04
- kind: remote
  url: winupdate-catalog:c/msdownload/update/driver/drvs/2017/06/1dbd7cb4-53bc-4857-a5b0-5955c8acaf71_9081931e7d664429a93ffda0db41b7545b7ac257.cab
  filename: 02f9.cab
  ref: 90dd91fb67460d387407fd8109c0e7d0f18f4b659be0f62db858a1849ead2ee0
- kind: remote
  url: winupdate-catalog:d/msdownload/update/driver/drvs/2017/08/aeff215c-3bc4-4d36-a3ea-e14bfa8fa9d2_e58550c4f74a27e51e5cb6868b10ff633fa77164.cab
  filename: 091e.cab
  ref: 5a8fbad9521e58cc697a8734720ca497673098022d61d91a88be433002ccd8f2
- kind: local
  path: files/xonedo-firmware/ms-terms-of-use

build-depends:
- freedesktop-sdk.bst:components/bzip2.bst
- freedesktop-sdk.bst:components/libarchive.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  license-files-extra: ms-terms-of-use
  strip-binaries: ''

config:
  build-commands:
  - |
    for f in *.cab; do
      # bash expression removes anything past "." in the filename
      mkdir "${f%%.*}"
      bsdtar -xf $f -C "${f%%.*}"
      rm "$f"
    done

  install-commands:
  - |
    for f in */*.bin; do
      install -Dm0644 "$f" "/buildstream-install/usr/lib/firmware/xone_dongle_$(dirname $f).bin"
    done
  - |
    %{install-extra}
