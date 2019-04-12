#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J Prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com
# Load modules
module load bioinfo-tools
module load prokka

# Your commands
prokka Enterococci.contigs.fasta
