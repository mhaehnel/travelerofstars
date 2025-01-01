# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..13} )

DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="ASGI specs, helper code, and adapters"
HOMEPAGE="https://github.com/django/asgiref"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/typing-extensions-4[${PYTHON_USEDEP}]
"

DOCS=( README.rst )
