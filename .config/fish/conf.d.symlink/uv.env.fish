# When `uv(1)` has been installed using "https://astral.sh/uv/install.sh"

set -l UV_FISH_ENV "$HOME/.local/bin/env.fish"
test -f "$UV_FISH_ENV" && source "$UV_FISH_ENV"
