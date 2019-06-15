#!/bin/bash
#SBATCH --job-name=Trimmomatic
#SBATCH -o Trimmomatic-%j.output
#SBATCH -e Trimmomatic-%j.error
#SBATCH --mail-user=nasim.rahmatpour@uconn.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=10G
#SBATCH --partition=general
#SBATCH --qos=general

module load Trimmomatic/0.36

java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_573_1.fq DP800004166BL_L01_573_2.fq  573_paired_1.fq 573_unpaired_1.fq 573_paired_2.fq 573_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_574_1.fq DP800004166BL_L01_574_2.fq  574_paired_1.fq 574_unpaired_1.fq 574_paired_2.fq 574_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_575_1.fq DP800004166BL_L01_575_2.fq  575_paired_1.fq 575_unpaired_1.fq 575_paired_2.fq 575_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_576_1.fq DP800004166BL_L01_576_2.fq  576_paired_1.fq 576_unpaired_1.fq 576_paired_2.fq 576_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_577_1.fq DP800004166BL_L01_577_2.fq  577_paired_1.fq 577_unpaired_1.fq 577_paired_2.fq 577_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_578_1.fq DP800004166BL_L01_578_2.fq  578_paired_1.fq 578_unpaired_1.fq 578_paired_2.fq 578_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_579_1.fq DP800004166BL_L01_579_2.fq  579_paired_1.fq 579_unpaired_1.fq 579_paired_2.fq 579_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
java -jar $Trimmomatic PE -threads 8 DP800004166BL_L01_580_1.fq DP800004166BL_L01_580_2.fq  580_paired_1.fq 580_unpaired_1.fq 580_paired_2.fq 580_unpaired_2.fq ILLUMINACLIP:/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Illumina_5074/Trimmomatic_Trimming/Trimming_Trimmomatic/adapter.fasta:2:30:10 -phred33 SLIDINGWINDOW:4:25 MINLEN:36
