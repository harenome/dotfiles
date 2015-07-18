################################################################################
# Cabal
################################################################################

set CABAL $HOME/.cabal
if [ -d $CABAL ]
    # Compiler paths
    __prepend_to_global_list LIBRARY_PATH $CABAL/lib
    __prepend_to_global_list LIBRARY_PATH $CABAL/lib64
    __prepend_to_global_list CPATH $CABAL/include

    # Runtime paths
    __prepend_to_global_list PATH $CABAL/bin
    __prepend_to_global_list PATH $CABAL/sbin
    __prepend_to_global_list MANPATH $CABAL/man
    __prepend_to_global_list MANPATH $CABAL/share/man
    __prepend_to_global_list LD_LIBRARY_PATH $CABAL/lib
    __prepend_to_global_list LD_LIBRARY_PATH $CABAL/lib64
end

