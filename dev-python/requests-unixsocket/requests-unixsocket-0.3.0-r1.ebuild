# Copyright 2020-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Use requests to talk HTTP via a UNIX domain socket"
HOMEPAGE="https://github.com/msabramo/requests-unixsocket"
SRC_URI="mirror://pypi/${PN::1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"

RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"
BDEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
	test? ( dev-python/waitress[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest
