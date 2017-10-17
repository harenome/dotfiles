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

# Use a modifier function to modify standard paths
# $argv[1]: Modifier function
# $argv[2]: Directory
function __modify_standard_paths
  if [ -d $argv[2] ]
    # Compiler paths
    eval "$argv[1] LIBRARY_PATH $argv[2]/lib"
    eval "$argv[1] LIBRARY_PATH $argv[2]/lib64"
    eval "$argv[1] CPATH $argv[2]/include"

    # Runtime paths
    eval "$argv[1] PATH $argv[2]/bin"
    eval "$argv[1] PATH $argv[2]/sbin"
    eval "$argv[1] MANPATH $argv[2]/man"
    eval "$argv[1] MANPATH $argv[2]/share/man"
    eval "$argv[1] LD_LIBRARY_PATH $argv[2]/lib"
    eval "$argv[1] LD_LIBRARY_PATH $argv[2]/lib64"
  end
end

# Append a directory to standard paths
# $argv[1]: Directory
function __append_to_standard_paths
  __modify_standard_paths "__append_to_global_list" "$argv[1]"
end

# Prepend a directory to standard paths
# $argv[1]: Directory
function __prepend_to_standard_paths
  __modify_standard_paths "__prepend_to_global_list" "$argv[1]"
end

################################################################################
# $HOME/bin
################################################################################

__prepend_to_global_list PATH ~/bin

################################################################################
# User opt directory
################################################################################

__prepend_to_standard_paths "$HOME/.opt"

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
