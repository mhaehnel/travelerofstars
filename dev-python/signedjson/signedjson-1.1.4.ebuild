# Copyright 2021 Marcus Haehnel
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1 git-r3

DESCRIPTION="Signs JSON objects with ED25519 signatures."
HOMEPAGE="https://github.com/matrix-org/python-signedjson"
EGIT_REPO_URI="https://github.com/matrix-org/python-signedjson.git"
EGIT_COMMIT="v${PV}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
        >=dev-python/canonicaljson-1.0.0[${PYTHON_USEDEP}]
        >=dev-python/unpaddedbase64-1.0.1[${PYTHON_USEDEP}]
        >=dev-python/pynacl-0.3.0[${PYTHON_USEDEP}]
"
