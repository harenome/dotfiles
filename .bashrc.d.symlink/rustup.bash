# When using `rustup` to manage Rust installations

CARGO_BASH_ENV="${HOME}/.cargo/env"
[[ -f "$CARGO_BASH_ENV" ]] && source "$CARGO_BASH_ENV"
unset CARGO_BASH_ENV
