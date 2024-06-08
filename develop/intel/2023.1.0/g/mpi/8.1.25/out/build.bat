#!/bin/bash -l
#SBATCH --account=e3sm
#SBATCH -o /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/intel_2023.1.0_mpi_g_develop/build.bat_%j.o
#SBATCH -e /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/intel_2023.1.0_mpi_g_develop/build.bat_%j.e
#SBATCH --time=2:00:00
#SBATCH -C cpu
#SBATCH --qos=overrun
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load PrgEnv-intel cpu cmake
module load intel/2023.1.0 cray-mpich/8.1.25
module load cray-hdf5-parallel cray-netcdf-hdf5parallel

set -x
export ESMF_NETCDF_LIBS="-lnetcdff -lnetcdf"
export ESMF_MPILAUNCHOPTIONS=--exact
export ESMF_DIR=/global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/intel_2023.1.0_mpi_g_develop/esmf
export ESMF_COMPILER=intel
export ESMF_COMM=mpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/intel_2023.1.0_mpi_g_develop/module-build.log
export WORK_ROOT=/global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/intel_2023.1.0_mpi_g_develop
export TEMP_ROOT=/tmp/intel_2023.1.0_mpi_g_develop
rsync -a $WORK_ROOT/esmf $TEMP_ROOT
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
set -o pipefail
make info 2>&1| tee $WORK_ROOT/info.log
make -j 128 2>&1| tee $WORK_ROOT/build.log
cd
rsync -a $TEMP_ROOT/esmf $WORK_ROOT
rm -rf $TEMP_ROOT
