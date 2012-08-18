# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[45] 3.* *-jython *-pypy-*"

inherit distutils eutils

DESCRIPTION="A mongrel2 adapter for WSGI applications"
HOMEPAGE="http://wsgid.com/ https://github.com/daltonmatos/wsgid"
SRC_URI="http://wsgid.com/static/downloads/${P}.tar.bz2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=""

RDEPEND=">=dev-python/argparse-1.2.1
	>=dev-python/lockfile-0.9.1
	>=dev-python/plugnplay-0.3
	>=dev-python/python-daemon-1.6
	>=dev-python/pyzmq-2.1.10
	>=dev-python/simplejson-2.3.0"
DEPEND="${RDEPEND}"

PYTHON_MODNAME="wsgid"
