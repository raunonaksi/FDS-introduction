#!/bin/bash
 
#SBATCH -N 24
#SBATCH -t 00:30:00

#SBATCH -J FDS_RAUNO
#SBATCH --mail-user=b04903@ut.ee
# send a notification for job abort, begin and end
#SBATCH --mail-type=all

module load openmpi-1.8.4
mpirun -np 24 /gpfs/hpchome/b04903/FDS/FDS6/bin/fds rehiMesh24.fds
