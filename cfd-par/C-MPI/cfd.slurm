#!/bin/bash

# Slurm job options (name, compute nodes, job time)
#SBATCH --job-name=cfd_parallel
#SBATCH --time=0:05:0
#SBATCH --nodes=4
#SBATCH --exclusive
#SBATCH --tasks-per-node=36
#SBATCH --account=m23ol-s2614914
#SBATCH --partition=standard
#SBATCH --qos=standard

# Load the default HPE MPI environment and Intel compilers
module load intel-compilers-19
module load mpt

# Change to the submission directory
cd $SLURM_SUBMIT_DIR

# Set the number of threads to 1
#   This prevents any threaded system libraries from automatically
#   using threading.
export OMP_NUM_THREADS=1
 
# Launch the serial job
#   Using 1 thread
srun ./cfd 32 5000
