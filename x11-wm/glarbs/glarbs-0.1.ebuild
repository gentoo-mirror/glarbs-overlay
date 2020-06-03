# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GLARBS is an efficient shell script that will install a fully-featured tiling window manager-based system on any Gentoo Linux-based system,
without any of the routine of manual post-install processes and configuration."
HOMEPAGE="https://wiki.gentoo.org/wiki/User:Et-8/GLARBS"
SRC_URI="https://gitlab.com/et-8/${PN}/-/archive/0.1/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="xinerama doc"

S="${WORKDIR}/${PN}-${P}"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
