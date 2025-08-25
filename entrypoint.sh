#!/bin/sh

set -euo pipefail

# for backwards compatibility, seperates host and port from url

export BACKEND_DOMAIN=${BACKEND_DOMAIN:-${BACKEND_HOST%:*}}
export BACKEND_PORT=${BACKEND_PORT:-${BACKEND_HOST##*:}}

# strip https:// or https:// from domain if necessary
BACKEND_DOMAIN=${BACKEND_DOMAIN##*://}

echo using backend: ${BACKEND_DOMAIN} with port: ${BACKEND_PORT}

exec caddy run --config Caddyfile --adapter caddyfile 2>&1