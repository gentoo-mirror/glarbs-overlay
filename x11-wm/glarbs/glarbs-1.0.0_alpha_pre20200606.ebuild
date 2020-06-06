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

DEPEND="x11-wm/glarbs-dwm
		x11-misc/glarbs-dmenu
"
RDEPEND="${DEPEND}
		!app-shells/zsh-syntax-highlightning
"
BDEPEND=""

pkg_pretend() {
	ewarn "GLARBS is in the early stages and will not work without further modification!"
	elog "GLARBS follow Gentoo's default configurations and use OpenRC as init system."
	elog "If you want to use Systemd, make the necessary changes in the corresponding files."
	einfo "GLARBS is meant to be as close to Luke's configuration as possible. This include the I3-window manager and pulseaudio."
	einfo "Although using DWM and alsa with Gentoo is prefered."
}

src_install() {

	insinto /etc/skel/${PN}
	doins -r *

	# With the use flag doc is enabled.
	if use doc; then

		einstalldocs

	fi

	# With the use flag nocd is enabled.
	if 	use nocd; then

		insinto $HOME
		doins -r *

	fi

}

pkg_postinst() {
		ewarn "GLARBS will never overwrite files in your home directory,"
		ewarn "unless you have made the use flag nocd enabled."
		ewarn "Activating the use flag nocd should only be done on a new  system,"
		ewarn "otherwise all your personal changes to the dotfiles and systemfiles vill be overwritten!"
		elog "To fully uppgrade GLARBS, without the use flag nocd enabled, do this two steps:"
		optfeature "Use a diff and merge tool, like Meld to keep your own changes in those files." dev-util/meld
		elog "1. Copy the systemfiles in /etc/skel/glarbs/etc/portage/* to /etc/portage/*"
		elog "2. Copy the dotfiles in /etc/skel/glarbs/username/* to ~/*"
}
