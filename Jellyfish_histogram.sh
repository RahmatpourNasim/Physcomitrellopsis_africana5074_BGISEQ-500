#!/bin/bash
#SBATCH --job-name=Jellyfish_histo
#SBATCH -o Jellyfish_histo-%j.output
#SBATCH -e Jellyfish_histo-%j.error
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=100GG
#SBATCH --partition=general
#SBATCH --qos=general
module load jellyfish/2.2.6
jellyfish histo -o 19mer_out.histo 19mer_out
