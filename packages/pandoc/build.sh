TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

##
##  NOTE: Since we don't have a tools for building pandoc for Android,
##        the x86_64 statically compiled binary will be used (over qemu-user).
##

TERMUX_PKG_HOMEPAGE=https://pandoc.org/
TERMUX_PKG_DESCRIPTION="Universal document converter"
TERMUX_PKG_VERSION=2.2.3.2
TERMUX_PKG_SRCURL=https://github.com/jgm/pandoc/releases/download/${TERMUX_PKG_VERSION}/pandoc-${TERMUX_PKG_VERSION}-linux.tar.gz
TERMUX_PKG_SHA256=4cc283484f8677fa1eff7206f79f06b31da97b20f2ca5b29a719692f545d8798
TERMUX_PKG_DEPENDS="dash, qemu-user-x86_64"
TERMUX_PKG_PLATFORM_INDEPENDENT=true

termux_step_make() {
    return
}

termux_step_make_install() {
    install -Dm755 "${TERMUX_PKG_BUILDER_DIR}/pandoc-wrapper" "${TERMUX_PREFIX}/bin/pandoc"
    install -Dm755 "${TERMUX_PKG_BUILDER_DIR}/pandoc-citeproc-wrapper" "${TERMUX_PREFIX}/bin/pandoc-citeproc"

    install -Dm755 "${TERMUX_PKG_SRCDIR}/bin/pandoc" "${TERMUX_PREFIX}/libexec/x86_64-bin/pandoc"
    install -Dm755 "${TERMUX_PKG_SRCDIR}/bin/pandoc-citeproc" "${TERMUX_PREFIX}/libexec/x86_64-bin/pandoc-citeproc"

    install -Dm644 "${TERMUX_PKG_SRCDIR}/share/man/man1/pandoc.1.gz" "${TERMUX_PREFIX}/share/man/man1/pandoc.1.gz"
    install -Dm644 "${TERMUX_PKG_SRCDIR}/share/man/man1/pandoc-citeproc.1.gz" "${TERMUX_PREFIX}/share/man/man1/pandoc-citeproc.1.gz"
}
