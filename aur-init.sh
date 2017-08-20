#!/usr/bin/env bash

get_and_make_pkg() {
    for pkg in cower pacaur; do
        curl "https://aur.archlinux.org/cgit/aur.git/snapshot/${pkg}.tar.gz" | tar -xvzf -
        cd "${pkg}"
        makepkg -scif --noconfirm
        cd -
        rm -rf "${pkg}"
    done
}



main() {
    get_and_make_pkg
}
main
