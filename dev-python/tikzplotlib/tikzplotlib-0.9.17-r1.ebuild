# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1 virtualx

DESCRIPTION="Convert matplotlib figures into TikZ/PGFPlots"
HOMEPAGE="https://github.com/nschloe/tikzplotlib"
SRC_URI="https://github.com/nschloe/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	app-text/texlive[extra]
	<dev-python/matplotlib-3.5[latex,${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
"

BDEPEND="
	test? (
		dev-python/pandas[${PYTHON_USEDEP}]
		dev-python/pytest-codeblocks[${PYTHON_USEDEP}]
		dev-python/scipy[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest
distutils_enable_sphinx doc dev-python/mock

python_test() {
	local -x MPLBACKEND=Agg
	virtx epytest
}
