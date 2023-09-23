# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

PYPI_PN=${PN/-/.}
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Simplifies writing objects that delegate behavior to another"
HOMEPAGE="https://code.launchpad.net/lazr.delegates"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/zope-interface[${PYTHON_USEDEP}]
	!dev-python/namespace-lazr
"

distutils_enable_tests pytest

