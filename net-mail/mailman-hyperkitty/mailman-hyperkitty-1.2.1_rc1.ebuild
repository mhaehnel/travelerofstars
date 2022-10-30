# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9,10} )

inherit distutils-r1

DESCRIPTION="A web interface to access GNU Mailman v3 archives"
HOMEPAGE="https://www.list.org"
SRC_URI="https://gitlab.com/mailman/mailman-hyperkitty/-/archive/f23d298ba1dda94b937660b620a51d4175ceb626/mailman-hyperkitty-f23d298ba1dda94b937660b620a51d4175ceb626.tar.gz"
S="${WORKDIR}/mailman-hyperkitty-f23d298ba1dda94b937660b620a51d4175ceb626"


LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/requests[${PYTHON_USEDEP}]
	net-mail/django-mailman3[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]"

DOCS=( README.rst )
#S="${WORKDIR}/mailman_hyperkitty-${PV}"
