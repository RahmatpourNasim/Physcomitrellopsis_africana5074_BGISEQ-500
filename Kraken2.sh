#!/bin/bash
#SBATCH --job-name=krakenG
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=200G
#SBATCH --partition=general
#SBATCH --qos=general
##SBATCH --mail-type=ALL
##SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

module load kraken/2.0.8-beta
module load jellyfish/2.2.6  

kraken2 -db /isg/shared/databases/kraken2/Standard \
        --paired cat_R1.fq cat_R2.fq \
        --use-names \
        --threads 8 \
        --output kraken_general.out \
        --unclassified-out unclassified#.fastq \
        --classified-out classified#.fastq      \
        --report kraken_report.txt \
        --use-mpa-style
