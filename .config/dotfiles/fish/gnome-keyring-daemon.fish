################################################################################
# gnome-keyring-dameon environment variables
################################################################################

set -xU SSH_AUTH_SOCK (gnome-keyring-daemon -s | grep SSH_AUTH_SOCK | cut -d '=' -f 2)
set -xU GPG_AGENT_INFO (gnome-keyring-daemon -s | grep GPG_AGENT_INFO | cut -d '=' -f 2)
