#!/bin/bash

#SBATCH --nodes=1
#SBATCH --time=00:15:00
#SBATCH --qos=testing
#SBATCH --partition=shas-testing
#SBATCH --ntasks=4
#SBATCH --job-name=Simulation
#SBATCH --output=simulation.%j.out
#SBATCH --mail-user=james.mahon@lasp.colorado.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

module purge
module load intel/17.4
module load impi/17.3

./run.sh -d /scratch/summit/jama3001/data -i $SLURM_NTASKS
