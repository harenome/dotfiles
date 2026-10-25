# Choose `$GOPATH` (otherwise may default to `$HOME/go`!)

# Deliberately not testing for existence!
# Let $GOPATH be created when needed on fresh systems.
set -gx GOPATH "$HOME/.go"
fish_add_path "$GOPATH/bin"
