# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="A comfortable way of running batch jobs"
HOMEPAGE="https://vicerveza.homeunix.net/~viric/soft/ts/"
SRC_URI="https://vicerveza.homeunix.net/~viric/soft/ts/ts-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"
DOCS="Changelog OBJECTIVES PORTABILITY PROTOCOL README TRICKS"
HTML_DOCS=( web/index.html web/ts-0.2.1.png web/ts-0.5.4.ebuild web/article_linux_com.html )

# Avoid collision of /usr/bin/ts
DEPEND="!sys-apps/moreutils
	!app-misc/timestamp"

S="${WORKDIR}/ts-${PV}"

src_prepare() {
	default

	sed -i \
		-e 's|CFLAGS=|CFLAGS+=|' \
		-e 's|-g -O0||' \
		-e 's|$(LDFLAGS)|$(CFLAGS) &|' \
		Makefile || die "sed failed"
}

src_compile() {
	emake CC=$(tc-getCC)
}

src_test() {
	sh testbench.sh || die "tests failed"
}

src_install() {
	emake PREFIX="${D}/usr" install

	# When the use flag doc is enabled.
	if use doc; then
		einstalldocs
	fi
}
