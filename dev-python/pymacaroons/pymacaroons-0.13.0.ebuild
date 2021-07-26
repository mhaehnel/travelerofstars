# Copyright 2021 Marcus Haehnel
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8,9} )

inherit distutils-r1 git-r3

DESCRIPTION="Python implementation of Macaroons"
HOMEPAGE="https://github.com/ecordell/pymacaroons"
EGIT_REPO_URI="https://github.com/ecordell/pymacaroons.git"
EGIT_COMMIT="v${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	>=dev-python/six-1.8.0[${PYTHON_USEDEP}]
	>=dev-python/pynacl-1.2.0[${PYTHON_USEDEP}]
	<dev-python/pynacl-2.0.0[${PYTHON_USEDEP}]
"
