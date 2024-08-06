#!/bin/bash -l
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
cd /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmf
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
/Users/sacks/projects/scratch/esmf-testing/esmf-test-scripts/py_env_creation/py_env_create --path /Users/sacks/projects/scratch/esmf-testing/conda_environments --file environment-python3.11.yml
cd /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop
conda activate /Users/sacks/projects/scratch/esmf-testing/conda_environments/esmf-test-scripts-environment-python3.11
rm -rf esmpy_venv
python3 -m venv --system-site-packages esmpy_venv
. esmpy_venv/bin/activate
cd /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmf/src/addon/esmpy
python3 -m pip install . 2>&1| tee /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmpy-install.log
make download 2>&1| tee /Users/sacks/projects/scratch/esmf-testing/gfortranclang_12.2.0_14.0.0_mpiuni_g_develop/esmpy-download.log
deactivate
conda deactivate
