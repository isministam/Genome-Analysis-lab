#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J Count_reads_BH
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load samtools/1.9
module load htseq

# Your commands


samtools view out_BH_Map_ERR1797972.bam | htseq-count -f bam --type CDS out_BH_Map_ERR1797972.bam PROKKA_04122019.gtf > out_1797972.txt
samtools view out_BH_Map_ERR1797973.bam | htseq-count -f bam --type CDS out_BH_Map_ERR1797973.bam PROKKA_04122019.gtf > out_1797973.txt
samtools view out_BH_Map_ERR1797974.bam | htseq-count -f bam --type CDS out_BH_Map_ERR1797974.bam PROKKA_04122019.gtf > out_1797974.txt

