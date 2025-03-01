# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="Fuzzy string matching in python"
HOMEPAGE="https://github.com/seatgeek/fuzzywuzzy"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

KEYWORDS="amd64 arm arm64 ppc ppc64 ~riscv sparc x86"
LICENSE="GPL-2"
SLOT="0"

RDEPEND="dev-python/python-levenshtein[${PYTHON_USEDEP}]"
BDEPEND="test? ( dev-python/pycodestyle[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest
