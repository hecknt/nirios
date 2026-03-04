kind: stack

# GnomeOS's firewalld is missing some dependencies, for some reason. python3-dbus is a HARD requirement for runtime, and
# iana-config is required for it to not freak out.
depends:
  - gnome-build-meta.bst:gnomeos-deps/firewalld.bst
  - freedesktop-sdk.bst:components/python3-dbus.bst
  - freedesktop-sdk.bst:components/iana-config.bst
