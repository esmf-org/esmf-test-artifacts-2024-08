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
ESMF_VERSION_STRING_GIT=v8.7.0b07-20-g1e77226def
#----------------------------------------------

ESMF_VERSION_MAJOR=8
ESMF_VERSION_MINOR=7
ESMF_VERSION_REVISION=0
ESMF_VERSION_PATCHLEVEL=0
ESMF_VERSION_PUBLIC='F'
ESMF_VERSION_BETASNAPSHOT='T'


ESMF_APPSDIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/apps/appsO/Darwin.gfortranclang.64.mpich.default
ESMF_LIBSDIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_ESMXDIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/src/addon/ESMX


ESMF_F90COMPILER=mpif90
ESMF_F90LINKER=mpicxx

ESMF_F90COMPILEOPTS=-O -fPIC  -pthread -frecursive -ffree-line-length-none -fno-backtrace
ESMF_F90COMPILEPATHS=-I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/mod/modO/Darwin.gfortranclang.64.mpich.default -I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/src/include -I/opt/homebrew/Cellar/netcdf/4.9.2_1/include -I/opt/homebrew/Cellar/netcdf-fortran/4.6.1/include
ESMF_F90COMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-20-g1e77226def' -DESMF_LOWERCASE_SINGLEUNDERSCORE -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_PIO=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Darwin=1 -DESMF_COMM=mpich -DESMF_DIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf
ESMF_F90COMPILEFREECPP=
ESMF_F90COMPILEFREENOCPP=-ffree-form
ESMF_F90COMPILEFIXCPP=-cpp -ffixed-form
ESMF_F90COMPILEFIXNOCPP=

ESMF_F90LINKOPTS=   -pthread
ESMF_F90LINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -L/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -L/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -L/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../ -L./
ESMF_F90ESMFLINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_F90LINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -Wl,-rpath,/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -Wl,-rpath,/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib  -Wl,-rpath,/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../
ESMF_F90ESMFLINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_F90LINKLIBS= -lmpifort -lm -lc++ -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc
ESMF_F90ESMFLINKLIBS=-lesmf  -lmpifort -lm -lc++ -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc

ESMF_CXXCOMPILER=mpicxx
ESMF_CXXLINKER=mpicxx

ESMF_CXXCOMPILEOPTS=-DESMF_REGRID_DEBUG_WRITE_MESH -DESMFIO_DEBUG -std=c++11 -O -DNDEBUG -fPIC -x c++ -mmacosx-version-min=10.7 -stdlib=libc++ -pthread
ESMF_CXXCOMPILEPATHS= -I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/src/include  -I/opt/homebrew/Cellar/netcdf/4.9.2_1/include -I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/src/prologue/yaml-cpp/include
ESMF_CXXCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-20-g1e77226def' -DESMF_LOWERCASE_SINGLEUNDERSCORE -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_PIO=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Darwin=1 -DESMF_COMM=mpich -DESMF_DIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf -D__SDIR__='' -DESMF_CXXSTD=11

ESMF_CXXLINKOPTS=  -pthread
ESMF_CXXLINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -L/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -L/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -L/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../
ESMF_CXXESMFLINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_CXXLINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -Wl,-rpath,/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -Wl,-rpath,/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib  -Wl,-rpath,/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../
ESMF_CXXESMFLINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_CXXLINKLIBS= -lmpifort -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc
ESMF_CXXESMFLINKLIBS=-lesmf  -lmpifort -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc

ESMF_CCOMPILER=mpicc
ESMF_CLINKER=mpicxx

ESMF_CCOMPILEOPTS=-std=c99 -O -DNDEBUG -fPIC -pthread
ESMF_CCOMPILEPATHS=-I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/src/include   -I/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/build_config/Darwin.gfortranclang.default
ESMF_CCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-20-g1e77226def' -DESMF_LOWERCASE_SINGLEUNDERSCORE -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_PIO=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Darwin=1 -DESMF_COMM=mpich -DESMF_DIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf -D__SDIR__='' -DESMF_CSTD=99

ESMF_CLINKOPTS=  -pthread
ESMF_CLINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -L/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -L/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -L/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../ -L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -L/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -L/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -L/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../ -L./
ESMF_CESMFLINKPATHS=-L/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_CLINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -Wl,-rpath,/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -Wl,-rpath,/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -Wl,-rpath,/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../ -Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default -Wl,-rpath,/opt/homebrew/Cellar/netcdf/4.9.2_1/lib -Wl,-rpath,/opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib -Wl,-rpath,/opt/homebrew/Cellar/gcc/14.1.0/bin/../lib/gcc/current/gcc/aarch64-apple-darwin22/14/../../../ -Wl,-rpath,./
ESMF_CESMFLINKRPATHS=-Wl,-rpath,/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default
ESMF_CLINKLIBS= -lmpifort -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc  -lmpifort -lm -lc++ -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc
ESMF_CESMFLINKLIBS=-lesmf  -lmpifort -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc  -lmpifort -lm -lc++ -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc

ESMF_SO_F90COMPILEOPTS=-fPIC
ESMF_SO_F90LINKOPTS=-shared
ESMF_SO_F90LINKOPTSEXE=
ESMF_SO_CXXCOMPILEOPTS=-fPIC
ESMF_SO_CXXLINKOPTS=-shared
ESMF_SO_CXXLINKOPTSEXE=
ESMF_SO_CCOMPILEOPTS=-fPIC
ESMF_SO_CLINKOPTS=-shared
ESMF_SO_CLINKOPTSEXE=

ESMF_OPENMP_F90COMPILEOPTS= -fopenmp
ESMF_OPENMP_F90LINKOPTS= -fopenmp
ESMF_OPENMP_CXXCOMPILEOPTS= -Xpreprocessor -fopenmp
ESMF_OPENMP_CXXLINKOPTS= -Xpreprocessor -fopenmp

ESMF_OPENACC_F90COMPILEOPTS=
ESMF_OPENACC_F90LINKOPTS=
ESMF_OPENACC_CXXCOMPILEOPTS=
ESMF_OPENACC_CXXLINKOPTS=

# ESMF Tracing compile/link options
ESMF_TRACE_LDPRELOAD=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf/lib/libO/Darwin.gfortranclang.64.mpich.default/libesmftrace_preload.dylib
ESMF_TRACE_STATICLINKOPTS=-static -Wl,--wrap=c_esmftrace_notify_wrappers -Wl,--wrap=c_esmftrace_isinitialized -Wl,--wrap=write -Wl,--wrap=writev -Wl,--wrap=pwrite -Wl,--wrap=read -Wl,--wrap=open -Wl,--wrap=MPI_Allgather -Wl,--wrap=MPI_Allgatherv -Wl,--wrap=MPI_Allreduce -Wl,--wrap=MPI_Alltoall -Wl,--wrap=MPI_Alltoallv -Wl,--wrap=MPI_Alltoallw -Wl,--wrap=MPI_Barrier -Wl,--wrap=MPI_Bcast -Wl,--wrap=MPI_Bsend -Wl,--wrap=MPI_Gather -Wl,--wrap=MPI_Gatherv -Wl,--wrap=MPI_Iprobe -Wl,--wrap=MPI_Irecv -Wl,--wrap=MPI_Irsend -Wl,--wrap=MPI_Isend -Wl,--wrap=MPI_Issend -Wl,--wrap=MPI_Probe -Wl,--wrap=MPI_Recv -Wl,--wrap=MPI_Reduce -Wl,--wrap=MPI_Rsend -Wl,--wrap=MPI_Scan -Wl,--wrap=MPI_Scatter -Wl,--wrap=MPI_Scatterv -Wl,--wrap=MPI_Send -Wl,--wrap=MPI_Sendrecv -Wl,--wrap=MPI_Test -Wl,--wrap=MPI_Testall -Wl,--wrap=MPI_Testany -Wl,--wrap=MPI_Testsome -Wl,--wrap=MPI_Wait -Wl,--wrap=MPI_Waitall -Wl,--wrap=MPI_Waitany -Wl,--wrap=MPI_Waitsome -Wl,--wrap=mpi_allgather_ -Wl,--wrap=mpi_allgather__ -Wl,--wrap=mpi_allgatherv_ -Wl,--wrap=mpi_allgatherv__ -Wl,--wrap=mpi_allreduce_ -Wl,--wrap=mpi_allreduce__ -Wl,--wrap=mpi_alltoall_ -Wl,--wrap=mpi_alltoall__ -Wl,--wrap=mpi_alltoallv_ -Wl,--wrap=mpi_alltoallv__ -Wl,--wrap=mpi_alltoallw_ -Wl,--wrap=mpi_alltoallw__ -Wl,--wrap=mpi_barrier_ -Wl,--wrap=mpi_barrier__ -Wl,--wrap=mpi_bcast_ -Wl,--wrap=mpi_bcast__ -Wl,--wrap=mpi_bsend_ -Wl,--wrap=mpi_bsend__ -Wl,--wrap=mpi_exscan_ -Wl,--wrap=mpi_exscan__ -Wl,--wrap=mpi_gather_ -Wl,--wrap=mpi_gather__ -Wl,--wrap=mpi_gatherv_ -Wl,--wrap=mpi_gatherv__ -Wl,--wrap=mpi_iprobe_ -Wl,--wrap=mpi_iprobe__ -Wl,--wrap=mpi_irecv_ -Wl,--wrap=mpi_irecv__ -Wl,--wrap=mpi_irsend_ -Wl,--wrap=mpi_irsend__ -Wl,--wrap=mpi_isend_ -Wl,--wrap=mpi_isend__ -Wl,--wrap=mpi_issend_ -Wl,--wrap=mpi_issend__ -Wl,--wrap=mpi_probe_ -Wl,--wrap=mpi_probe__ -Wl,--wrap=mpi_recv_ -Wl,--wrap=mpi_recv__ -Wl,--wrap=mpi_reduce_ -Wl,--wrap=mpi_reduce__ -Wl,--wrap=mpi_reduce_scatter_ -Wl,--wrap=mpi_reduce_scatter__ -Wl,--wrap=mpi_rsend_ -Wl,--wrap=mpi_rsend__ -Wl,--wrap=mpi_scatter_ -Wl,--wrap=mpi_scatter__ -Wl,--wrap=mpi_scatterv_ -Wl,--wrap=mpi_scatterv__ -Wl,--wrap=mpi_scan_ -Wl,--wrap=mpi_scan__ -Wl,--wrap=mpi_send_ -Wl,--wrap=mpi_send__ -Wl,--wrap=mpi_sendrecv_ -Wl,--wrap=mpi_sendrecv__ -Wl,--wrap=mpi_test_ -Wl,--wrap=mpi_test__ -Wl,--wrap=mpi_testall_ -Wl,--wrap=mpi_testall__ -Wl,--wrap=mpi_testany_ -Wl,--wrap=mpi_testany__ -Wl,--wrap=mpi_testsome_ -Wl,--wrap=mpi_testsome__ -Wl,--wrap=mpi_wait_ -Wl,--wrap=mpi_wait__ -Wl,--wrap=mpi_waitall_ -Wl,--wrap=mpi_waitall__ -Wl,--wrap=mpi_waitany_ -Wl,--wrap=mpi_waitany__
ESMF_TRACE_STATICLINKLIBS=-lesmftrace_static
ESMF_TRACE_DYNAMICLINKLIBS=-lesmftrace_preload
ESMF_F90ESMFPRELOADLINKLIBS=-lesmf -lesmftrace_preload  -lmpifort -lm -lc++ -lgfortran -lnetcdf -lnetcdff -lnetcdf -lnetcdf -lpioc

# Internal ESMF variables, do NOT depend on these!

ESMF_INTERNAL_DIR=/Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf
ESMF_INTERNAL_MPIRUN="mpirun "

#
# !!! The following options were used on this ESMF build !!!
#
# ESMF_DIR: /Users/oehmke/ESMF_AutoTest/gfortranclang_12.2.0_14.0.0_mpich_O_develop/esmf
# ESMF_OS: Darwin
# ESMF_MACHINE: arm64
# ESMF_ABI: 64
# ESMF_COMPILER: gfortranclang
# ESMF_BOPT: O
# ESMF_COMM: mpich
# ESMF_SITE: default
# ESMF_PTHREADS: ON
# ESMF_OPENMP: OFF
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
# ESMF_NETCDF_INCLUDE:    /opt/homebrew/Cellar/netcdf/4.9.2_1/include
# ESMF_NETCDF_LIBS:       -lnetcdf
# ESMF_NETCDF_LIBPATH:    /opt/homebrew/Cellar/netcdf/4.9.2_1/lib
# ESMF_NFCONFIG:          nf-config
# ESMF_NETCDFF_INCLUDE:   /opt/homebrew/Cellar/netcdf-fortran/4.6.1/include
# ESMF_NETCDFF_LIBS:      -lnetcdff -lnetcdf -lnetcdf
# ESMF_NETCDFF_LIBPATH:   /opt/homebrew/Cellar/netcdf-fortran/4.6.1/lib
# ESMF_PIO:               internal
# ESMF_PIO_LIBS:          -lpioc
# ESMF_YAMLCPP:           internal
#
# * Compilers, Linkers, Flags, and Libraries *
# Location of the preprocessor:      /usr/bin/clang
# Location of the Fortran compiler:  /opt/homebrew/bin/mpif90
# Location of the Fortran linker:    /opt/homebrew/bin/mpicxx
# Location of the C++ compiler:      /opt/homebrew/bin/mpicxx
# Location of the C++ linker:        /opt/homebrew/bin/mpicxx
# Location of the C compiler:        /opt/homebrew/bin/mpicc
# Location of the C linker:          /opt/homebrew/bin/mpicxx
#
