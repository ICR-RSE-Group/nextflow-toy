#!/bin/bash
#SBATCH --job-name=split
#SBATCH --output=work_slurm/split.txt
#
#SBATCH --ntasks=1
#SBATCH --time=1:00:00
#SBATCH --mem-per-cpu=1000


module load gcc/9.3
srun bin/split.py 10 slurm work_slurm/