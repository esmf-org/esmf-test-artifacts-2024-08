#!/bin/bash -l
#SBATCH --account=s2326
#SBATCH -o /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop/test.bat_%j.o
#SBATCH -e /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop/test.bat_%j.e
#SBATCH --time=1:00:00
#SBATCH --partition=compute
#SBATCH --qos=allnccs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=28
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake
module load comp/gcc/10.1.0 mpi/impi/19.1.3.304

set -x
export ESMF_DIR=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=intelmpi
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop/module-test.log
export WORK_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop
export TEMP_ROOT=/discover/nobackup/projects/sbu/mpotts/esmf-test/gfortran_10.1.0_intelmpi_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
