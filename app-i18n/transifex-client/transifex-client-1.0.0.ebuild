# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="The Transifex command-line client"
HOMEPAGE="https://github.com/transifex/cli"

EGO_SUM=(
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/Microsoft/go-winio v0.4.14/go.mod"
	"github.com/Microsoft/go-winio v0.4.16"
	"github.com/Microsoft/go-winio v0.4.16/go.mod"
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7"
	"github.com/alcortesm/tgz v0.0.0-20161220082320-9c5fe88206d7/go.mod"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239"
	"github.com/anmitsu/go-shlex v0.0.0-20161002113705-648efa622239/go.mod"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5"
	"github.com/armon/go-socks5 v0.0.0-20160902184237-e75332964ef5/go.mod"
	"github.com/atomicgo/cursor v0.0.1"
	"github.com/atomicgo/cursor v0.0.1/go.mod"
	"github.com/blang/semver v3.5.1+incompatible"
	"github.com/blang/semver v3.5.1+incompatible/go.mod"
	"github.com/chzyer/logex v1.1.10"
	"github.com/chzyer/logex v1.1.10/go.mod"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e"
	"github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1"
	"github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/emirpasic/gods v1.12.0"
	"github.com/emirpasic/gods v1.12.0/go.mod"
	"github.com/flynn/go-shlex v0.0.0-20150515145356-3f9db97f8568/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/gliderlabs/ssh v0.2.2"
	"github.com/gliderlabs/ssh v0.2.2/go.mod"
	"github.com/go-git/gcfg v1.5.0"
	"github.com/go-git/gcfg v1.5.0/go.mod"
	"github.com/go-git/go-billy/v5 v5.0.0/go.mod"
	"github.com/go-git/go-billy/v5 v5.1.0"
	"github.com/go-git/go-billy/v5 v5.1.0/go.mod"
	"github.com/go-git/go-git-fixtures/v4 v4.0.2-0.20200613231340-f56387b50c12"
	"github.com/go-git/go-git-fixtures/v4 v4.0.2-0.20200613231340-f56387b50c12/go.mod"
	"github.com/go-git/go-git/v5 v5.3.0"
	"github.com/go-git/go-git/v5 v5.3.0/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.2"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-github/v30 v30.1.0"
	"github.com/google/go-github/v30 v30.1.0/go.mod"
	"github.com/google/go-querystring v1.0.0"
	"github.com/google/go-querystring v1.0.0/go.mod"
	"github.com/gookit/color v1.4.2"
	"github.com/gookit/color v1.4.2/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod"
	"github.com/gosimple/slug v1.11.2"
	"github.com/gosimple/slug v1.11.2/go.mod"
	"github.com/gosimple/unidecode v1.0.1"
	"github.com/gosimple/unidecode v1.0.1/go.mod"
	"github.com/hpcloud/tail v1.0.0/go.mod"
	"github.com/imdario/mergo v0.3.12"
	"github.com/imdario/mergo v0.3.12/go.mod"
	"github.com/inconshreveable/go-update v0.0.0-20160112193335-8152e7eb6ccf"
	"github.com/inconshreveable/go-update v0.0.0-20160112193335-8152e7eb6ccf/go.mod"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99/go.mod"
	"github.com/jessevdk/go-flags v1.5.0/go.mod"
	"github.com/jtolds/gls v4.20.0+incompatible"
	"github.com/jtolds/gls v4.20.0+incompatible/go.mod"
	"github.com/juju/ansiterm v0.0.0-20180109212912-720a0952cc2a"
	"github.com/juju/ansiterm v0.0.0-20180109212912-720a0952cc2a/go.mod"
	"github.com/kevinburke/ssh_config v0.0.0-20201106050909-4977a11b4351"
	"github.com/kevinburke/ssh_config v0.0.0-20201106050909-4977a11b4351/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.1"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/lunixbochs/vtclean v0.0.0-20180621232353-2d01aacdc34a"
	"github.com/lunixbochs/vtclean v0.0.0-20180621232353-2d01aacdc34a/go.mod"
	"github.com/manifoldco/promptui v0.8.0"
	"github.com/manifoldco/promptui v0.8.0/go.mod"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-isatty v0.0.4"
	"github.com/mattn/go-isatty v0.0.4/go.mod"
	"github.com/mattn/go-runewidth v0.0.13"
	"github.com/mattn/go-runewidth v0.0.13/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/onsi/ginkgo v1.6.0/go.mod"
	"github.com/onsi/gomega v1.4.2"
	"github.com/onsi/gomega v1.4.2/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/pterm/pterm v0.12.24"
	"github.com/pterm/pterm v0.12.24/go.mod"
	"github.com/rhysd/go-github-selfupdate v1.2.3"
	"github.com/rhysd/go-github-selfupdate v1.2.3/go.mod"
	"github.com/rivo/uniseg v0.2.0"
	"github.com/rivo/uniseg v0.2.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/sergi/go-diff v1.1.0"
	"github.com/sergi/go-diff v1.1.0/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.4.1/go.mod"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod"
	"github.com/smartystreets/goconvey v1.6.4"
	"github.com/smartystreets/goconvey v1.6.4/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/tcnksm/go-gitconfig v0.1.2"
	"github.com/tcnksm/go-gitconfig v0.1.2/go.mod"
	"github.com/ulikunitz/xz v0.5.9"
	"github.com/ulikunitz/xz v0.5.9/go.mod"
	"github.com/urfave/cli/v2 v2.3.0"
	"github.com/urfave/cli/v2 v2.3.0/go.mod"
	"github.com/xanzy/ssh-agent v0.3.0"
	"github.com/xanzy/ssh-agent v0.3.0/go.mod"
	"github.com/xo/terminfo v0.0.0-20210125001918-ca9a967f8778"
	"github.com/xo/terminfo v0.0.0-20210125001918-ca9a967f8778/go.mod"
	"golang.org/x/crypto v0.0.0-20190219172222-a4c6cb3142f2/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20201221181555-eec23a3978ad/go.mod"
	"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2"
	"golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180906233101-161cd47e91fd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210326060303-6b1517762897"
	"golang.org/x/net v0.0.0-20210326060303-6b1517762897/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20181106182150-f42d05182288"
	"golang.org/x/oauth2 v0.0.0-20181106182150-f42d05182288/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20180909124046-d0be0721c37e/go.mod"
	"golang.org/x/sys v0.0.0-20181122145206-62eef0e2fa9b/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200302150141-5c8b2ff67527/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210320140829-1e4c9ba3b0c4/go.mod"
	"golang.org/x/sys v0.0.0-20210324051608-47abb6519492/go.mod"
	"golang.org/x/sys v0.0.0-20210330210617-4fbd30eecc44"
	"golang.org/x/sys v0.0.0-20210330210617-4fbd30eecc44/go.mod"
	"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210220032956-6a3ed077a48d"
	"golang.org/x/term v0.0.0-20210220032956-6a3ed077a48d/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.5"
	"golang.org/x/text v0.3.5/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190328211700-ab21143f2384/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.3.0"
	"google.golang.org/appengine v1.3.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/fsnotify.v1 v1.4.7/go.mod"
	"gopkg.in/ini.v1 v1.62.0"
	"gopkg.in/ini.v1 v1.62.0/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7/go.mod"
	"gopkg.in/warnings.v0 v0.1.2"
	"gopkg.in/warnings.v0 v0.1.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.3/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.3.0"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	)
go-module_set_globals

SRC_URI="https://github.com/transifex/cli/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"
S="${WORKDIR}"/cli-${PV}

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_test() {
	go test ./... || die
}

src_install() {
	dobin bin/tx
	dodoc README.md
}
