# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# please keep this ebuild at EAPI 7 -- sys-apps/portage dep
EAPI=7

DISTUTILS_USE_PEP517=standalone
PYTHON_COMPAT=( python3_{8..10} pypy3 )
PYTHON_REQ_USE="xml(+)"

inherit distutils-r1 multiprocessing

CPY_PATCHSET="python-gentoo-patches-3.10.0_p1"
DESCRIPTION="Collection of extensions to Distutils"
HOMEPAGE="https://github.com/pypa/setuptools https://pypi.org/project/setuptools/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz
	https://dev.gentoo.org/~floppym/python/${CPY_PATCHSET}.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ia64 ~m68k ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/more-itertools[${PYTHON_USEDEP}]
	dev-python/ordered-set[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
"
BDEPEND="
	${RDEPEND}
	dev-python/wheel[${PYTHON_USEDEP}]
	test? (
		$(python_gen_cond_dep '
			dev-python/build[${PYTHON_USEDEP}]
			>=dev-python/filelock-3.4.0[${PYTHON_USEDEP}]
			>=dev-python/jaraco-envs-2.2[${PYTHON_USEDEP}]
			>=dev-python/jaraco-path-3.2.0[${PYTHON_USEDEP}]
			dev-python/mock[${PYTHON_USEDEP}]
			dev-python/pip[${PYTHON_USEDEP}]
			dev-python/sphinx[${PYTHON_USEDEP}]
			dev-python/pytest[${PYTHON_USEDEP}]
			dev-python/pytest-fixture-config[${PYTHON_USEDEP}]
			dev-python/pytest-virtualenv[${PYTHON_USEDEP}]
			dev-python/pytest-xdist[${PYTHON_USEDEP}]
			dev-python/tomli[${PYTHON_USEDEP}]
			>=dev-python/virtualenv-20[${PYTHON_USEDEP}]
			dev-python/wheel[${PYTHON_USEDEP}]
		' python3_{8..10} pypy3)
	)
"
PDEPEND="
	>=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"

DOCS=( {CHANGES,README}.rst )

src_prepare() {
	# remove bundled dependencies, setuptools will switch to system deps
	# automatically
	rm -r */_vendor || die

	# apply distutils patches to the bundled distutils
	pushd setuptools/_distutils >/dev/null || die
	# TODO: distutils C++ patch?
	eapply -p3 "${WORKDIR}/${CPY_PATCHSET}/0006-distutils-make-OO-enable-both-opt-1-and-opt-2-optimi.patch"
	popd >/dev/null || die

	distutils-r1_src_prepare
}

python_test() {
	local -x SETUPTOOLS_USE_DISTUTILS=stdlib

	# keep in sync with python_gen_cond_dep above!
	has "${EPYTHON}" python3.{8..10} pypy3 || continue

	local EPYTEST_DESELECT=(
		# network
		setuptools/tests/integration/test_pip_install_sdist.py::test_install_sdist
		setuptools/tests/test_distutils_adoption.py
		setuptools/tests/test_virtualenv.py::test_clean_env_install
		setuptools/tests/test_virtualenv.py::test_no_missing_dependencies
		'setuptools/tests/test_virtualenv.py::test_pip_upgrade_from_source[None]'
		setuptools/tests/test_virtualenv.py::test_test_command_install_requirements
		# unhappy with pytest-xdist?
		setuptools/tests/test_easy_install.py::TestUserInstallTest::test_local_index
		# TODO
		setuptools/tests/test_easy_install.py::TestSetupRequires::test_setup_requires_with_allow_hosts
		setuptools/tests/test_test.py::test_tests_are_run_once
	)

	# test_easy_install raises a SandboxViolation due to ${HOME}/.pydistutils.cfg
	# It tries to sandbox the test in a tempdir
	HOME="${PWD}" epytest \
		-n "$(makeopts_jobs "${MAKEOPTS}" "$(get_nproc)")" setuptools
}
