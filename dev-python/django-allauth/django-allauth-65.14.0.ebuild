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
	>=dev-python/pyjwt-2.0[${PYTHON_USEDEP}]
	<dev-python/pyjwt-3[${PYTHON_USEDEP}]
	>=dev-python/python3-openid-3.0.8[${PYTHON_USEDEP}]
	>=dev-python/oauthlib-3.3.0[${PYTHON_USEDEP}]
	<dev-python/oauthlib-4[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	<dev-python/requests-3[${PYTHON_USEDEP}]
	>=dev-python/asgiref-3.8.1[${PYTHON_USEDEP}]
"
# cryptography via pyjwt[crypto]
RDEPEND+="
	dev-python/cryptography[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
	test? ( ${RDEPEND} )
"

export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}

DOCS=( README.rst AUTHORS ChangeLog.rst )

distutils_enable_tests pytest
distutils_enable_sphinx docs \
	dev-python/sphinx-rtd-theme

pkg_postinst() {
	optfeature "MFA (Multi-factor authentication)" dev-python/qrcode dev-python/fido2
	optfeature "OpenID or Steam" dev-python/python3-openid
	optfeature "SAML authentication" dev-python/python3-saml
}

