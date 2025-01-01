# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..13} )

PYPI_PN=${PN/-/.}
PYPI_NO_NORMALIZE=1

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://git.launchpad.net/lazr.config/"
EGIT_COMMIT="3c659114e8e947fbd46954336f5577351d786de9"

DESCRIPTION="Create configuration schemas, and process and validate configurations"
HOMEPAGE="https://code.launchpad.net/lazr.config"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/lazr-delegates[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

src_prepare() {
	# strip rdep specific to namespaces
	sed -i -e "/'setuptools'/d" setup.py || die
	distutils-r1_src_prepare
}

python_compile() {
	distutils-r1_python_compile
	find "${BUILD_DIR}" -name '*.pth' -delete || die
}

python_test() {
	cd "${BUILD_DIR}/install$(python_get_sitedir)" || die
	distutils_write_namespace lazr
	epytest
}
