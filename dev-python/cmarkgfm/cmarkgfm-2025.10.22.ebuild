# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..14} )

DISTUTILS_USE_PEP517=setuptools
DISTUTILS_EXT=1
inherit distutils-r1 pypi

DESCRIPTION="Minimalist Python bindings to GitHub's fork of cmark."
HOMEPAGE="https://github.com/theacodes/cmarkgfm"
#SRC_URI="mirror://pypi/c/cmarkgfm/cmarkgfm-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="app-text/cmark
		>=dev-python/cffi-2.0.0
"

DOCS=( README.rst )
