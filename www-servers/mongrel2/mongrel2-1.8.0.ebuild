# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="A language agnostic web server."
HOMEPAGE="http://mongrel2.org"
SRC_URI="https://github.com/zedshaw/mongrel2/tarball/v${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="procer"
RESTRICT=""

DEPEND="net-libs/zeromq
	>=dev-db/sqlite-3.0"
RDEPEND="${DEPEND}"

src_unpack() {
	cp ${DISTDIR}/${A} ${T}/${P}.tar.gz || die
	cd ${T}
	tar zvxf ${P}.tar.gz
	mv *mongrel2*/ ${WORKDIR}/${P} || die
}

src_compile() {
	emake -j1 || die
	if use procer ; then
		einfo "Compiling procer..."
		emake -j1 -C ${S}/tools/procer || die
	fi
}

src_install() {
	emake DESTDIR="${D}" -j1 install || die
	if use procer ; then
		einfo "Installing procer..."
		emake DESTDIR="${D}" -C ${S}/tools/procer install || die
	fi
}
