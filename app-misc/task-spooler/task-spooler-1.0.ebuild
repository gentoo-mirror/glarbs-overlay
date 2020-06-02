# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="a Unix batch system where the tasks spooled run one after the other."
HOMEPAGE="http://vicerveza.homeunix.net/~viric/soft/ts/"
SRC_URI="http://vicerveza.homeunix.net/~viric/soft/ts/ts-${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""
S="${WORKDIR}/ts-${PV}"
DOCS="Changelog OBJECTIVES PORTABILITY PROTOCOL README TRICKS"
HTML_DOCS=( web/index.html web/ts-0.2.1.png web/ts-0.5.4.ebuild
			web/article_linux_com.html )

src_install() {
	einstalldocs

	dobin ts
	doman ts.1
}
