# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..13} )
DISTUTILS_USE_PEP517=pdm-backend

inherit distutils-r1


DESCRIPTION="A web interface to access GNU Mailman v3 archives"
HOMEPAGE="https://www.list.org"
SRC_URI="https://gitlab.com/mailman/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="<dev-python/django-5.1[${PYTHON_USEDEP}]
    >=dev-python/django-4.2[${PYTHON_USEDEP}]
	>=net-mail/django-mailman3-1.3.13[${PYTHON_USEDEP}]
	>=dev-python/django-gravatar2-1.0.6[${PYTHON_USEDEP}]
    >=dev-python/django-q2-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/djangorestframework-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/robot-detection-0.3[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/django-compressor-1.3[${PYTHON_USEDEP}]
	>=net-mail/mailmanclient-3.3.3[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.0[${PYTHON_USEDEP}]
	>=dev-python/mistune-3.0[${PYTHON_USEDEP}]
	>=dev-python/networkx-2.0[${PYTHON_USEDEP}]
	dev-python/django-haystack[${PYTHON_USEDEP}]
	>=dev-python/django-extensions-1.3.7[${PYTHON_USEDEP}]
	>=dev-python/flufl-lock-4.0[${PYTHON_USEDEP}]"

BDEPEND="dev-python/isort[${PYTHON_USEDEP}]
	test? (
		dev-python/Woosh[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/beautifulsoup4[${PYTHON_USEDEP}]
		dev-python/django-debug-toolbar[${PYTHON_USEDEP}]
	)"

DOCS=( README.rst )
