################################################################################
# MPI.
################################################################################

if [[ -d /usr/lib64/openmpi ]]; then
    __append_to_path MANPATH /usr/share/man/openmpi-x86_64
    __append_to_path LD_LIBRARY_PATH /usr/lib64/openmpi/lib
    __append_to_path PATH /usr/lib64/openmpi/bin

    __append_to_path MPI_BIN /usr/lib64/openmpi/bin
    __append_to_path MPI_COMPILER openmpi-x86_64
    __append_to_path MPI_FORTRAN_MOD_DIR /usr/lib64/gfortran/modules/openmpi-x86_64
    __append_to_path MPI_HOME /usr/lib64/openmpi
    __append_to_path MPI_INCLUDE /usr/include/openmpi-x86-64
    __append_to_path MPI_LIB /usr/lib64/openmpi/lib
    __append_to_path MPI_MAN /usr/share/man/openmpi-x86_64
    __append_to_path MPI_PYTHON_SITEARCH /usr/lib64/python2.7/site-packages/openmpi
    __append_to_path MPI_SUFFIX _openmpi
    __append_to_path MPI_SYSCONFIG /etc/openmpi-x86_64
    __append_to_path PYTHONPATH=/usr/lib64/python2.7/site-packages/openmpi

    # module
    __append_to_path LOADEDMODULES openmpi-x86_64
    __append_to_path _LMFILES_ /etc/modulefiles/mpi/openmpi-x86_64
fi
