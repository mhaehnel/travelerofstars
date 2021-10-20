# Copyright 2021 Gentoo Authors
#			2021 Marcus Hähnel
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8,9} )

inherit distutils-r1

DESCRIPTION="Reference homeserver for the Matrix decentralised comms protocol"
HOMEPAGE="http://matrix.org https://github.com/matrix-org/synapse"
SRC_URI="https://github.com/matrix-org/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="email ldap openid postgres sqlite url-preview saml2 systemd webclient"

# TODO: Check SQLITE min version needed and if this is the right place.
# TODO: enable/disable serving web app

# TODO: Testing: https://github.com/matrix-org/sytest

# TODO: Looking for a Maintainer: >=dev-python/phonenumbers-8.2.0

#TODO: ACME Support?
#TODO: Excludes sentry-sdk tracking dependency
#TODO: Excludes opentracing
#TODO: Excludes jwt support
#TODO: Excludes redis

RDEPEND="${PYTHON_DEPS}
        >=dev-python/jsonschema-3.0.0[${PYTHON_USEDEP}]
        >=dev-python/frozendict-1.2[${PYTHON_USEDEP}]
        >=dev-python/unpaddedbase64-1.1.0[${PYTHON_USEDEP}]
        >=dev-python/canonicaljson-1.4.0[${PYTHON_USEDEP}]
        >=dev-python/signedjson-1.1.0[${PYTHON_USEDEP}]
        >=dev-python/pynacl-1.2.1[${PYTHON_USEDEP}]
		>=dev-python/idna-2.5[${PYTHON_USEDEP}]
        >=dev-python/service_identity-18.1.0[${PYTHON_USEDEP}]
        >=dev-python/twisted-18.9.0[${PYTHON_USEDEP}]
        >=dev-python/treq-15.1[${PYTHON_USEDEP}]
        >=dev-python/pyopenssl-16.0.0[${PYTHON_USEDEP}]
        >=dev-python/pyyaml-3.11[${PYTHON_USEDEP}]
        >=dev-python/pyasn1-0.1.9[${PYTHON_USEDEP}]
        >=dev-python/pyasn1-modules-0.0.7[${PYTHON_USEDEP}]
        >=dev-python/bcrypt-3.1.0[${PYTHON_USEDEP}]
        >=dev-python/pillow-4.3.0[${PYTHON_USEDEP},jpeg]
        >=dev-python/sortedcontainers-1.4.4[${PYTHON_USEDEP}]
        >=dev-python/pymacaroons-0.13.0[${PYTHON_USEDEP}]
        >=dev-python/msgpack-0.5.2[${PYTHON_USEDEP}]
        >=dev-python/phonenumbers-8.2.0[${PYTHON_USEDEP}]
        >=dev-python/prometheus_client-0.4.0[${PYTHON_USEDEP}]
        >=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]
		>=dev-python/netaddr-0.7.18[${PYTHON_USEDEP}]
		>=dev-python/jinja-2.9[${PYTHON_USEDEP}]
		>=dev-python/bleach-1.4.3[${PYTHON_USEDEP}]
        >=dev-python/typing-extensions-3.7.4[${PYTHON_USEDEP}]
        >=dev-python/cryptography-3.4.7[${PYTHON_USEDEP}]
		>=dev-python/ijson-3.0[${PYTHON_USEDEP}]
        virtual/jpeg
        ldap? (
                >=dev-python/matrix-synapse-ldap3-0.1.4[${PYTHON_USEDEP}]
        )
        postgres? (
                >=dev-python/psycopg-2.8[${PYTHON_USEDEP}]
        )
        saml2? (
                >=dev-python/pysaml2-4.5.0[${PYTHON_USEDEP}]
        )
		openid? (
				>=dev-python/authlib-0.14.0[${PYTHON_USEDEP}]
		)
		systemd? (
				>=dev-python/python-systemd-231[${PYTHON_USEDEP}]
		)
        sqlite? (
                >=dev-db/sqlite-3.24.0
        )
        url-preview? (
                >=dev-python/lxml-3.5.0[${PYTHON_USEDEP}]
        )
"
DEPEND="${RDEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

