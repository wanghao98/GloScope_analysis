#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --nodes=1

#SBATCH --mail-user=wtorous@berkeley.edu
#SBATCH --mail-type=ALL

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
R CMD BATCH --no-save Code/Process_Datasets/process_liuRash31_default_run.R Code/Process_Datasets/process_liuRash31_default.out
