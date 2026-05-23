# files/boot-keys/modules is expected to be empty, unless testing
# secure boot.
#
# This element should be overriden in the junction by downstream
# projects.
kind: import

config:
  target: /keys

sources:
- kind: local
  path: files/boot-keys/modules
