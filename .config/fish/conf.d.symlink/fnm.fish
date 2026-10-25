# When `fnm(1)` has been installed using "https://fnm.vercel.app/install"

set -l FNM_PATH "$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]
  fish_add_path "$FNM_PATH"
  fnm env --shell fish | source
end
