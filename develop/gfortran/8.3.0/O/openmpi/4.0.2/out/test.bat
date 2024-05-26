#!/bin/bash -l
#SBATCH --account=da-cpu
#SBATCH -o /work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop/test.bat_%j.o
#SBATCH -e /work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop/test.bat_%j.e
#SBATCH --time=2:00:00
#SBATCH --partition=orion
#SBATCH --qos=batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake intelpython3
module load gcc/8.3.0 openmpi/4.0.2
module load netcdf/4.7.4

set -x
export LD_PRELOAD=/apps/gcc-8/gcc-8.3.0/lib64/libstdc++.so
export ESMF_MPIRUN=mpirun.srun
export ESMF_DIR=/work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=openmpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='O'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop/module-test.log
export WORK_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop
export TEMP_ROOT=/work/noaa/da/mpotts/sandbox/gfortran_8.3.0_openmpi_O_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
