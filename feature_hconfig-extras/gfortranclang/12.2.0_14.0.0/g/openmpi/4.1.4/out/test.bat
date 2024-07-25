#!/bin/bash -l
export JOBID=NO_BATCH
module load gfortran-12.2.0_clang-14.0.0 4.1.4
module load netcdf-4.9.0

set -x
export ESMF_TESTPERFORMANCE=OFF
export ESMPY_DATA_DIR="/Users/sacks/projects/scratch/esmf-testing/esmf-test-data/grids"
export ESMF_DIR=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras/esmf
export ESMF_COMPILER=gfortranclang
export ESMF_COMM=openmpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras/module-test.log
export WORK_ROOT=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras
export TEMP_ROOT=/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
/Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras/esmpy_install.bat
cd /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras
conda activate /Users/sacks/projects/scratch/esmf-testing/conda_environments/esmf-test-scripts-environment-python3.11
. esmpy_venv/bin/activate
cd /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras/esmf/src/addon/esmpy
make test 2>&1| tee /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_openmpi_g_feature_hconfig-extras/esmpy-test.log
deactivate
conda deactivate
