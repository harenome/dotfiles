# When `uv(1)` has been installed using "https://astral.sh/uv/install.sh"

UV_BASH_ENV="${HOME}/.local/bin/env"
[[ -f "${UV_BASH_ENV}" ]] && source "${UV_BASH_ENV}"
unset UV_BASH_ENV
