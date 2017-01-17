#!/bin/bash
 
#SBATCH -N 2
::SBATCH --sockets-per-node=2
::SBATCH --cores-per-socket=10
::SBATCH --mem=60000
#SBATCH -t 01:00:00

#SBATCH -J FDS_RAUNO
#SBATCH --mail-user=b04903@ut.ee
# send a notification for job abort, begin and end
#SBATCH --mail-type=all

module load openmpi-1.8.4
mpirun -np 2 /gpfs/hpchome/b04903/FDS/FDS6/bin/fds rehiMesh2.fds
