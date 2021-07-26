# Copyright 2021 Marcus Haehnel
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1 git-r3
DISTUTILS_USE_SETUPTOOLS=pyproject.toml

DESCRIPTION="Encode and decode Base64 without "=" padding."
HOMEPAGE="https://github.com/matrix-org/python-unpaddedbase64"
EGIT_REPO_URI="https://github.com/matrix-org/python-unpaddedbase64.git"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
