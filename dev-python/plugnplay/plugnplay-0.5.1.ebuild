# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[45] *-jython *-pypy-*"

inherit distutils eutils

DESCRIPTION="A generic plug-in system for Python"
HOMEPAGE="http://pypi.python.org/pypi/plugnplay/ https://github.com/daltonmatos/plugnplay"
SRC_URI="http://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT=""

RDEPEND=""
DEPEND="${RDEPEND}"

PYTHON_MODNAME="plugnplay"
