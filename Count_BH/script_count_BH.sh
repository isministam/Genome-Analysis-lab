#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J Count_reads_BH
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load htseq

# Your commands


htseq-count -f bam -t CDS -i ID -r pos out_BH_Map_ERR1797972.bam PROKKA_05072019.gff > out_1797972.count
#htseq-count --stranded=reverse -f bam -t CDS -r pos out_BH_Map_ERR1797972.bam PROKKA_04122019.gtf > out_1797972.count
htseq-count -f bam -t CDS -i ID -r pos out_BH_Map_ERR1797973.bam PROKKA_05072019.gff > out_1797973.count
htseq-count -f bam -t CDS -i ID -r pos out_BH_Map_ERR1797974.bam PROKKA_05072019.gff > out_1797974.count

