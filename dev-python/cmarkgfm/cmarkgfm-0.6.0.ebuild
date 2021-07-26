# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )

inherit distutils-r1

DESCRIPTION="A web interface to access GNU Mailman v3 archives"
HOMEPAGE="https://www.list.org"
SRC_URI="mirror://pypi/c/cmarkgfm/cmarkgfm-${PV}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="app-text/cmark
		>=dev-python/cffi-1.0.0
"

DOCS=( README.rst )
