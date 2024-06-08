#!/bin/bash -l
#SBATCH --account=e3sm
#SBATCH -o /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/gfortran_11.2.0_mpi_g_develop/test.bat_%j.o
#SBATCH -e /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/gfortran_11.2.0_mpi_g_develop/test.bat_%j.e
#SBATCH --time=4:00:00
#SBATCH -C cpu
#SBATCH --qos=overrun
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --exclusive
export JOBID=$SLURM_JOBID


module load PrgEnv-gnu cpu cmake
module load gcc/11.2.0 cray-mpich/8.1.22
module load cray-hdf5-parallel cray-netcdf-hdf5parallel

set -x
export ESMF_NETCDF_LIBS="-lnetcdff -lnetcdf"
export ESMF_MPILAUNCHOPTIONS=--exact
export ESMF_DIR=/global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/gfortran_11.2.0_mpi_g_develop/esmf
export ESMF_COMPILER=gfortran
export ESMF_COMM=mpi
export ESMF_NETCDF=nc-config
export ESMF_BOPT='g'
export ESMF_TESTEXHAUSTIVE='ON'
export ESMF_TESTWITHTHREADS='ON'
module list >& /global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/gfortran_11.2.0_mpi_g_develop/module-test.log
export WORK_ROOT=/global/cfs/cdirs/e3sm/theurich/ESMF-Nightly-Testing/gfortran_11.2.0_mpi_g_develop
export TEMP_ROOT=/tmp/gfortran_11.2.0_mpi_g_develop
rsync -a $WORK_ROOT/esmf $TEMP_ROOT
rsync -a $WORK_ROOT/nuopc-app-prototypes $TEMP_ROOT
cd $TEMP_ROOT/esmf
export ESMF_DIR=`pwd`
make install 2>&1| tee $WORK_ROOT/install.log
make all_tests 2>&1| tee $WORK_ROOT/test.log
export ESMFMKFILE=`find $PWD/DEFAULTINSTALLDIR -iname esmf.mk`
cd ../nuopc-app-prototypes
./testProtos.sh 2>&1| tee $WORK_ROOT/nuopc.log
cd
rsync -a $TEMP_ROOT/esmf $WORK_ROOT
rsync -a $TEMP_ROOT/nuopc-app-prototypes $WORK_ROOT
rm -rf $TEMP_ROOT
