#!/bin/bash -l
#PBS -N test.bat
#PBS -l walltime=2:00:00
#PBS -q main
#PBS -A p93300606
#PBS -l select=1:ncpus=128:mpiprocs=128
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

module load ncarenv/23.09 cmake conda/latest
module load intel/2023.2.1 cray-mpich/8.1.27
module load netcdf/4.9.2

set -x
export ESMPY_DATA_DIR="/glade/derecho/scratch/sacks/esmf-testing/esmf-test-data/grids"
export ESMF_MPIRUN=mpiexec
export ESMF_DIR=/glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop/esmf
export ESMF_COMPILER=intel
export ESMF_COMM=mpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop/module-test.log
export WORK_ROOT=/glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop
export TEMP_ROOT=/glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
ssh derecho6 /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop/esmpy_install.bat
cd /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop
conda activate /glade/derecho/scratch/sacks/esmf-testing/conda_environments/esmf-test-scripts-environment-python3.11
. esmpy_venv/bin/activate
cd /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop/esmf/src/addon/esmpy
make test 2>&1| tee /glade/derecho/scratch/sacks/esmf-testing/intel_2023.2.1_mpi_g_develop/esmpy-test.log
deactivate
conda deactivate
