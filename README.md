# Physcomitrellopsis_africana5074_BGISEQ-500
Here are the steps in genome assembly of moss Physcomitrellopsis africana (DNA number= 5074) using BGISEQ-500 short reads.
1) Quality control of short reads by FASTQC
2) Removing the adapters and low quality bases (Trimmomatic.sh)
3) Assembly of short reads by Soap de novo (Soap_denovo.config) & (Soap_denovo.sh)
4) Assembly quality assessment by QUAST (Quast.sh)

Genome size estimation:
1) Providing k-mer distribution (Jellyfish.sh)
2) Providing histogram or k-mer frequencies (Jellyfish_histogram.sh)
3) Upload the histogram file (19mer_out.histo) to GenomeScope for genome size estimation.
