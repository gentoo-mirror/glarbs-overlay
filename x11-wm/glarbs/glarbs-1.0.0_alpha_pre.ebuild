# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A fully-featured tiling window manager-based system for any Gentoo based system."
HOMEPAGE="https://wiki.gentoo.org/wiki/User:Et-8/GLARBS"
SRC_URI="https://gitlab.com/et-8/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc nocd xinerama"
DOCS="README"

DEPEND=""
RDEPEND="${DEPEND}
		!app-shells/zsh-syntax-highlightning
		"
BDEPEND=""

pkg_preinst() {
	ewarn "GLARBS is in the early stages and will not work without further modification!"
	elog "GLARBS follow Gentoo's default configurations and use OpenRC as init system."
	elog "If you want to use Systemd, make the necessary changes in the corresponding files."
	einfo "GLARBS is meant to be as close to Luke's configuration as possible. This include the I3-window manager and pulseaudio."
	einfo "Although using DWM and alsa with Gentoo is prefered."
}

src_install() {

	insinto /etc/skel/${PN}

	# With the use flag doc is enabled.
	if use doc; then

		einstalldocs

	fi

	# With the use flag nocd is enabled.
	if use nocd; then

		cp -R /etc/skel/glarbs/home/username/* $HOME

	fi

}

pkg_postinst() {
		ewarn "GLARBS will never overwrite files in your home directory,"
		ewarn "unless you have made the use flag nocd enabled."
		ewarn "Activating the use flag nocd should only be done on a new  system,"
		ewarn "otherwise all your personal changes to the dotfiles and systemfiles vill be overwritten!"
		elog "To fully uppgrade GLARBS, without the use flag nocd enabled, do this two steps:"
		elog "Use a diff and merge tool, like dev-util/meld to keep your own changes in those files."
		elog "1. Copy the systemfiles in /etc/skel/glarbs/etc/portage/* to /etc/portage/*"
		elog "2. Copy the dotfiles in /etc/skel/glarbs/username/* to ~/*"
}
