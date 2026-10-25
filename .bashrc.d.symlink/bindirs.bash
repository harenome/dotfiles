# Some commonly used local directories for binaries

declare -a bindirs
bindirs+=( "bin" )
bindirs+=( ".bin" )
bindirs+=( ".local/bin" )
bindirs+=( ".opt/bin" )
bindirs+=( ".opt/sbin" )

for d in "${bindirs[@]}"; do
  [[ -d "${HOME}/${d}" ]] && export PATH="${HOME}/${d}:${PATH}"
done
unset d
