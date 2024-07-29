#!/bin/bash -l
export JOBID=NO_BATCH
module load CMake/3.24.3
module load AOCC/4.1.0 

set -x
export ESMF_DIR=/home/gerhard/ESMF-Nightly-Testing/gfortranclang_7.5.0_16.0.3_mpiuni_O_develop/esmf
export ESMF_COMPILER=gfortranclang
export ESMF_COMM=mpiuni
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/home/gerhard/ESMF-Nightly-Testing/gfortranclang_7.5.0_16.0.3_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /home/gerhard/ESMF-Nightly-Testing/gfortranclang_7.5.0_16.0.3_mpiuni_O_develop/module-build.log
export WORK_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortranclang_7.5.0_16.0.3_mpiuni_O_develop
export TEMP_ROOT=/home/gerhard/ESMF-Nightly-Testing/gfortranclang_7.5.0_16.0.3_mpiuni_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 4 2>&1| tee $WORK_ROOT/build.log
