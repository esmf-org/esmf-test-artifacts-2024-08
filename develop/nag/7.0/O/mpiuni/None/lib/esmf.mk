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
ESMF_VERSION_STRING_GIT=v8.7.0b07-3-g03d0eb5fc0
#----------------------------------------------

ESMF_VERSION_MAJOR=8
ESMF_VERSION_MINOR=7
ESMF_VERSION_REVISION=0
ESMF_VERSION_PATCHLEVEL=0
ESMF_VERSION_PUBLIC='F'
ESMF_VERSION_BETASNAPSHOT='T'


ESMF_APPSDIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/apps/appsO/Linux.nag.64.mpiuni.default
ESMF_LIBSDIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_ESMXDIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/addon/ESMX


ESMF_F90COMPILER=nagfor
ESMF_F90LINKER=nagfor

ESMF_F90COMPILEOPTS=-O0 -pic -DESMF_NAG_UNIX_MODULE -dusty -thread_safe
ESMF_F90COMPILEPATHS=-I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/mod/modO/Linux.nag.64.mpiuni.default -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/include -I/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/include -I/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/include
ESMF_F90COMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-3-g03d0eb5fc0' -DESMF_MPIUNI -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=mpiuni -DESMF_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf -DESMF_NO_F2018ASSUMEDTYPE
ESMF_F90COMPILEFREECPP=
ESMF_F90COMPILEFREENOCPP=-free
ESMF_F90COMPILEFIXCPP=-fixed -fpp
ESMF_F90COMPILEFIXNOCPP=

ESMF_F90LINKOPTS=  -thread_safe -Wl,-Wl,,--no-as-needed
ESMF_F90LINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib -L/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/../../../../lib64/
ESMF_F90ESMFLINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_F90LINKRPATHS=-Wl,-Wl,,-rpath,,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -Wl,-Wl,,-rpath,,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-Wl,,-rpath,,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-Wl,,-rpath,,/usr/local/gcc-g++-gfortran-9.3.0/lib -Wl,-Wl,,-rpath,,/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -Wl,-Wl,,-rpath,,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-Wl,,-rpath,,/usr/local/gcc-g++-gfortran-9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/../../../../lib64/
ESMF_F90ESMFLINKRPATHS=-Wl,-Wl,,-rpath,,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_F90LINKLIBS= -lrt -lstdc++ -ldl -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a
ESMF_F90ESMFLINKLIBS=-lesmf  -lrt -lstdc++ -ldl -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a

ESMF_CXXCOMPILER=g++
ESMF_CXXLINKER=g++

ESMF_CXXCOMPILEOPTS=-std=c++11 -O0 -DNDEBUG -fPIC -pthread
ESMF_CXXCOMPILEPATHS= -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/include  -I/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/include -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/prologue/yaml-cpp/include
ESMF_CXXCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-3-g03d0eb5fc0' -DESMF_MPIUNI -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=mpiuni -DESMF_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf -D__SDIR__='' -DESMF_CXXSTD=11 -DESMF_NO_F2018ASSUMEDTYPE

ESMF_CXXLINKOPTS=  -pthread -Wl,--no-as-needed
ESMF_CXXLINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib -L/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib
ESMF_CXXESMFLINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_CXXLINKRPATHS=-Wl,-rpath,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib
ESMF_CXXESMFLINKRPATHS=-Wl,-rpath,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_CXXLINKLIBS= -lrt -ldl -m64 /usr/local/nag-7.0/lib/NAG_Fortran/quickfit.o -Wl,-rpath,/usr/local/nag-7.0/lib/NAG_Fortran /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.so /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.a -lm -lpthread -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a
ESMF_CXXESMFLINKLIBS=-lesmf  -lrt -ldl -m64 /usr/local/nag-7.0/lib/NAG_Fortran/quickfit.o -Wl,-rpath,/usr/local/nag-7.0/lib/NAG_Fortran /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.so /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.a -lm -lpthread -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a

ESMF_CCOMPILER=gcc
ESMF_CLINKER=gcc

ESMF_CCOMPILEOPTS=-std=c99 -O0 -DNDEBUG -fPIC
ESMF_CCOMPILEPATHS=-I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/include   -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/build_config/Linux.nag.default
ESMF_CCOMPILECPPFLAGS=-DESMF_NO_INTEGER_1_BYTE -DESMF_NO_INTEGER_2_BYTE -DESMF_VERSION_STRING_GIT='v8.7.0b07-3-g03d0eb5fc0' -DESMF_MPIUNI -I/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni -DESMF_MOAB=1 -DESMF_LAPACK=1 -DESMF_LAPACK_INTERNAL=1 -DESMF_NO_ACC_SOFTWARE_STACK=1 -DESMF_NETCDF=1 -DESMF_YAMLCPP=1 -DESMF_YAML=1 -DESMF_NO_OPENMP -DESMF_NO_OPENACC -DESMF_TESTEXHAUSTIVE -DESMF_BOPT_O -DESMF_TESTPERFORMANCE -DESMF_TESTCOMPTUNNEL -DESMF_TESTWITHTHREADS -DS64=1 -DESMF_OS_Linux=1 -DESMF_COMM=mpiuni -DESMF_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf -D__SDIR__='' -DESMF_CSTD=99

ESMF_CLINKOPTS= 
ESMF_CLINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib -L/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib -L/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -L/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -L/usr/local/gcc-g++-gfortran-9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/../../../../lib64/
ESMF_CESMFLINKPATHS=-L/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_CLINKRPATHS=-Wl,-rpath,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib -Wl,-rpath,/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib -Wl,-rpath,/usr/local/gcc-g++-gfortran-9.3.0/lib/gcc/x86_64-pc-linux-gnu/9.3.0/../../../../lib64/
ESMF_CESMFLINKRPATHS=-Wl,-rpath,/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default
ESMF_CLINKLIBS= -lrt -ldl -m64 /usr/local/nag-7.0/lib/NAG_Fortran/quickfit.o -Wl,-rpath,/usr/local/nag-7.0/lib/NAG_Fortran /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.so /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.a -lm -lpthread -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a  -lrt -lstdc++ -ldl -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a
ESMF_CESMFLINKLIBS=-lesmf  -lrt -ldl -m64 /usr/local/nag-7.0/lib/NAG_Fortran/quickfit.o -Wl,-rpath,/usr/local/nag-7.0/lib/NAG_Fortran /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.so /usr/local/nag-7.0/lib/NAG_Fortran/libf70rts.a -lm -lpthread -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a  -lrt -lstdc++ -ldl -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a

ESMF_SO_F90COMPILEOPTS=-pic
ESMF_SO_F90LINKOPTS=
ESMF_SO_F90LINKOPTSEXE=
ESMF_SO_CXXCOMPILEOPTS=-fPIC
ESMF_SO_CXXLINKOPTS=
ESMF_SO_CXXLINKOPTSEXE=
ESMF_SO_CCOMPILEOPTS=-fPIC
ESMF_SO_CLINKOPTS=
ESMF_SO_CLINKOPTSEXE=

ESMF_OPENMP_F90COMPILEOPTS= -openmp
ESMF_OPENMP_F90LINKOPTS= -openmp
ESMF_OPENMP_CXXCOMPILEOPTS= -fopenmp
ESMF_OPENMP_CXXLINKOPTS= -fopenmp

ESMF_OPENACC_F90COMPILEOPTS=
ESMF_OPENACC_F90LINKOPTS=
ESMF_OPENACC_CXXCOMPILEOPTS=
ESMF_OPENACC_CXXLINKOPTS=

# ESMF Tracing compile/link options
ESMF_TRACE_LDPRELOAD=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/lib/libO/Linux.nag.64.mpiuni.default/libesmftrace_preload.so
ESMF_TRACE_STATICLINKOPTS=-static -Wl,--wrap=c_esmftrace_notify_wrappers -Wl,--wrap=c_esmftrace_isinitialized -Wl,--wrap=write -Wl,--wrap=writev -Wl,--wrap=pwrite -Wl,--wrap=read -Wl,--wrap=open -Wl,--wrap=MPI_Allgather -Wl,--wrap=MPI_Allgatherv -Wl,--wrap=MPI_Allreduce -Wl,--wrap=MPI_Alltoall -Wl,--wrap=MPI_Alltoallv -Wl,--wrap=MPI_Alltoallw -Wl,--wrap=MPI_Barrier -Wl,--wrap=MPI_Bcast -Wl,--wrap=MPI_Bsend -Wl,--wrap=MPI_Gather -Wl,--wrap=MPI_Gatherv -Wl,--wrap=MPI_Iprobe -Wl,--wrap=MPI_Irecv -Wl,--wrap=MPI_Irsend -Wl,--wrap=MPI_Isend -Wl,--wrap=MPI_Issend -Wl,--wrap=MPI_Probe -Wl,--wrap=MPI_Recv -Wl,--wrap=MPI_Reduce -Wl,--wrap=MPI_Rsend -Wl,--wrap=MPI_Scan -Wl,--wrap=MPI_Scatter -Wl,--wrap=MPI_Scatterv -Wl,--wrap=MPI_Send -Wl,--wrap=MPI_Sendrecv -Wl,--wrap=MPI_Test -Wl,--wrap=MPI_Testall -Wl,--wrap=MPI_Testany -Wl,--wrap=MPI_Testsome -Wl,--wrap=MPI_Wait -Wl,--wrap=MPI_Waitall -Wl,--wrap=MPI_Waitany -Wl,--wrap=MPI_Waitsome -Wl,--wrap=mpi_allgather_ -Wl,--wrap=mpi_allgather__ -Wl,--wrap=mpi_allgatherv_ -Wl,--wrap=mpi_allgatherv__ -Wl,--wrap=mpi_allreduce_ -Wl,--wrap=mpi_allreduce__ -Wl,--wrap=mpi_alltoall_ -Wl,--wrap=mpi_alltoall__ -Wl,--wrap=mpi_alltoallv_ -Wl,--wrap=mpi_alltoallv__ -Wl,--wrap=mpi_alltoallw_ -Wl,--wrap=mpi_alltoallw__ -Wl,--wrap=mpi_barrier_ -Wl,--wrap=mpi_barrier__ -Wl,--wrap=mpi_bcast_ -Wl,--wrap=mpi_bcast__ -Wl,--wrap=mpi_bsend_ -Wl,--wrap=mpi_bsend__ -Wl,--wrap=mpi_exscan_ -Wl,--wrap=mpi_exscan__ -Wl,--wrap=mpi_gather_ -Wl,--wrap=mpi_gather__ -Wl,--wrap=mpi_gatherv_ -Wl,--wrap=mpi_gatherv__ -Wl,--wrap=mpi_iprobe_ -Wl,--wrap=mpi_iprobe__ -Wl,--wrap=mpi_irecv_ -Wl,--wrap=mpi_irecv__ -Wl,--wrap=mpi_irsend_ -Wl,--wrap=mpi_irsend__ -Wl,--wrap=mpi_isend_ -Wl,--wrap=mpi_isend__ -Wl,--wrap=mpi_issend_ -Wl,--wrap=mpi_issend__ -Wl,--wrap=mpi_probe_ -Wl,--wrap=mpi_probe__ -Wl,--wrap=mpi_recv_ -Wl,--wrap=mpi_recv__ -Wl,--wrap=mpi_reduce_ -Wl,--wrap=mpi_reduce__ -Wl,--wrap=mpi_reduce_scatter_ -Wl,--wrap=mpi_reduce_scatter__ -Wl,--wrap=mpi_rsend_ -Wl,--wrap=mpi_rsend__ -Wl,--wrap=mpi_scatter_ -Wl,--wrap=mpi_scatter__ -Wl,--wrap=mpi_scatterv_ -Wl,--wrap=mpi_scatterv__ -Wl,--wrap=mpi_scan_ -Wl,--wrap=mpi_scan__ -Wl,--wrap=mpi_send_ -Wl,--wrap=mpi_send__ -Wl,--wrap=mpi_sendrecv_ -Wl,--wrap=mpi_sendrecv__ -Wl,--wrap=mpi_test_ -Wl,--wrap=mpi_test__ -Wl,--wrap=mpi_testall_ -Wl,--wrap=mpi_testall__ -Wl,--wrap=mpi_testany_ -Wl,--wrap=mpi_testany__ -Wl,--wrap=mpi_testsome_ -Wl,--wrap=mpi_testsome__ -Wl,--wrap=mpi_wait_ -Wl,--wrap=mpi_wait__ -Wl,--wrap=mpi_waitall_ -Wl,--wrap=mpi_waitall__ -Wl,--wrap=mpi_waitany_ -Wl,--wrap=mpi_waitany__
ESMF_TRACE_STATICLINKLIBS=-lesmftrace_static
ESMF_TRACE_DYNAMICLINKLIBS=-lesmftrace_preload
ESMF_F90ESMFPRELOADLINKLIBS=-lesmf -lesmftrace_preload  -lrt -lstdc++ -ldl -lnetcdf /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a

# Internal ESMF variables, do NOT depend on these!

ESMF_INTERNAL_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf
ESMF_INTERNAL_MPIRUN="/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun"

#
# !!! The following options were used on this ESMF build !!!
#
# ESMF_DIR: /scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf
# ESMF_OS: Linux
# ESMF_MACHINE: x86_64
# ESMF_ABI: 64
# ESMF_COMPILER: nag
# ESMF_BOPT: O
# ESMF_OPTLEVEL: 0
# ESMF_COMM: mpiuni
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
# ESMF_NETCDF_INCLUDE:    /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/include
# ESMF_NETCDF_LIBS:       -lnetcdf
# ESMF_NETCDF_LIBPATH:    /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib
# ESMF_NFCONFIG:          nf-config
# ESMF_NETCDFF_INCLUDE:   /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/include
# ESMF_NETCDFF_LIBS:      /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a
# ESMF_NETCDFF_LIBPATH:   /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib /usr/local/gcc-g++-gfortran-9.3.0/lib /usr/local/hdf5-1.12.0-gcc-g++-gfortran-9.3.0/lib /usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib
# ESMF_YAMLCPP:           internal
#
# * Compilers, Linkers, Flags, and Libraries *
# Location of the preprocessor:      /usr/local/gcc-g++-gfortran-9.3.0/bin/gcc
# Location of the Fortran compiler:  /usr/local/nag-7.0/bin/nagfor
# Location of the Fortran linker:    /usr/local/nag-7.0/bin/nagfor
# Location of the C++ compiler:      /usr/local/gcc-g++-gfortran-9.3.0/bin/g++
# Location of the C++ linker:        /usr/local/gcc-g++-gfortran-9.3.0/bin/g++
# Location of the C compiler:        /usr/local/gcc-g++-gfortran-9.3.0/bin/gcc
# Location of the C linker:          /usr/local/gcc-g++-gfortran-9.3.0/bin/gcc
#
