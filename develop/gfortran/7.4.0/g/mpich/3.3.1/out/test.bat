#!/bin/bash -l
export JOBID=NO_BATCH
module load CMake/3.24.3
module load GCC/7.4.0/GCC GCC/7.4.0/mpich/3.3.1
module load GCC/7.4.0/netcdf/4.7.4p

set -x
export ESMF_DIR=/home/gerhard/ESMF-Nightly-Testing/gfortran_7.4.0_mpich_g_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpich
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /home/gerhard/ESMF-Nightly-Testing/gfortran_7.4.0_mpich_g_develop/module-test.log
export WORK_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_7.4.0_mpich_g_develop
export TEMP_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_7.4.0_mpich_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
