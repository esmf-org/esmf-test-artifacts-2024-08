#!/bin/bash -l
#SBATCH --account=s2326
#SBATCH -o /discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop/build.bat_%j.o
#SBATCH -e /discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop/build.bat_%j.e
#SBATCH --time=2:00:00
#SBATCH --partition=compute
#SBATCH --qos=allnccs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake
module load comp/pgi/20.4 

set -x
export ESMF_DIR=/discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop/esmf
export ESMF_COMPILER=pgi
export ESMF_COMM=mpiuni
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop/module-build.log
export WORK_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop
export TEMP_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/pgi_20.4_mpiuni_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 28 2>&1| tee $WORK_ROOT/build.log
