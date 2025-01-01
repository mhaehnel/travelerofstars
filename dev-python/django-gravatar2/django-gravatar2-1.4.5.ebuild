# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..13} )

#PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Essential Gravatar support for Django"
HOMEPAGE="https://github.com/twaddington/django-gravatar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/django[${PYTHON_USEDEP}]"

DOCS="README.rst"

