# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A fully-featured tiling window manager-based system for any Gentoo based system."
HOMEPAGE="https://wiki.gentoo.org/wiki/User:Et-8/GLARBS"

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://gitlab.com/et-8/${PN}.git"
	KEYWORDS=""
else
	SRC_URI="https://gitlab.com/et-8/${PN}/-/archive/${PV}/${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE="doc nocd xinerama"
DOCS="README"

DEPEND="x11-wm/glarbs
"
RDEPEND="${DEPEND}
		!x11-wm/dwm
"
BDEPEND=""

src_install() {

	insinto /etc/skel/glarbs/.config/src/${PN}
	doins -r *

	# With the use flag doc enabled.
	if use doc; then

		einstalldocs

	fi

	# With the use flag nocd enabled.
	if 	use nocd; then

		insinto $HOME/.config/src
		doins -r *

	fi

}

pkg_postinst() {
		ewarn "GLARBS will never overwrite files in your home directory,"
		ewarn "unless you have made the use flag nocd enabled."
		ewarn "Activating the use flag nocd should only be done on a new  system,"
		ewarn "otherwise all your personal changes to the dotfiles and systemfiles vill be overwritten!"
		elog "To fully uppgrade GLARBS, without the use flag nocd enabled, do this one steps:"
		optfeature "Use a diff and merge tool, like Meld to keep your own changes in those files." dev-util/meld
		elog "1. Copy the folder dwm in /etc/skel/glarbs/ to ~/.config/src/"
}
