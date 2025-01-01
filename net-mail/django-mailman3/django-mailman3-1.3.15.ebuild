# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..13} )

inherit distutils-r1

DESCRIPTION="Django-based interfaces interacting with Mailman 3"
HOMEPAGE="https://www.list.org"
SRC_URI="https://gitlab.com/mailman/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"
S="${WORKDIR}/${PN}-v${PV}"


LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"


RDEPEND=">=dev-python/django-4.2[${PYTHON_USEDEP}]
    <dev-python/django-5.1[${PYTHON_USEDEP}]
	>=net-mail/mailmanclient-3.3.3[${PYTHON_USEDEP}]
	>=dev-python/django-allauth-0.63[${PYTHON_USEDEP}]
	>=dev-python/django-gravatar2-1.0.6[${PYTHON_USEDEP}]
"

DOCS=( README.rst )

python_test() {
	local -x DJANGO_SETTINGS_MODULE=django_mailman3.tests.settings_test
	local -x PYTHONPATH="${S}"
	django-admin test -v 2 || die
}
