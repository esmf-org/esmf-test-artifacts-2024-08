#!/bin/bash -l
module load ncarenv/23.09 cmake conda/latest
module load intel/2023.2.1 cray-mpich/8.1.27
module load netcdf/4.9.2

set -x
export ESMPY_DATA_DIR="/glade/derecho/scratch/sacks/esmf-testing/esmf-test-data/grids"
export ESMF_MPIRUN=mpiexec
export ESMF_DIR=/glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop/esmf
export ESMF_COMPILER=intel
export ESMF_COMM=mpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
cd /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop/esmf
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
/glade/derecho/scratch/sacks/esmf-testing/esmf-test-scripts/py_env_creation/py_env_create --path /glade/derecho/scratch/sacks/esmf-testing/conda_environments --file environment-python3.11.yml
cd /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop
conda activate /glade/derecho/scratch/sacks/esmf-testing/conda_environments/esmf-test-scripts-environment-python3.11
rm -rf esmpy_venv
python3 -m venv --system-site-packages esmpy_venv
. esmpy_venv/bin/activate
cd /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop/esmf/src/addon/esmpy
python3 -m pip install . 2>&1| tee /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop/esmpy-install.log
make download 2>&1| tee /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_O_develop/esmpy-download.log
deactivate
conda deactivate
