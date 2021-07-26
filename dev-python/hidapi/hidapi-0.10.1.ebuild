# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )
inherit distutils-r1

DESCRIPTION="A Cython interface to the hidapi"
HOMEPAGE="https://github.com/trezor/cython-hidapi"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="|| ( GPL-3 BSD cython-hidapi )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+system-hidapi +libusb test"
RESTRICT="!test? ( test )"

DEPEND="system-hidapi? ( dev-libs/hidapi )"
BDEPEND="${BDEPEND} dev-python/cython[${PYTHON_USEDEP}]"

python_test() {
        "${EPYTHON}" tests.py -v || die
}

python_configure_all() {
        mydistutilsargs=(
                        $(use system-hidapi && echo '--with-system-hidapi' )
                        $(use libusb || echo '--without-libusb' )
                        )
}
