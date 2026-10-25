# When using `goup` to manage Go installations

GO_CURRENT="${HOME}/.local/goup/current/go"
if [[ -d "${GO_CURRENT}" ]]; then
  export GOROOT="${GO_CURRENT}"
  export PATH="${GOROOT}/bin:${PATH}"
fi
unset GO_CURRENT
