#!/bin/bash
#SBATCH --job-name=Jellyfish
#SBATCH -o Jellyfish-%j.output
#SBATCH -e Jellyfish-%j.error
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=200G
#SBATCH --partition=himem
#SBATCH --qos=himem

module load jellyfish/2.2.6
jellyfish count -t 8 -C -m 19 -s 5G -o 19mer_out --min-qual-char=? /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Genome_size_estimation_Jellyfish/19mer/cat_R1.fq /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Genome_size_estimation_Jellyfish/19mer/cat_R2.fq
