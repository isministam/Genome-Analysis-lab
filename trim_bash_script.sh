#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:00:00
#SBATCH -J RNA_Trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com
# Load modules
module load bioinfo-tools
module load trimmomatic

# Your commands
 
trimmomatic PE ERR1797969_pass_1.fastq.gz ERR1797969_pass_2.fastq.gz \
out_paired_ERR1797969_pass_1.fastq.gz out_unpaired_ERR1797969_pass_1.fastq.gz out_paired_ERR1797969_pass_2.fastq.gz out_unpaired_ERR1797969_pass_2.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

trimmomatic PE ERR1797970_pass_1.fastq.gz ERR1797970_pass_2.fastq.gz \
out_paired_ERR1797970_pass_1.fastq.gz out_unpaired_ERR1797970_pass_1.fastq.gz out_paired_ERR1797970_pass_2.fastq.gz out_unpaired_ERR1797970_pass_2.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

trimmomatic PE ERR1797971_pass_1.fastq.gz ERR1797971_pass_2.fastq.gz \
out_paired_ERR1797971_pass_1.fastq.gz out_unpaired_ERR1797971_pass_1.fastq.gz out_paired_ERR1797971_pass_2.fastq.gz out_unpaired_ERR1797971_pass_2.fastq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
