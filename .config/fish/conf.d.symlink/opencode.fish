# When OpenCode v2 has been installed with "https://opencode.ai/v2/install"

set -l OPENCODE_BINDIR "$HOME/.opencode/bin"
test -d "$OPENCODE_BINDIR" && fish_add_path "$OPENCODE_BINDIR"
