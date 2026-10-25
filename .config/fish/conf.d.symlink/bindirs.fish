# Some commonly used local directories for binaries

set -l bindirs
set -a bindirs "bin"
set -a bindirs ".bin"
set -a bindirs ".local/bin"
set -a bindirs ".opt/bin"
set -a bindirs ".opt/sbin"

for d in $bindirs
  [ -d "$HOME/$d" ] && fish_add_path "$HOME/$d"
end
