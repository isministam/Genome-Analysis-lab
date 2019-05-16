#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J Count_reads_Serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load htseq

# Your commands


htseq-count -f bam out_Serum_Map_ERR1797969.bam out_Serum_Map_ERR1797970.bam out_Serum_Map_ERR1797971.bam PROKKA_04122019.gtf



