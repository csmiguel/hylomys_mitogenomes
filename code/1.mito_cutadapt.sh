#!/bin/bash
########
# (c) Miguel Camacho Sánchez
# https://orcid.org/0000-0002-6385-7963
# github.com/csmiguel/hylomys_mitogenomes
########
#get samples
mkdir data/intermediate/mito
conda activate cutadaptenv
ls data/raw/rawreads/*q.gz | xargs basename |sed -e 's|_[R|F].fastq.gz||' | sort | uniq | \
while read sample
do
  #trim adapters
  cutadapt -a AGATCGGAAGAGC -A AGATCGGAAGAGC -e 0.16 -m 30 -q 10 \
   -o data/intermediate/mito/"$sample".cutadapt.1.fastq.gz \
   -p data/intermediate/mito/"$sample".cutadapt.2.fastq.gz \
   data/raw/rawreads/"$sample"_F.fastq.gz \
   data/raw/rawreads/"$sample"_R.fastq.gz  >> data/intermediate/cutadapt.log
done
conda deactivate
