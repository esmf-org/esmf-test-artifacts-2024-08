#!/bin/bash -l
export JOBID=NO_BATCH
module load CMake/3.24.3
module load AOCC/4.1.0 

set -x
export ESMF_DIR=/home/gerhard/ESMF-Nightly-Testing/aocc_4.1.0_mpiuni_g_develop/esmf
export ESMF_COMPILER=aocc
export ESMF_COMM=mpiuni
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/home/gerhard/ESMF-Nightly-Testing/aocc_4.1.0_mpiuni_g_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /home/gerhard/ESMF-Nightly-Testing/aocc_4.1.0_mpiuni_g_develop/module-test.log
export WORK_ROOT=/home/gerhard/ESMF-Nightly-Testing/aocc_4.1.0_mpiuni_g_develop
export TEMP_ROOT=/home/gerhard/ESMF-Nightly-Testing/aocc_4.1.0_mpiuni_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
