TERMUX_PKG_HOMEPAGE=https://gnunet.org
TERMUX_PKG_DESCRIPTION="A framework for secure peer-to-peer networking"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_SRCURL=https://git.gnunet.org/git/gnunet.git
TERMUX_PKG_VERSION=0.15.3
TERMUX_PKG_DEPENDS="gnurl, libgcrypt, libgmp, libidn, libjansson, libltdl, libmicrohttpd, libsqlite, libunistring, libsodium"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_have_decl_struct_in6_ifreq=yes"

termux_step_pre_configure() {
	CPPFLAGS+=" -D_LINUX_IN6_H"
	./bootstrap
}
