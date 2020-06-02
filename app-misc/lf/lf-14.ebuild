# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="a terminal file manager written in Go"
HOMEPAGE="https://github.com/gokcehan/lf"
EGO_SUM=(
	"github.com/doronbehar/termbox-go v0.0.0-20191006141301-8c9470559e05"
	"github.com/doronbehar/termbox-go v0.0.0-20191006141301-8c9470559e05/go.mod"
	"github.com/mattn/go-runewidth v0.0.4"
	"github.com/mattn/go-runewidth v0.0.4/go.mod"
	"gopkg.in/djherbis/times.v1 v1.2.0"
	"gopkg.in/djherbis/times.v1 v1.2.0/go.mod"
)
go-module_set_globals
SRC_URI="https://github.com/gokcehan/lf/archive/r${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/go"
RDEPEND=""
S="${WORKDIR}/${PN}-r${PV}"
DOCS="README.md etc/lfrc.example"

src_compile() {
	go build || die
}

src_install() {
	dobin lf
	einstalldocs

	insinto /usr/share/${PN}
	doins etc/lfcd.sh
	doman lf.1

	# fish
	insinto /usr/share/fish/vendor_completions.d
	doins etc/lf.fish
	insinto /usr/share/fish/vendor_functions.d
	doins etc/lfcd.fish
}
