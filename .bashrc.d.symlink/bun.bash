# When `bun(1)` has been install using "https://bun.com/install"

BUN_PREFIX="$HOME/.bun"
if [[ -d "${BUN_PREFIX}" ]]; then
  export BUN_INSTALL="${BUN_PREFIX}"
  export PATH="${BUN_INSTALL}/bin:${PATH}"
fi
unset BUN_PREFIX
