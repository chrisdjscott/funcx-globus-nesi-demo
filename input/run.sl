#!/bin/bash -e
#SBATCH --job-name=funcxnamdtest
#SBATCH --time=00:10:00
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=500
#SBATCH --hint=nomultithread

# load the NAMD environment module
ml purge
ml NAMD/2.12-gimkl-2017a-mpi

# run the simulation
srun namd2 apoa1.namd
