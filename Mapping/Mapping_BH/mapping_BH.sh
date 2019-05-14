#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J BWA_mapping_BH
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module samtools/1.9

# Your commands
bwa index -p BH_Map_ERR1797972 genome_pilon.fasta
bwa mem -M BH_Map_ERR1797972 trim_paired_ERR1797972_pass_1.fastq.gz trim_paired_ERR1797972_pass_2.fastq.gz | samtools sort -o out_BH_Map_ERR1797972.bam
bwa index -p BH_Map_ERR1797973 genome_pilon.fasta
bwa mem -M BH_Map_ERR1797973 trim_paired_ERR1797973_pass_1.fastq.gz trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -o out_BH_Map_ERR1797973.bam
bwa index -p BH_Map_ERR1797974 genome_pilon.fasta
bwa mem -M BH_Map_ERR1797974 trim_paired_ERR1797974_pass_1.fastq.gz trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o out_BH_Map_ERR1797974.bam