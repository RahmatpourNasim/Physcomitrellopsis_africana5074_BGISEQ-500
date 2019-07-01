#!/bin/bash
#SBATCH --job-name=krakenG
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem=200G
#SBATCH --partition=general
#SBATCH --qos=general
##SBATCH --mail-type=ALL
##SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

module load kraken/1.0
module load jellyfish/1.1.11 

kraken -db /isg/shared/databases/kraken/standard \
        --paired cat_R1.fq cat_R2.fq \
        --threads 20 \
        --output general.kraken
kraken-translate --db /isg/shared/databases/kraken/standard general.kraken > sequences.labels