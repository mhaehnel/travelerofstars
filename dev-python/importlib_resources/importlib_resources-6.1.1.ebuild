# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# This is a backport of Python 3.9's importlib.resources
# also enable for Python 3.9 for backwards compatibility (mailman)

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3_{8,9,10,11} )

PYPI_PN=${PN/-/.}
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi


DESCRIPTION="Read resources from Python packages"
HOMEPAGE="https://github.com/python/importlib_resources"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~x64-macos"

RDEPEND="
	$(python_gen_cond_dep '
		>=dev-python/zipp-3.1.0[${PYTHON_USEDEP}]
	' pypy3)
"
BDEPEND=""

distutils_enable_tests unittest
distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
