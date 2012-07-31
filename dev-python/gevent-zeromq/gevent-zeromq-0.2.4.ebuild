# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[45] 3.* *-jython *-pypy-*"

inherit distutils eutils

DESCRIPTION="Gevent compatibility layer for pyzmq."
HOMEPAGE="http://pypi.python.org/pypi/gevent_zeromq/ http://github.com/traviscline/gevent-zeromq"
SRC_URI="http://pypi.python.org/packages/source/g/gevent_zeromq/gevent_zeromq-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=""

RDEPEND=">=dev-python/gevent-0.13.7
	>=dev-python/greenlet-0.4.0
	>=dev-python/pyzmq-2.2.0"
DEPEND="${RDEPEND}"

PYTHON_MODNAME="gevent_zeromq"

src_unpack() {
	unpack ${A}
	cd ${WORKDIR}
	mv gevent_zeromq-${PV} gevent-zeromq-${PV} || die
}
