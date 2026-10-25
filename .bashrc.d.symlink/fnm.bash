# When `fnm(1)` has been installed using "https://fnm.vercel.app/install"

FNM_PATH="${HOME}/.local/share/fnm"
if [[ -d "${FNM_PATH}" ]]; then
  export PATH="${FNM_PATH}:${PATH}"
  eval "$(fnm env --shell bash)"
fi
unset FNM_PATH
