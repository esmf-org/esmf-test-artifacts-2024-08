#!/bin/bash -l
#SBATCH --account=s2326
#SBATCH -o /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop/test.bat_%j.o
#SBATCH -e /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop/test.bat_%j.e
#SBATCH --time=1:00:00
#SBATCH --partition=compute
#SBATCH --qos=allnccs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake
module load comp/gcc/8.3.0 

set -x
export ESMF_DIR=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpiuni
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop/module-test.log
export WORK_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop
export TEMP_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_8.3.0_mpiuni_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
