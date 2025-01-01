# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=pdm-backend

inherit distutils-r1

DESCRIPTION="Mailman -- the GNU mailing list manager"
HOMEPAGE="https://www.list.org"
SRC_URI="https://gitlab.com/mailman/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"
S="${WORKDIR}/${PN}-v${PV}"

LICENSE="GPL-3+"
SLOT="3"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=dev-python/aiosmtpd-1.4.3[${PYTHON_USEDEP}]
	>=dev-python/alembic-1.6.2[${PYTHON_USEDEP}]
	dev-python/atpublic[${PYTHON_USEDEP}]
	>=dev-python/authentication-headers-0.16[${PYTHON_USEDEP}]
	>=dev-python/authres-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/click-8.0[${PYTHON_USEDEP}]
	>=dev-python/dnspython-1.14.0[${PYTHON_USEDEP}]
	>=dev-python/falcon-3.1.3[${PYTHON_USEDEP}]
	>=dev-python/flufl-bounce-4.0[${PYTHON_USEDEP}]
	>=dev-python/flufl-i18n-3.2[${PYTHON_USEDEP}]
	>=dev-python/flufl-lock-5.1[${PYTHON_USEDEP}]
	www-servers/gunicorn[${PYTHON_USEDEP}]
	dev-python/lazr-config[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.0[${PYTHON_USEDEP}]
	dev-python/passlib[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-1.4[${PYTHON_USEDEP}]
	dev-python/zope-component[${PYTHON_USEDEP}]
	dev-python/zope-configuration[${PYTHON_USEDEP}]
	dev-python/zope-event[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-5.0[${PYTHON_USEDEP}]
"
BDEPEND="
	test? (
		dev-python/flufl-testing[${PYTHON_USEDEP}]
		virtual/python-greenlet[${PYTHON_USEDEP}]
	)
"
python_test() {
	distutils_install_for_testing --via-venv
	"${EPYTHON}" -m nose2 -vv || die "Tests failed with ${EPYTHON}"
}
