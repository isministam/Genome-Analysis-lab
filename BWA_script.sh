#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J BWA
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module samtools/1.9

# Your commands
bwa index -p pacbio_index Enterococci.contigs.fasta
bwa mem pacbio_index E745-1.L500_SZAXPI015146-56_1_clean.fq.gz E745-1.L500_SZAXPI015146-56_2_clean.fq.gz > aln-pe.sam


