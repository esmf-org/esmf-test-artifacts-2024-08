# ESMF application makefile fragment
#
# Use the following ESMF_ variables to compile and link
# your ESMF application against this ESMF build.
#
# !!! VERY IMPORTANT: If the location of this ESMF build is   !!!
# !!! changed, e.g. libesmf.a is copied to another directory, !!!
# !!! this file - esmf.mk - must be edited to adjust to the   !!!
# !!! correct new path                                        !!!
#
# Please see end of file for options used on this ESMF build
#

#----------------------------------------------
ESMF_VERSION_STRING=8.7.0 beta snapshot
ESMF_VERSION_STRING_GIT=v8.7.0b07
#----------------------------------------------

ESMF_VERSION_MAJOR=8
ESMF_VERSION_MINOR=7
ESMF_VERSION_REVISION=0
ESMF_VERSION_PATCHLEVEL=0
ESMF_VERSION_PUBLIC='F'
ESMF_VERSION_BETASNAPSHOT='T'


ESMF_APPSDIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/apps/appsO/Unicos.intel.64.mpiuni.default
ESMF_LIBSDIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_ESMXDIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/addon/ESMX


ESMF_F90COMPILER=ftn
ESMF_F90LINKER=ftn

ESMF_F90COMPILEOPTS=-O -fPIC -assume realloc_lhs   -qopenmp
ESMF_F90COMPILEPATHS=-I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/mod/modO/Unicos.intel.64.mpiuni.default -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/include -I/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/include -I/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/include
ESMF_F90COMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MPIUNI -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Unicos=1 -DESMF_COMM=mpiuni -DESMF_DIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf
ESMF_F90COMPILEFREECPP=
ESMF_F90COMPILEFREENOCPP=
ESMF_F90COMPILEFIXCPP=
ESMF_F90COMPILEFIXNOCPP=

ESMF_F90LINKOPTS=   -cxxlib -Wl,--no-as-needed  -qopenmp
ESMF_F90LINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -L/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib 
ESMF_F90ESMFLINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_F90LINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -Wl,-rpath,/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib
ESMF_F90ESMFLINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_F90LINKLIBS= -lrt -ldl -lnetcdff -lnetcdf
ESMF_F90ESMFLINKLIBS=-lesmf  -lrt -ldl -lnetcdff -lnetcdf

ESMF_CXXCOMPILER=CC
ESMF_CXXLINKER=CC

ESMF_CXXCOMPILEOPTS=-std=c++11 -O -DNDEBUG -fPIC -pthread  -qopenmp
ESMF_CXXCOMPILEPATHS= -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/include  -I/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/include -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/prologue/yaml-cpp/include
ESMF_CXXCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MPIUNI -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Unicos=1 -DESMF_COMM=mpiuni -DESMF_DIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf -D__SDIR__='' -DESMF_CXXSTD=11 -DESMF_NO_POSIXIPC

ESMF_CXXLINKOPTS=  -pthread -Wl,--no-as-needed  -qopenmp
ESMF_CXXLINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -L/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib -L/opt/intel/oneapi/compiler/2023.1.0/linux/compiler/lib/intel64_lin/
ESMF_CXXESMFLINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_CXXLINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -Wl,-rpath,/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib
ESMF_CXXESMFLINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_CXXLINKLIBS= -lrt -ldl -lnetcdff -lnetcdf
ESMF_CXXESMFLINKLIBS=-lesmf  -lrt -ldl -lnetcdff -lnetcdf

ESMF_CCOMPILER=cc
ESMF_CLINKER=cc

ESMF_CCOMPILEOPTS=-std=c99 -O -DNDEBUG -fPIC  -qopenmp
ESMF_CCOMPILEPATHS=-I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/include   -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/build_config/Unicos.intel.default
ESMF_CCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MPIUNI -I/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Unicos=1 -DESMF_COMM=mpiuni -DESMF_DIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf -D__SDIR__='' -DESMF_CSTD=99

ESMF_CLINKOPTS=   -qopenmp
ESMF_CLINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -L/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib -L/opt/intel/oneapi/compiler/2023.1.0/linux/compiler/lib/intel64_lin/ -L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -L/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib 
ESMF_CESMFLINKPATHS=-L/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_CLINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -Wl,-rpath,/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib -Wl,-rpath,/opt/intel/oneapi/compiler/2023.1.0/linux/compiler/lib/intel64_lin/ -Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default -Wl,-rpath,/opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib
ESMF_CESMFLINKRPATHS=-Wl,-rpath,/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default
ESMF_CLINKLIBS= -lrt -ldl -lnetcdff -lnetcdf  -lrt -ldl -lnetcdff -lnetcdf
ESMF_CESMFLINKLIBS=-lesmf  -lrt -ldl -lnetcdff -lnetcdf  -lrt -ldl -lnetcdff -lnetcdf

ESMF_SO_F90COMPILEOPTS=-fPIC
ESMF_SO_F90LINKOPTS=-shared
ESMF_SO_F90LINKOPTSEXE=-Wl,-export-dynamic
ESMF_SO_CXXCOMPILEOPTS=-fPIC
ESMF_SO_CXXLINKOPTS=-shared
ESMF_SO_CXXLINKOPTSEXE=-Wl,-export-dynamic
ESMF_SO_CCOMPILEOPTS=-fPIC
ESMF_SO_CLINKOPTS=-shared
ESMF_SO_CLINKOPTSEXE=-Wl,-export-dynamic

ESMF_OPENMP_F90COMPILEOPTS= -qopenmp
ESMF_OPENMP_F90LINKOPTS= -qopenmp
ESMF_OPENMP_CXXCOMPILEOPTS= -qopenmp
ESMF_OPENMP_CXXLINKOPTS= -qopenmp

ESMF_OPENACC_F90COMPILEOPTS=
ESMF_OPENACC_F90LINKOPTS=
ESMF_OPENACC_CXXCOMPILEOPTS=
ESMF_OPENACC_CXXLINKOPTS=

# ESMF Tracing compile/link options
ESMF_TRACE_LDPRELOAD=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/lib/libO/Unicos.intel.64.mpiuni.default/libesmftrace_preload.so
ESMF_TRACE_STATICLINKOPTS=-static -Wl,--wrap=c_esmftrace_notify_wrappers -Wl,--wrap=c_esmftrace_isinitialized -Wl,--wrap=write -Wl,--wrap=writev -Wl,--wrap=pwrite -Wl,--wrap=read -Wl,--wrap=open -Wl,--wrap=MPI_Allgather -Wl,--wrap=MPI_Allgatherv -Wl,--wrap=MPI_Allreduce -Wl,--wrap=MPI_Alltoall -Wl,--wrap=MPI_Alltoallv -Wl,--wrap=MPI_Alltoallw -Wl,--wrap=MPI_Barrier -Wl,--wrap=MPI_Bcast -Wl,--wrap=MPI_Bsend -Wl,--wrap=MPI_Gather -Wl,--wrap=MPI_Gatherv -Wl,--wrap=MPI_Iprobe -Wl,--wrap=MPI_Irecv -Wl,--wrap=MPI_Irsend -Wl,--wrap=MPI_Isend -Wl,--wrap=MPI_Issend -Wl,--wrap=MPI_Probe -Wl,--wrap=MPI_Recv -Wl,--wrap=MPI_Reduce -Wl,--wrap=MPI_Rsend -Wl,--wrap=MPI_Scan -Wl,--wrap=MPI_Scatter -Wl,--wrap=MPI_Scatterv -Wl,--wrap=MPI_Send -Wl,--wrap=MPI_Sendrecv -Wl,--wrap=MPI_Test -Wl,--wrap=MPI_Testall -Wl,--wrap=MPI_Testany -Wl,--wrap=MPI_Testsome -Wl,--wrap=MPI_Wait -Wl,--wrap=MPI_Waitall -Wl,--wrap=MPI_Waitany -Wl,--wrap=MPI_Waitsome -Wl,--wrap=mpi_allgather_ -Wl,--wrap=mpi_allgather__ -Wl,--wrap=mpi_allgatherv_ -Wl,--wrap=mpi_allgatherv__ -Wl,--wrap=mpi_allreduce_ -Wl,--wrap=mpi_allreduce__ -Wl,--wrap=mpi_alltoall_ -Wl,--wrap=mpi_alltoall__ -Wl,--wrap=mpi_alltoallv_ -Wl,--wrap=mpi_alltoallv__ -Wl,--wrap=mpi_alltoallw_ -Wl,--wrap=mpi_alltoallw__ -Wl,--wrap=mpi_barrier_ -Wl,--wrap=mpi_barrier__ -Wl,--wrap=mpi_bcast_ -Wl,--wrap=mpi_bcast__ -Wl,--wrap=mpi_bsend_ -Wl,--wrap=mpi_bsend__ -Wl,--wrap=mpi_exscan_ -Wl,--wrap=mpi_exscan__ -Wl,--wrap=mpi_gather_ -Wl,--wrap=mpi_gather__ -Wl,--wrap=mpi_gatherv_ -Wl,--wrap=mpi_gatherv__ -Wl,--wrap=mpi_iprobe_ -Wl,--wrap=mpi_iprobe__ -Wl,--wrap=mpi_irecv_ -Wl,--wrap=mpi_irecv__ -Wl,--wrap=mpi_irsend_ -Wl,--wrap=mpi_irsend__ -Wl,--wrap=mpi_isend_ -Wl,--wrap=mpi_isend__ -Wl,--wrap=mpi_issend_ -Wl,--wrap=mpi_issend__ -Wl,--wrap=mpi_probe_ -Wl,--wrap=mpi_probe__ -Wl,--wrap=mpi_recv_ -Wl,--wrap=mpi_recv__ -Wl,--wrap=mpi_reduce_ -Wl,--wrap=mpi_reduce__ -Wl,--wrap=mpi_reduce_scatter_ -Wl,--wrap=mpi_reduce_scatter__ -Wl,--wrap=mpi_rsend_ -Wl,--wrap=mpi_rsend__ -Wl,--wrap=mpi_scatter_ -Wl,--wrap=mpi_scatter__ -Wl,--wrap=mpi_scatterv_ -Wl,--wrap=mpi_scatterv__ -Wl,--wrap=mpi_scan_ -Wl,--wrap=mpi_scan__ -Wl,--wrap=mpi_send_ -Wl,--wrap=mpi_send__ -Wl,--wrap=mpi_sendrecv_ -Wl,--wrap=mpi_sendrecv__ -Wl,--wrap=mpi_test_ -Wl,--wrap=mpi_test__ -Wl,--wrap=mpi_testall_ -Wl,--wrap=mpi_testall__ -Wl,--wrap=mpi_testany_ -Wl,--wrap=mpi_testany__ -Wl,--wrap=mpi_testsome_ -Wl,--wrap=mpi_testsome__ -Wl,--wrap=mpi_wait_ -Wl,--wrap=mpi_wait__ -Wl,--wrap=mpi_waitall_ -Wl,--wrap=mpi_waitall__ -Wl,--wrap=mpi_waitany_ -Wl,--wrap=mpi_waitany__
ESMF_TRACE_STATICLINKLIBS=-lesmftrace_static
ESMF_TRACE_DYNAMICLINKLIBS=-lesmftrace_preload
ESMF_F90ESMFPRELOADLINKLIBS=-lesmf -lesmftrace_preload  -lrt -ldl -lnetcdff -lnetcdf

# Internal ESMF variables, do NOT depend on these!

ESMF_INTERNAL_DIR=/tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf
ESMF_INTERNAL_MPIRUN="/gpfs/f5/nggps_emc/world-shared/Gerhard.Theurich/ESMF-Nightly-Testing-C5/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun"

#
# !!! The following options were used on this ESMF build !!!
#
# ESMF_DIR: /tmp/intel_2023.1.0-oneAPI_mpiuni_O_develop/esmf
# ESMF_OS: Unicos
# ESMF_MACHINE: x86_64
# ESMF_ABI: 64
# ESMF_COMPILER: intel
# ESMF_BOPT: O
# ESMF_COMM: mpiuni
# ESMF_SITE: default
# ESMF_PTHREADS: ON
# ESMF_OPENMP: ON
# ESMF_OPENACC: OFF
# ESMF_ARRAY_LITE: FALSE
# ESMF_NO_INTEGER_1_BYTE: TRUE
# ESMF_NO_INTEGER_2_BYTE: TRUE
# ESMF_FORTRANSYMBOLS: default
# ESMF_MAPPER_BUILD: OFF
# ESMF_AUTO_LIB_BUILD: ON
# ESMF_DEFER_LIB_BUILD: ON
# ESMF_SHARED_LIB_BUILD: ON
# 
# ESMF environment variables pointing to 3rd party software:
# ESMF_MOAB:              internal
# ESMF_LAPACK:            internal
# ESMF_ACC_SOFTWARE_STACK:            none
# ESMF_NETCDF:            nc-config
# ESMF_NETCDF_INCLUDE:    /opt/cray/pe/netcdf/4.9.0.3/intel/19.0/include
# ESMF_NETCDF_LIBS:       -lnetcdff -lnetcdf
# ESMF_NETCDF_LIBPATH:    /opt/cray/pe/netcdf/4.9.0.3/intel/19.0/lib
# ESMF_NFCONFIG:          nf-config
# ESMF_NETCDFF_INCLUDE:   /opt/cray/pe/netcdf/4.9.0.3/intel/19.0/include
# ESMF_YAMLCPP:           internal
#
# * Compilers, Linkers, Flags, and Libraries *
# Location of the preprocessor:      /usr/bin/gcc
# Location of the Fortran compiler:  /opt/cray/pe/craype/2.7.20/bin/ftn
# Location of the Fortran linker:    /opt/cray/pe/craype/2.7.20/bin/ftn
# Location of the C++ compiler:      /opt/cray/pe/craype/2.7.20/bin/CC
# Location of the C++ linker:        /opt/cray/pe/craype/2.7.20/bin/CC
# Location of the C compiler:        /opt/cray/pe/craype/2.7.20/bin/cc
# Location of the C linker:          /opt/cray/pe/craype/2.7.20/bin/cc
#
