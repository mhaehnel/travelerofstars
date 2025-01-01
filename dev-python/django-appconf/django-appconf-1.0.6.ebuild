# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..12} )

PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="A helper class for handling configuration defaults of packaged apps gracefully"
HOMEPAGE="https://django-appconf.readthedocs.io"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=dev-python/django-3.2[${PYTHON_USEDEP}]"
