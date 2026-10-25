# Choose `$GOPATH` (otherwise may default to `$HOME/go`!)

# Deliberately not testing for existence!
# Let $GOPATH be created when needed on fresh systems.
export GOPATH="${HOME}/.go"
export PATH="${GOPATH}/bin:${PATH}"
