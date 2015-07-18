################################################################################
# NS All in one support.
################################################################################

if [[ -d /opt/ns-allinone-2.35 ]]; then
    NSALLINONE=/opt/ns-allinone-2.35

    __append_to_path PATH $NSALLINONE/bin:$NSALLINONE/tcl8.5.10/unix:$NSALLINONE/tk8.5.10/unix
    __append_to_path LD_LIBRARY_PATH $NSALLINONE/otcl-1.14:$NSALLINONE/lib
    __append_to_path TCL_LIBRARY_PATH $NSALLINONE/tcl8.5.10/library
fi
