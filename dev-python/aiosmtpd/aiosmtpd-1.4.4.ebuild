# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{8..11} )
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="asyncio based SMTP server"
HOMEPAGE="https://aiosmtpd.readthedocs.io/en/latest/"
SRC_URI="https://github.com/aio-libs/aiosmtpd/archive/${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/atpublic[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		>=dev-python/pytest-6[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
	)"

# TODO: run doctests using sphinx?
distutils_enable_tests pytest
