TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="Tab Window Manager for the X Window System"
TERMUX_PKG_VERSION=1.0.10
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/app/twm-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=6449eadca16ce0f0d900605b0cc020b95f40619261b7beccfb46bcc1836445d7
TERMUX_PKG_DEPENDS="libxmu"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"