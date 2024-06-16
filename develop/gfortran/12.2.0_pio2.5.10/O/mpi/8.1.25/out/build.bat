#!/bin/bash -l
#PBS -N build.bat
#PBS -l walltime=2:00:00
#PBS -q main
#PBS -A p93300606
#PBS -l select=1:ncpus=128:mpiprocs=128
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

module load ncarenv/23.06 gcc/12.2.0 cray-mpich/8.1.25 cmake parallelio/2.5.10
module load gcc/12.2.0 cray-mpich/8.1.25
module load netcdf/4.9.2

set -x
export ESMF_MPIRUN=mpiexec
export ESMF_PIO=external
export ESMF_PIO_INCLUDE="$PIO/include"
export ESMF_PIO_LIBPATH="$PIO/lib"
export ESMF_DIR=/glade/derecho/scratch/sacks/esmf-testing/gfortran_12.2.0_pio2.5.10_mpi_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /glade/derecho/scratch/sacks/esmf-testing/gfortran_12.2.0_pio2.5.10_mpi_O_develop/module-build.log
export WORK_ROOT=/glade/derecho/scratch/sacks/esmf-testing/gfortran_12.2.0_pio2.5.10_mpi_O_develop
export TEMP_ROOT=/glade/derecho/scratch/sacks/esmf-testing/gfortran_12.2.0_pio2.5.10_mpi_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 128 2>&1| tee $WORK_ROOT/build.log
