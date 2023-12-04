#!/bin/bash

# Clean
make clean

# Compile
make

# Run SLURM batch
sbatch cfd.slurm

# Sleep 5 second until batch is complete.
sleep 5
