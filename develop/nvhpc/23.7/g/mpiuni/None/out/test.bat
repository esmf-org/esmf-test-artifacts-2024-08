#!/bin/bash -l
#PBS -N test.bat
#PBS -l walltime=2:00:00
#PBS -q main
#PBS -A p93300606
#PBS -l select=1:ncpus=128:mpiprocs=128
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

module load ncarenv/23.09 cmake
module load nvhpc/23.7 
module load netcdf/4.9.2

set -x
export ESMF_DIR=/glade/derecho/scratch/sacks/esmf-testing/nvhpc_23.7_mpiuni_g_develop/esmf
export ESMF_COMPILER=nvhpc
export ESMF_COMM=mpiuni
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/glade/derecho/scratch/sacks/esmf-testing/nvhpc_23.7_mpiuni_g_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /glade/derecho/scratch/sacks/esmf-testing/nvhpc_23.7_mpiuni_g_develop/module-test.log
export WORK_ROOT=/glade/derecho/scratch/sacks/esmf-testing/nvhpc_23.7_mpiuni_g_develop
export TEMP_ROOT=/glade/derecho/scratch/sacks/esmf-testing/nvhpc_23.7_mpiuni_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
