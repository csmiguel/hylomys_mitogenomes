#!/bin/bash
# copy
cp data/raw/gb_mitogenomes/iterative_references.fasta data/intermediate/bwa
# split multifasta into single fasta named by header
cd data/intermediate/bwa
awk '/^>/ {out = substr($1, 2) ".fasta"; print > out} !/^>/ {print >> out}' iterative_references.fasta
#index references
for i in *fasta; do bwa index $i; done
