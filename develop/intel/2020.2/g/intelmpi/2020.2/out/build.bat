#!/bin/bash -l
#SBATCH --account=da-cpu
#SBATCH -o /work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop/build.bat_%j.o
#SBATCH -e /work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop/build.bat_%j.e
#SBATCH --time=1:00:00
#SBATCH --partition=orion
#SBATCH --qos=batch
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=40
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load cmake intelpython3
module load intel/2020.2 impi/2020.2
module load netcdf/4.7.4

set -x
export ESMF_MPIRUN=mpirun.srun
export ESMF_DIR=/work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop/esmf
export ESMF_COMPILER=intel
export ESMF_COMM=intelmpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop/module-build.log
export WORK_ROOT=/work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop
export TEMP_ROOT=/work/noaa/da/mpotts/sandbox/intel_2020.2_intelmpi_g_develop
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 40 2>&1| tee $WORK_ROOT/build.log
