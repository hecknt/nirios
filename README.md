# NiriOS

This repository contains the buildstream to build a FreedesktopSDK/GnomeSDK based OS with Niri installed as its default compositor. It's partially based off of the work done in [projectbluefin/egg](https://github.com/projectbluefin/egg), which was also done partially by me.

## Information

This image includes the following base components:

- Freedesktop SDK (Base OS + Flatpak)
- Bootc (Atomic OS Updater)
- Niri (Compositor)
- Homebrew (Packages on a user level)
- Flatpak
- Distrobox

Some other things that are planned in the near-term

- [ ] xdg-desktop-portal-gnome (This is why gnome-build-meta is included, should be a 1 line addition)
- [ ] DankMaterialShell (Basically turns Niri into a desktop environment)
- [ ] Github CI (I want to build the OS on Github and then upload it to GHCR)
