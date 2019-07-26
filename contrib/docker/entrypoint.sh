#!/usr/bin/env sh

set -e

CONF_DIR=${CONF_DIR:-/etc}

mkdir -p ${CONF_DIR}

if [ ! -f "${CONF_DIR}/yggdrasil.conf" ]; then
  echo "generate ${CONF_DIR}/yggdrasil.conf"
  yggdrasil --genconf > "${CONF_DIR}/yggdrasil.conf"
fi

yggdrasil --useconffile "${CONF_DIR}/yggdrasil.conf"
exit $?
