TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"

TERMUX_PKG_HOMEPAGE=https://xorg.freedesktop.org/
TERMUX_PKG_DESCRIPTION="X11 XFree86 video mode extension library"
TERMUX_PKG_VERSION=1.1.4
TERMUX_PKG_SRCURL=https://xorg.freedesktop.org/releases/individual/lib/libXxf86vm-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=afee27f93c5f31c0ad582852c0fb36d50e4de7cd585fcf655e278a633d85cd57
TERMUX_PKG_DEPENDS="libxext, xorgproto"
TERMUX_PKG_BUILD_DEPENDS="xorg-util-macros"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-malloc0returnsnull"