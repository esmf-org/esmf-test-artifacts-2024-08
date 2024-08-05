#!/bin/bash -l
export JOBID=NO_BATCH
module load CMake/3.24.3
module load GCC/11.2.0/GCC GCC/11.2.0/mpich/4.0.0
module load GCC/11.2.0/netcdf/4.7.4-mpich4.0.0

set -x
export ESMF_DIR=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpich
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_O_develop/module-test.log
export WORK_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_O_develop
export TEMP_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortran_11.2.0_mpich_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
