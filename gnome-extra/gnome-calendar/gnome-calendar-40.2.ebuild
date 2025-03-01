# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit gnome.org gnome2-utils meson virtualx xdg

DESCRIPTION="Manage your online calendars with simple and modern interface"
HOMEPAGE="https://wiki.gnome.org/Apps/Calendar"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="amd64 ~arm64 ~ppc64 x86"

# >=libical-1.0.1 for https://bugzilla.gnome.org/show_bug.cgi?id=751244
DEPEND="
	>=dev-libs/libical-1.0.1:0=
	>=gnome-base/gsettings-desktop-schemas-3.21.2
	>=gnome-extra/evolution-data-server-3.33.2:=[gtk]
	net-libs/libsoup:2.4
	>=dev-libs/libdazzle-3.33.1
	>=gui-libs/libhandy-1.0.0:1=
	>=dev-libs/glib-2.67.5:2
	>=x11-libs/gtk+-3.22.0:3
	>=net-libs/gnome-online-accounts-3.2.0:=
	>=dev-libs/libgweather-40.0:=
	>=app-misc/geoclue-2.4:2.0
	>=sci-geosciences/geocode-glib-3.23
"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-libs/appstream-glib
	dev-libs/libxml2:2
	dev-util/gdbus-codegen
	dev-util/glib-utils
	>=sys-devel/gettext-0.19.8
	virtual/pkgconfig
"

PATCHES=(
	"${FILESDIR}"/${PN}-40.2-meson-0.61.patch
)

src_test() {
	virtx meson_src_test
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
}
