# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic autotools git-r3

DESCRIPTION="A free and open source karaoke game"
HOMEPAGE="https://usdx.eu"
EGIT_REPO_URI="https://github.com/UltraStar-Deluxe/USDX.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
#IUSE="projectm"
IUSE+="webcam"

#	projectm? ( media-libs/libprojectm )
DEPEND="media-libs/sdl2-image
	media-libs/libsdl2[opengl]
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

#S="${WORKDIR}/ultr${PV}"

src_prepare() {
	default
	./autogen.sh || die
}

#$(use_with projectm libprojectM) \
src_compile() {
	econf \
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

