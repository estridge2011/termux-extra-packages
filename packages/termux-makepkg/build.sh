TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

TERMUX_PKG_HOMEPAGE=https://github.com/xeffyr/termux-makepkg
TERMUX_PKG_DESCRIPTION="Package builder for Termux"
TERMUX_PKG_VERSION=2.2
TERMUX_PKG_SHA256=59bd765598f06b9146efd5453f9c9a4c0f264210cbd9a8f1bce54582d29fb46b
TERMUX_PKG_BUILD_IN_SRC=yes
TERMUX_PKG_SKIP_SRC_EXTRACT=yes
TERMUX_PKG_PLATFORM_INDEPENDENT=yes

## This is actually not only dependencies but a basic set
## of build tools.
TERMUX_PKG_DEPENDS="autoconf, automake, bzip2, coreutils, clang, curl, diffutils, file, findutils, gawk, grep, gzip, libtool, lzip, lzop, m4, make, patch, perl, pkg-config, sed, tar, termux-elf-cleaner, unzip, util-linux, xz-utils"
TERMUX_SKIP_DEPCHECK=yes

termux_step_make_install() {
    termux_download \
        "${TERMUX_PKG_HOMEPAGE}/releases/download/v${TERMUX_PKG_VERSION}-release/termux-makepkg-v${TERMUX_PKG_VERSION}.sh" \
        termux-makepkg \
        "${TERMUX_PKG_SHA256}"

    install -Dm700 termux-makepkg ${TERMUX_PREFIX}/bin/termux-makepkg
    ln -sfr ${TERMUX_PREFIX}/bin/termux-makepkg ${TERMUX_PREFIX}/bin/makepkg
}
