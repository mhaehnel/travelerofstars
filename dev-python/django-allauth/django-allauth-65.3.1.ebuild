# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..13} )

inherit distutils-r1 pypi

DESCRIPTION="Django 3rd party (social) account authentication"
HOMEPAGE="
	https://www.intenct.nl/projects/django-allauth/
	https://github.com/pennersr/django-allauth/
	https://pypi.org/project/django-allauth/
"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/django-4.2.16[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-1.7[${PYTHON_USEDEP}]
	>=dev-python/python3-openid-3.0.8[${PYTHON_USEDEP}]
	>=dev-python/requests-oauthlib-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0[${PYTHON_USEDEP}]
    >=dev-python/asgiref-3.8.1[${PYTHON_USEDEP}]
"
# cryptography via pyjwt[crypto]
RDEPEND+="
	dev-python/cryptography[${PYTHON_USEDEP}]
"
BDEPEND="
	test? ( ${RDEPEND} )
"

DOCS=( README.rst AUTHORS ChangeLog.rst )

src_test() {
	# cern provider tests require Internet
	rm allauth/socialaccount/providers/cern/tests.py || die
	distutils-r1_src_test
}

python_test() {
	local -x DJANGO_SETTINGS_MODULE=test_settings
	local -x PYTHONPATH=.
	django-admin test -v 2 || die "Tests failed with ${EPYTHON}"
}

