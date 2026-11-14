set -l USER_ID (id -u)

set -l RUNTIME_DIR "/run/user/$USER_ID"
if test -z "$XDG_RUNTIME_DIR" && test -d "$RUNTIME_DIR"
  set -gx XDG_RUNTIME_DIR "$RUNTIME_DIR"
end

set -l BUS_ADDRESS "unix:path=/run/user/$USER_ID/bus"
if test -z "$DBUS_SESSION_BUS_ADDRESS" && test -S "$BUS_ADDRESS"
  set -gx DBUS_SESSION_BUS_ADDRESS "$BUS_ADDRESS"
end
