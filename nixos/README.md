# NixPi

## NixOs Running on a Raspberry Pi 4B

- This directory contains examples of files that have been added and/or modified in order to get NixOs running on a Raspberry Pi 4B.
- This is an ongoing project.

## WiFi
- to get wifi working
  - it can be important to setup wpa_supplicant following instructions on initial boot
  - establish `etc/wpa_supplicant/wpa_supplicant.conf`
  - to check and debug wpa_supplicant
```
wpa_supplicant -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf -d
```
  - assuming everything goes fine, start wpa_supplicant in the background
```
wpa_supplicant -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf -B
```
  - see https://linux.die.net/man/8/wpa_supplicant

## LunarVim
- we could not get the Nix package `lunarvim` to install (undefined variable error on rebuild)
- however, we were able to install successfully by
  1. making sure all dependencies were installed in our configuration.nix (see example in ./etc/nixos)
  2. direct install via curl command listed at https://www.lunarvim.org/docs/installation
```
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
```
    a. do not install Node and Python packages (already handled by Nix...mostly)
    b. install Rust packages
      - of course, Rust works like a charm
      - these packages may take a minute to install
  3. the binary should end up as `~/.local/bin/lvim`
