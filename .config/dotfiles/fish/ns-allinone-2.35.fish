################################################################################
# NS All in one support.
################################################################################

set NSALLINONE /opt/ns-allinone-2.35

__append_to_global_list PATH $NSALLINONE/bin
__append_to_global_list PATH $NSALLINONE/tcl8.5.10/unix
__append_to_global_list PATH $NSALLINONE/tk8.5.10/unix

__append_to_global_list LD_LIBRARY_PATH $NSALLINONE/otcl-1.14
__append_to_global_list LD_LIBRARY_PATH $NSALLINONE/lib

__append_to_global_list TCL_LIBRARY_PATH $NSALLINONE/tcl8.5.10/library
