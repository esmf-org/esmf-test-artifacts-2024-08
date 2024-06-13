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


ESMF_APPSDIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/apps/appsO/Linux.nvhpc.64.openmpi.default
ESMF_LIBSDIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_ESMXDIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/src/addon/ESMX


ESMF_F90COMPILER=mpifort
ESMF_F90LINKER=mpifort

ESMF_F90COMPILEOPTS=-O -fpic -mcmodel=small -Mallocatable=03 -pthread  -mp
ESMF_F90COMPILEPATHS=-I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/mod/modO/Linux.nvhpc.64.openmpi.default -I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/src/include 
ESMF_F90COMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DSx86_64_small=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf -DESMF_NO_F2018ASSUMEDTYPE
ESMF_F90COMPILEFREECPP=
ESMF_F90COMPILEFREENOCPP=-Mfreeform
ESMF_F90COMPILEFIXCPP=-Mpreprocess -Mnofreeform
ESMF_F90COMPILEFIXNOCPP=

ESMF_F90LINKOPTS=  -mcmodel=small -pthread -Wl,--no-as-needed  -mp
ESMF_F90LINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default 
ESMF_F90ESMFLINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_F90LINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default 
ESMF_F90ESMFLINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_F90LINKLIBS=  -c++libs
ESMF_F90ESMFLINKLIBS=-lesmf   -c++libs

ESMF_CXXCOMPILER=mpic++
ESMF_CXXLINKER=mpic++

ESMF_CXXCOMPILEOPTS=-std=c++11 -O -DNDEBUG -fpic -mcmodel=small -pthread  -mp
ESMF_CXXCOMPILEPATHS= -I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/src/include   -I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/src/prologue/yaml-cpp/include
ESMF_CXXCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DSx86_64_small=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf -D__SDIR__='' -DESMF_CXXSTD=11 -DESMF_NO_SIGUSR2 -DESMF_NO_F2018ASSUMEDTYPE

ESMF_CXXLINKOPTS=  -mcmodel=small -pthread -Wl,--no-as-needed  -mp
ESMF_CXXLINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default 
ESMF_CXXESMFLINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_CXXLINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default 
ESMF_CXXESMFLINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_CXXLINKLIBS= -fortranlibs
ESMF_CXXESMFLINKLIBS=-lesmf  -fortranlibs

ESMF_CCOMPILER=mpicc
ESMF_CLINKER=mpicc

ESMF_CCOMPILEOPTS= -O -DNDEBUG -fpic  -mp
ESMF_CCOMPILEPATHS=-I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/src/include   -I/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/build_config/Linux.nvhpc.default
ESMF_CCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07' -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DSx86_64_small=1 -DESMF_OS_Linux=1 -DESMF_COMM=openmpi -DESMF_DIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf -D__SDIR__=''

ESMF_CLINKOPTS=   -mp
ESMF_CLINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default  -L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default 
ESMF_CESMFLINKPATHS=-L/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_CLINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default -Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_CESMFLINKRPATHS=-Wl,-rpath,/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default
ESMF_CLINKLIBS= -fortranlibs   -c++libs
ESMF_CESMFLINKLIBS=-lesmf  -fortranlibs   -c++libs

ESMF_SO_F90COMPILEOPTS=-fpic
ESMF_SO_F90LINKOPTS=-shared
ESMF_SO_F90LINKOPTSEXE=-Wl,-export-dynamic
ESMF_SO_CXXCOMPILEOPTS=-fpic
ESMF_SO_CXXLINKOPTS=-shared
ESMF_SO_CXXLINKOPTSEXE=-Wl,-export-dynamic
ESMF_SO_CCOMPILEOPTS=-fpic
ESMF_SO_CLINKOPTS=-shared
ESMF_SO_CLINKOPTSEXE=-Wl,-export-dynamic

ESMF_OPENMP_F90COMPILEOPTS= -mp
ESMF_OPENMP_F90LINKOPTS= -mp
ESMF_OPENMP_CXXCOMPILEOPTS= -mp
ESMF_OPENMP_CXXLINKOPTS= -mp

ESMF_OPENACC_F90COMPILEOPTS= -acc -Minfo
ESMF_OPENACC_F90LINKOPTS= -acc -Minfo
ESMF_OPENACC_CXXCOMPILEOPTS= -acc -Minfo
ESMF_OPENACC_CXXLINKOPTS= -acc -Minfo

# ESMF Tracing compile/link options
ESMF_TRACE_LDPRELOAD=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf/lib/libO/Linux.nvhpc.64.openmpi.default/libesmftrace_preload.so
ESMF_TRACE_STATICLINKOPTS=-static -Wl,--wrap=c_esmftrace_notify_wrappers -Wl,--wrap=c_esmftrace_isinitialized -Wl,--wrap=write -Wl,--wrap=writev -Wl,--wrap=pwrite -Wl,--wrap=read -Wl,--wrap=open -Wl,--wrap=MPI_Allgather -Wl,--wrap=MPI_Allgatherv -Wl,--wrap=MPI_Allreduce -Wl,--wrap=MPI_Alltoall -Wl,--wrap=MPI_Alltoallv -Wl,--wrap=MPI_Alltoallw -Wl,--wrap=MPI_Barrier -Wl,--wrap=MPI_Bcast -Wl,--wrap=MPI_Bsend -Wl,--wrap=MPI_Gather -Wl,--wrap=MPI_Gatherv -Wl,--wrap=MPI_Iprobe -Wl,--wrap=MPI_Irecv -Wl,--wrap=MPI_Irsend -Wl,--wrap=MPI_Isend -Wl,--wrap=MPI_Issend -Wl,--wrap=MPI_Probe -Wl,--wrap=MPI_Recv -Wl,--wrap=MPI_Reduce -Wl,--wrap=MPI_Rsend -Wl,--wrap=MPI_Scan -Wl,--wrap=MPI_Scatter -Wl,--wrap=MPI_Scatterv -Wl,--wrap=MPI_Send -Wl,--wrap=MPI_Sendrecv -Wl,--wrap=MPI_Test -Wl,--wrap=MPI_Testall -Wl,--wrap=MPI_Testany -Wl,--wrap=MPI_Testsome -Wl,--wrap=MPI_Wait -Wl,--wrap=MPI_Waitall -Wl,--wrap=MPI_Waitany -Wl,--wrap=MPI_Waitsome -Wl,--wrap=mpi_allgather_ -Wl,--wrap=mpi_allgather__ -Wl,--wrap=mpi_allgatherv_ -Wl,--wrap=mpi_allgatherv__ -Wl,--wrap=mpi_allreduce_ -Wl,--wrap=mpi_allreduce__ -Wl,--wrap=mpi_alltoall_ -Wl,--wrap=mpi_alltoall__ -Wl,--wrap=mpi_alltoallv_ -Wl,--wrap=mpi_alltoallv__ -Wl,--wrap=mpi_alltoallw_ -Wl,--wrap=mpi_alltoallw__ -Wl,--wrap=mpi_barrier_ -Wl,--wrap=mpi_barrier__ -Wl,--wrap=mpi_bcast_ -Wl,--wrap=mpi_bcast__ -Wl,--wrap=mpi_bsend_ -Wl,--wrap=mpi_bsend__ -Wl,--wrap=mpi_exscan_ -Wl,--wrap=mpi_exscan__ -Wl,--wrap=mpi_gather_ -Wl,--wrap=mpi_gather__ -Wl,--wrap=mpi_gatherv_ -Wl,--wrap=mpi_gatherv__ -Wl,--wrap=mpi_iprobe_ -Wl,--wrap=mpi_iprobe__ -Wl,--wrap=mpi_irecv_ -Wl,--wrap=mpi_irecv__ -Wl,--wrap=mpi_irsend_ -Wl,--wrap=mpi_irsend__ -Wl,--wrap=mpi_isend_ -Wl,--wrap=mpi_isend__ -Wl,--wrap=mpi_issend_ -Wl,--wrap=mpi_issend__ -Wl,--wrap=mpi_probe_ -Wl,--wrap=mpi_probe__ -Wl,--wrap=mpi_recv_ -Wl,--wrap=mpi_recv__ -Wl,--wrap=mpi_reduce_ -Wl,--wrap=mpi_reduce__ -Wl,--wrap=mpi_reduce_scatter_ -Wl,--wrap=mpi_reduce_scatter__ -Wl,--wrap=mpi_rsend_ -Wl,--wrap=mpi_rsend__ -Wl,--wrap=mpi_scatter_ -Wl,--wrap=mpi_scatter__ -Wl,--wrap=mpi_scatterv_ -Wl,--wrap=mpi_scatterv__ -Wl,--wrap=mpi_scan_ -Wl,--wrap=mpi_scan__ -Wl,--wrap=mpi_send_ -Wl,--wrap=mpi_send__ -Wl,--wrap=mpi_sendrecv_ -Wl,--wrap=mpi_sendrecv__ -Wl,--wrap=mpi_test_ -Wl,--wrap=mpi_test__ -Wl,--wrap=mpi_testall_ -Wl,--wrap=mpi_testall__ -Wl,--wrap=mpi_testany_ -Wl,--wrap=mpi_testany__ -Wl,--wrap=mpi_testsome_ -Wl,--wrap=mpi_testsome__ -Wl,--wrap=mpi_wait_ -Wl,--wrap=mpi_wait__ -Wl,--wrap=mpi_waitall_ -Wl,--wrap=mpi_waitall__ -Wl,--wrap=mpi_waitany_ -Wl,--wrap=mpi_waitany__
ESMF_TRACE_STATICLINKLIBS=-lesmftrace_static
ESMF_TRACE_DYNAMICLINKLIBS=-lesmftrace_preload
ESMF_F90ESMFPRELOADLINKLIBS=-lesmf -lesmftrace_preload   -c++libs

# Internal ESMF variables, do NOT depend on these!

ESMF_INTERNAL_DIR=/scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf
ESMF_INTERNAL_MPIRUN="mpirun"

#
# !!! The following options were used on this ESMF build !!!
#
# ESMF_DIR: /scratch2/NCEPDEV/stmp1/Gerhard.Theurich/ESMF-Nightly-Testing/nvhpc_24.1_openmpi_O_develop/esmf
# ESMF_OS: Linux
# ESMF_MACHINE: x86_64
# ESMF_ABI: 64
# ESMF_COMPILER: nvhpc
# ESMF_BOPT: O
# ESMF_COMM: openmpi
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
# ESMF_YAMLCPP:           internal
#
# * Compilers, Linkers, Flags, and Libraries *
# Location of the preprocessor:      /usr/bin/gcc
# Location of the Fortran compiler:  /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpifort
# Location of the Fortran linker:    /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpifort
# Location of the C++ compiler:      /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpic++
# Location of the C++ linker:        /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpic++
# Location of the C compiler:        /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpicc
# Location of the C linker:          /apps/nvidia/hpc_sdk/Linux_x86_64/24.1/comm_libs/mpi/bin/mpicc
#
