# Copyright 2021 Marcus Haehnel
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )

inherit distutils-r1 git-r3

DESCRIPTION="Encodes objects and arrays as RFC 7159 JSON."
HOMEPAGE="https://github.com/matrix-org/python-canonicaljson"
EGIT_REPO_URI="https://github.com/matrix-org/python-canonicaljson.git"
EGIT_COMMIT="v${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
        >=dev-python/simplejson-3.14.0[${PYTHON_USEDEP}]
        >=dev-python/frozendict-1.0[${PYTHON_USEDEP}]
"
