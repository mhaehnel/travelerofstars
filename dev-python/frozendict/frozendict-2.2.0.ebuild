# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9,10} )
inherit distutils-r1

DESCRIPTION="A simple immutable mapping for python"
HOMEPAGE="https://github.com/Marco-Sulla/python-frozendict"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64 ~arm"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
