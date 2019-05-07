#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J Canu_PacBio
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com
# Load modules
module load bioinfo-tools
module load canu

# Your commands
canu \
-p Enterococci -d Canu_Assembly_Output_Pacbio \
genomeSize=2.8m \
-pacbio-raw /proj/g2019003/nobackup/private/1_Zhang_2017/genomics_data/PacBio/*.subreads.fastq.gz


