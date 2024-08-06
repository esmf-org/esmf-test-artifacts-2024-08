#!/bin/bash -l
export JOBID=NO_BATCH
module load gfortran-12.2.0_clang-14.0.0 
module load netcdf-4.9.0

set -x
export ESMF_TESTPERFORMANCE=OFF
export ESMPY_DATA_DIR="/Users/sacks/projects/scratch/esmf-testing/esmf-test-data/grids"
export ESMF_TEST_NUOPC_JULIA=ON
export ESMF_DIR=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmf
export ESMF_COMPILER=gfortranclang
export ESMF_COMM=mpiuni
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/module-build.log
export WORK_ROOT=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop
export TEMP_ROOT=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 8 2>&1| tee $WORK_ROOT/build.log
