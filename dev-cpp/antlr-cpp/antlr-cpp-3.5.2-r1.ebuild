# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=6

MY_PN="${PN%-cpp}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The ANTLR 3 C++ Runtime"
HOMEPAGE="http://www.antlr3.org/"
SRC_URI="https://github.com/${MY_PN}/${MY_PN}3/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"
SLOT="3.5"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${MY_PN}3-${PV}"

src_install() {
	doheader "${S}"/runtime/Cpp/include/*
}
