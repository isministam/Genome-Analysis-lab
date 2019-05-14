#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J BWA_mapping_Serum
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module samtools/1.9

# Your commands
bwa index -p Serum_Map_ERR1797969 genome_pilon.fasta
bwa mem -M Serum_Map_ERR1797969 trim_paired_ERR1797969_pass_1.fastq.gz trim_paired_ERR1797969_pass_2.fastq.gz | samtools sort -o out_Serum_Map_ERR1797969.bam
bwa index -p Serum_Map_ERR1797970 genome_pilon.fasta
bwa mem -M Serum_Map_ERR1797970 trim_paired_ERR1797970_pass_1.fastq.gz trim_paired_ERR1797970_pass_2.fastq.gz | samtools sort -o out_Serum_Map_ERR1797970.bam
bwa index -p Serum_Map_ERR1797971 genome_pilon.fasta
bwa mem -M Serum_Map_ERR1797971 trim_paired_ERR1797971_pass_1.fastq.gz trim_paired_ERR1797971_pass_2.fastq.gz | samtools sort -o out_Serum_Map_ERR1797971.bam
