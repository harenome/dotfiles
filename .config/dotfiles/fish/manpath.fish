################################################################################
# MANPATH
################################################################################

# Load this configuration file after other local files! This file will do
# nothing if MANPATH has not yet been manually set.
# (For instance, prefix the names of your configuration files with numbers and
# use a big number for this file).

# Sadly, if MANPATH is set, man ignores its "default" directories...
#
# Unfortunately, since some packages or install scripts install their contents
# in strange locations, it is sometimes necessary to set MANPATH...
# (unless you are one of those who can easily remember that the manpage for
# `super-amazing-tool-2015-edition` is located in:
# `/usr/local/lib64/amazing-tools/super/2015-edition/doc/manpages/man/man1/`)

# (These values were extracted from my `/etc/man_db.conf` file on a Fedora 21)
if test "x$MANPATH" != "x"; then
  set -x MANPATH /usr/man /usr/share/man /usr/local/man /usr/local/share/man
  set -x MANPATH  $MANPATH /usr/X11R6/man /opt/man
fi
