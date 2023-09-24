# Copyright 2021 Marcus Haehnel
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1 git-r3

DESCRIPTION="Allows synapse to use LDAP as a password provider."
HOMEPAGE="https://github.com/matrix-org/matrix-synapse-ldap3"
EGIT_REPO_URI="https://github.com/matrix-org/matrix-synapse-ldap3.git"
EGIT_COMMIT="v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 amd64"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	>=dev-python/twisted-15.1.0[${PYTHON_USEDEP}]
	>=dev-python/ldap3-2.8.0[${PYTHON_USEDEP}]
	dev-python/service-identity[${PYTHON_USEDEP}]
"
