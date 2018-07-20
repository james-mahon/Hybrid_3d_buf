#!/bin/bash

#SBATCH --nodes=1
#SBATCH --time=00:15:00
#SBATCH --qos=testing
#SBATCH --partition=shas
#SBATCH --ntasks=4
#SBATCH --job-name=Simulation
#SBATCH --output=simulation.%j.out
#SBATCH --mail-user=james.mahon@lasp.colorado.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module purge
module load gcc/6.1.0
module load openmpi/1.10.2

./run.sh -d /scratch/summit/jama3001/data -i $SLURM_NTASKS
