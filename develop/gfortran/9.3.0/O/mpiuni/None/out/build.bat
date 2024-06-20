#!/bin/bash -l
#PBS -N build.bat
#PBS -l walltime=1:00:00
#PBS -q medium
#PBS -A UNUSED
#PBS -l nodes=1:ppn=48
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

module load compiler/gnu/9.3.0 
module load tool/netcdf/4.7.4/gnu/9.3.0

set -x
export ESMF_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/gfortran_9.3.0_mpiuni_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpiuni
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/scratch/cluster/theurich/ESMF-Nightly-Testing/gfortran_9.3.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /scratch/cluster/theurich/ESMF-Nightly-Testing/gfortran_9.3.0_mpiuni_O_develop/module-build.log
export WORK_ROOT=/scratch/cluster/theurich/ESMF-Nightly-Testing/gfortran_9.3.0_mpiuni_O_develop
export TEMP_ROOT=/scratch/cluster/theurich/ESMF-Nightly-Testing/gfortran_9.3.0_mpiuni_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 48 2>&1| tee $WORK_ROOT/build.log
