# When using `rustup` to manage Rust installations

set -l CARGO_FISH_ENV "$HOME/.cargo/env.fish"
test -f "$CARGO_FISH_ENV" && source "$CARGO_FISH_ENV"
