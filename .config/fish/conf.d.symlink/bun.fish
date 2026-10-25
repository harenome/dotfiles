# When `bun(1)` has been installed using "https://bun.com/install"

set -l BUN_PREFIX "$HOME/.bun"
if test -d "$BUN_PREFIX"
  set -gx BUN_INSTALL "$BUN_PREFIX"
  fish_add_path "$BUN_INSTALL/bin"
end
