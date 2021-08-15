# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils flag-o-matic autotools

DESCRIPTION="A free and open source karaoke game"
HOMEPAGE="https://usdx.eu"
SRC_URI="https://github.com/UltraStar-Deluxe/USDX/archive/refs/tags/v${PV}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+projectm webcam"

DEPEND="media-libs/sdl2-image
	media-libs/libsdl2[opengl]
	projectm? ( media-libs/libprojectm )
	webcam? ( media-libs/opencv )
	media-libs/portaudio
	media-fonts/dejavu
	media-fonts/freefont
	media-video/ffmpeg
	dev-db/sqlite
	dev-lang/lua
	virtual/glu"
RDEPEND="${DEPEND}"
BDEPEND="dev-util/pkgconf
	>=dev-lang/fpc-3.0.0"

S="${WORKDIR}/USDX-${PV}"

PATCHES=( "${FILESDIR}"/"${PV}"-ffmpeg-version.patch )

src_prepare() {
	default
	./autogen.sh || die
}

src_compile() {
	econf \
		$(use_with projectm libprojectM) \
		$(use_with webcam opencv-cxx-api) \
		|| die "Configure failed!"
	emake \
	LDFLAGS="" \
	|| die "emake failed"
}

src_install() {
	default

	dodoc README*
}

