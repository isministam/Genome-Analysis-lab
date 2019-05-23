#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J Count_reads_Serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load htseq

# Your commands


htseq-count -f bam -t CDS -i ID -r pos out_Serum_Map_ERR1797969.bam PROKKA_05072019.gff > out_1797969.count
htseq-count -f bam -t CDS -i ID -r pos out_Serum_Map_ERR1797970.bam PROKKA_05072019.gff > out_1797970.count
htseq-count -f bam -t CDS -i ID -r pos out_Serum_Map_ERR1797971.bam PROKKA_05072019.gff > out_1797971.count




