# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..13} )

inherit distutils-r1

DESCRIPTION="A library wrapping email authentication header verification and generation"
HOMEPAGE="
	https://pypi.org/project/authheaders/
	https://github.com/ValiMail/authentication-headers/
"
SRC_URI="https://github.com/ValiMail/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~x86"

RDEPEND="
	>=dev-python/authres-1.2.0[${PYTHON_USEDEP}]
	>=dev-python/dkimpy-0.7.1[${PYTHON_USEDEP}]
	dev-python/dnspython[${PYTHON_USEDEP}]
	>=dev-python/publicsuffix2-2.20191221-r2[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
