#!/bin/bash
#SBATCH --job-name=Soap_denovo
#SBATCH -o Soap_denovo-%j.output
#SBATCH -e Soap_denovo-%j.error
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=30
#SBATCH --mem=200G
#SBATCH --partition=himem
#SBATCH --qos=himem

module load SOAP-denovo/2.04
SOAPdenovo-63mer all -s /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Assembly_Soap_denovo/Soap_denovo.config -K 63 -R -o graph_Sample_63 1>ass63.log 2>ass63.err -p 30
# repeat for k=35, k=41, etc
