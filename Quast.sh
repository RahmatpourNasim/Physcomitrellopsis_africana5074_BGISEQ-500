#!/bin/bash
#SBATCH --job-name=Quast
#SBATCH -o Quast-%j.output
#SBATCH -e Quast-%j.error
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=100G
#SBATCH --partition=himem
#SBATCH --qos=himem

module load quast/5.0.2
quast.py graph_Sample_63.scafSeq -o SOAP -t 8
