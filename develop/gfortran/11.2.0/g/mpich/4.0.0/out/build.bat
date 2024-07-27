#!/bin/bash -l
export JOBID=NO_BATCH
module load CMake/3.24.3
module load GCC/11.2.0/GCC GCC/11.2.0/mpich/4.0.0
module load GCC/11.2.0/netcdf/4.7.4-mpich4.0.0

set -x
export ESMF_DIR=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_g_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpich
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_g_develop/module-build.log
export WORK_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_g_develop
export TEMP_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 4 2>&1| tee $WORK_ROOT/build.log
