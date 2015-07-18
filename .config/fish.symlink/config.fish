#===============================================================================
# ~/.config/fish/config.fish configuration file.
# See the fish(1) man page.
#
# Maintainer: Harenome RANAIVOARIVONY RAZANAJATO
# License: WTFPLv2
#
# For the latest version (or any previous version) of this file,
# see https://github.com/Harenome/dotfiles/blob/master/.config/fish.symlink/config.fish
#===============================================================================

################################################################################
# Helper functions.
################################################################################

# Append existing directories to a global list if it is not already present.
# $argv[1]: Environment variable
# $argv[2]: Directory
function __append_to_global_list
    if begin [ -d $argv[2] ]; and not contains $argv[2] $$argv[1]; end
        not set -q $argv[1]; and set -g $argv[1]
        set -x $argv[1] $$argv[1] $argv[2]
    end

    return 0
end

# Prepend existing directories to a global list if it is not already present.
# $argv[1]: Environment variable
# $argv[2]: Directory
function __prepend_to_global_list
    if begin [ -d $argv[2] ]; and not contains $argv[2] $$argv[1]; end
        not set -q $argv[1]; and set -g $argv[1]
        set -x $argv[1] $argv[2] $$argv[1]
    end

    return 0
end

################################################################################
# $HOME/bin
################################################################################

__prepend_to_global_list PATH ~/bin

################################################################################
# MANPATH
################################################################################

# Sadly, if MANPATH is set, man ignores its "default" directories...
# Unfortunately, since some packages or install scripts install their contents
# in strange locations, it is sometimes necessary to set MANPATH...
# (unless you are one of those who can easily remember that the manpage for
# `super-amazing-tool-2015-edition` is located in:
# `/usr/local/lib64/amazing-tools/super/2015-edition/doc/manpages/man/man1/`)

# (These values were extracted from my `/etc/man_db.conf` file on a Fedora 21)
set -x MANPATH /usr/man /usr/share/man /usr/local/man /usr/local/share/man
set -x MANPATH  $MANPATH /usr/X11R6/man /opt/man

################################################################################
# /usr/local
################################################################################

set USR_LOCAL /usr/local
if [ -d $USR_LOCAL ]
    # Compiler paths
    __append_to_global_list LIBRARY_PATH $USR_LOCAL/lib
    __append_to_global_list LIBRARY_PATH $USR_LOCAL/lib64
    __append_to_global_list CPATH $USR_LOCAL/include

    # # Runtime paths
    __append_to_global_list PATH $USR_LOCAL/bin
    __append_to_global_list PATH $USR_LOCAL/sbin
    __append_to_global_list MANPATH $USR_LOCAL/man
    __append_to_global_list MANPATH $USR_LOCAL/share/man
    __append_to_global_list LD_LIBRARY_PATH $USR_LOCAL/lib
    __append_to_global_list LD_LIBRARY_PATH $USR_LOCAL/lib64
end

################################################################################
# User opt directory
################################################################################

set HOME_OPT $HOME/.opt
if [ -d $HOME_OPT ]
    # Compiler paths
    __prepend_to_global_list LIBRARY_PATH $HOME_OPT/lib
    __prepend_to_global_list LIBRARY_PATH $HOME_OPT/lib64
    __prepend_to_global_list CPATH $HOME_OPT/include

    # Runtime paths
    __prepend_to_global_list PATH $HOME_OPT/bin
    __prepend_to_global_list PATH $HOME_OPT/sbin
    __prepend_to_global_list MANPATH $HOME_OPT/man
    __prepend_to_global_list MANPATH $HOME_OPT/share/man
    __prepend_to_global_list LD_LIBRARY_PATH $HOME_OPT/lib
    __prepend_to_global_list LD_LIBRARY_PATH $HOME_OPT/lib64
end

################################################################################
# XDG variables
################################################################################

set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_DIRS "/usr/local/share/:/usr/share/"
set -x XDG_CONFIG_DIRS "/etc/xdg"
set -x XDG_CACHE_HOME "$HOME/.cache"

################################################################################
# Local configurations.
################################################################################

# This file is shared between machines. Sometimes, a specific system needs
# specific configuration.
# Any file in $HOME/.local/dotfiles/fish will be sourced.
set LOCAL_FISH_CONFIG_FILES $XDG_CONFIG_HOME/dotfiles/fish
if [ -d $LOCAL_FISH_CONFIG_FILES ]
    for config_file in $LOCAL_FISH_CONFIG_FILES/*
        source $config_file
    end
end
