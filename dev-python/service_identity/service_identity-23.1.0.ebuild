# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{8..11} )

PYPI_PN=${PN/-/.}
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Service identity verification for pyOpenSSL & cryptography."
HOMEPAGE="https://pypi.org/project/service-identity/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

#RDEPEND=""

distutils_enable_tests pytest

