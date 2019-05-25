#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc_trimmed_before_after
#SBATCH --mail-type=ALL
#SBATCH --mail-user stamatelouismini@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC
# Your commands
fastqc /proj/g2019003/nobackup/private/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/untrimmed/* -o /home/ismini/Genome-Analysis-lab/Trim_Eval/

fastqc /home/ismini/Genome-Analysis-lab/Data_For_Trim/out_paired_* -o /home/ismini/Genome-Analysis-lab/Trim_Eval/

