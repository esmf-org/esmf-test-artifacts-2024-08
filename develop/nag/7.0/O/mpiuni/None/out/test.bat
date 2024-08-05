#!/bin/bash -l
#PBS -N test.bat
#PBS -l walltime=3:00:00
#PBS -q medium
#PBS -A UNUSED
#PBS -l nodes=1:ppn=48
JOBID="`echo $PBS_JOBID | cut -d. -f1`"

module load compiler/nag/7.0 
module load tool/netcdf/c4.7.4-f4.5.2/nag-gnu/7.0-9.3.0

set -x
export ESMF_NETCDFF_LIBS=/usr/local/netcdf-c-4.7.4-f-4.5.2-gcc-g++-9.3.0-nag-7.0/lib/libnetcdff.a
export ESMF_DIR=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf
export ESMF_COMPILER=nag
export ESMF_COMM=mpiuni
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
export ESMF_MPIRUN=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/esmf/src/Infrastructure/stubs/mpiuni/mpirun
module list >& /scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop/module-test.log
export WORK_ROOT=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop
export TEMP_ROOT=/scratch/cluster/theurich/ESMF-Nightly-Testing/nag_7.0_mpiuni_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
