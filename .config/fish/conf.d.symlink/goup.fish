# When using `goup` to manage Go installations

set -l GO_CURRENT "$HOME/.local/goup/current/go"
if test -d "$GO_CURRENT"
  set -gx "$GOROOT" "$GO_CURRENT"
  fish_add_path "$GOROOT/bin"
end
