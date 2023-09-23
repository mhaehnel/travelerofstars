# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Django 3rd party (social) account authentication"
HOMEPAGE="
	https://www.github.com/gintas/django-picklefield
	https://pypi.org/project/django-picklefield/
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
"

