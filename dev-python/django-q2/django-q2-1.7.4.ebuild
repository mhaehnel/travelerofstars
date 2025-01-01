# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..13} )

DISTUTILS_USE_PEP517=poetry
inherit distutils-r1 pypi

DESCRIPTION="A multiprocessing distributed task queue for Django"
HOMEPAGE="https://django-q2.readthedocs.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/poetry-core[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/django-4.2[${PYTHON_USEDEP}]
    <dev-python/django-6[${PYTHON_USEDEP}]
	>=dev-python/django-picklefield-3.1[${PYTHON_USEDEP}]
	>=dev-python/blessed-1.19.1[${PYTHON_USEDEP}]
"

DOCS=( README.rst CHANGELOG.md )

PATCHES=( "${FILESDIR}/changelog-install.patch" )
