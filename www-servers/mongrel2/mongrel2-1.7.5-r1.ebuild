# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="A language agnostic web server."
HOMEPAGE="http://mongrel2.org"
SRC_URI="http://mongrel2.org/static/downloads/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="procer"
RESTRICT=""

DEPEND="net-libs/zeromq
        >=dev-db/sqlite-3.0"
RDEPEND="${DEPEND}"

src_compile() {
	emake -j1 || die
	if use procer ; then
		einfo "Compiling procer..."
		emake -C ${S}/examples/procer || die
	fi
}

src_install() {
	emake DESTDIR="${D}" -j1 install || die
	if use procer ; then
		einfo "Installing procer..."
		emake DESTDIR="${D}" -C ${S}/examples/procer install || die
	fi
}
