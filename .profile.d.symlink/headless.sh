#!bin/sh

USER_ID=${USER_ID:-$(id -u)}

RUNTIME_DIR="/run/user/${USER_ID}"
if [ -z "${XDG_RUNTIME_DIR:-}" ] && [ -d "${RUNTIME_DIR}" ]; then
  export XDG_RUNTIME_DIR="${RUNTIME_DIR}"
fi

BUS_ADDRESS="unix:path=/run/user/${USER_ID}/bus"
if [ -z "${DBUS_SESSION_BUS_ADDRESS:-}" ] && [ -S "${BUS_ADDRESS}" ]; then
 export DBUS_SESSION_BUS_ADDRESS="${BUS_ADDRESS}"
fi
