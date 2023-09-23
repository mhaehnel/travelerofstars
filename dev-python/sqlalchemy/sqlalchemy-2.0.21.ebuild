# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

PYPI_PN="SQLAlchemy"
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="The Python SQL Toolkit and Object Relation Mapper"
HOMEPAGE="https://www.sqlalchemy.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/flake8[${PYTHON_USEDEP}]
	dev-python/pygments[${PYTHON_USEDEP}]
	!dev-python/namespace-lazr
"

distutils_enable_tests pytest

