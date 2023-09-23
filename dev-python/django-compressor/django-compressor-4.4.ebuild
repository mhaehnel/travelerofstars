# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1 pypi

DESCRIPTION="Compresses linked and inline JavaScript or CSS into single cached files"
HOMEPAGE="https://django-compressor.readthedocs.io/"
SRC_URI="$(pypi_sdist_url "${PN^}" "${PV}")"
S="${WORKDIR}/${P/-/_}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
# missing test deps, package does not handle them gracefully, also seem
# broken or whatever
RESTRICT="test"

RDEPEND=">=dev-python/django-appconf-1.0.3[${PYTHON_USEDEP}]
	>=dev-python/rcssmin-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/rjsmin-1.2.1[${PYTHON_USEDEP}]"

python_test() {
	django-admin.py test --settings=compressor.test_settings compressor ||
		die "Tests failed with ${EPYTHON}"
}
