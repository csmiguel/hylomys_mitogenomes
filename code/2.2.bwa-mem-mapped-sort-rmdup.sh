#!/bin/bash
bwa mem data/intermediate/mito/bwa/maxi_reference.fasta data/intermediate/mito/ANSP20372.cutadapt.1.fastq.gz data/intermediate/mito/ANSP20372.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ANSP20372.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ANSP20372.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ANSP20372_rmdup.sam
rm data/intermediate/mito/bwa/ANSP20372.sam
bwa mem data/intermediate/mito/bwa/vorax_reference.fasta data/intermediate/mito/ANSP20377.cutadapt.1.fastq.gz data/intermediate/mito/ANSP20377.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ANSP20377.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ANSP20377.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ANSP20377_rmdup.sam
rm data/intermediate/mito/bwa/ANSP20377.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/THNHM03942.cutadapt.1.fastq.gz data/intermediate/mito/THNHM03942.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/THNHM03942.sam
samtools view -b -F 4 data/intermediate/mito/bwa/THNHM03942.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/THNHM03942_rmdup.sam
rm data/intermediate/mito/bwa/THNHM03942.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/THNHM03952.cutadapt.1.fastq.gz data/intermediate/mito/THNHM03952.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/THNHM03952.sam
samtools view -b -F 4 data/intermediate/mito/bwa/THNHM03952.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/THNHM03952_rmdup.sam
rm data/intermediate/mito/bwa/THNHM03952.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM124229.cutadapt.1.fastq.gz data/intermediate/mito/USNM124229.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM124229.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM124229.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM124229_rmdup.sam
rm data/intermediate/mito/bwa/USNM124229.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM260640.cutadapt.1.fastq.gz data/intermediate/mito/USNM260640.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM260640.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM260640.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM260640_rmdup.sam
rm data/intermediate/mito/bwa/USNM260640.sam
bwa mem data/intermediate/mito/bwa/vorax_reference.fasta data/intermediate/mito/USNM271034_1.cutadapt.1.fastq.gz data/intermediate/mito/USNM271034_1.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM271034_1.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM271034_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM271034_1_rmdup.sam
rm data/intermediate/mito/bwa/USNM271034_1.sam
bwa mem data/intermediate/mito/bwa/vorax_reference.fasta data/intermediate/mito/USNM271034.cutadapt.1.fastq.gz data/intermediate/mito/USNM271034.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM271034.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM271034.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM271034_rmdup.sam
rm data/intermediate/mito/bwa/USNM271034.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM300009.cutadapt.1.fastq.gz data/intermediate/mito/USNM300009.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM300009.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM300009.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM300009_rmdup.sam
rm data/intermediate/mito/bwa/USNM300009.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320485_1.cutadapt.1.fastq.gz data/intermediate/mito/USNM320485_1.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320485_1.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320485_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320485_1_rmdup.sam
rm data/intermediate/mito/bwa/USNM320485_1.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320485.cutadapt.1.fastq.gz data/intermediate/mito/USNM320485.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320485.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320485.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320485_rmdup.sam
rm data/intermediate/mito/bwa/USNM320485.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320490_1.cutadapt.1.fastq.gz data/intermediate/mito/USNM320490_1.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320490_1.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320490_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320490_1_rmdup.sam
rm data/intermediate/mito/bwa/USNM320490_1.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320490.cutadapt.1.fastq.gz data/intermediate/mito/USNM320490.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320490.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320490.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320490_rmdup.sam
rm data/intermediate/mito/bwa/USNM320490.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320495_2.cutadapt.1.fastq.gz data/intermediate/mito/USNM320495_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320495_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320495_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320495_2_rmdup.sam
rm data/intermediate/mito/bwa/USNM320495_2.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320495.cutadapt.1.fastq.gz data/intermediate/mito/USNM320495.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320495.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320495.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320495_rmdup.sam
rm data/intermediate/mito/bwa/USNM320495.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320500_2.cutadapt.1.fastq.gz data/intermediate/mito/USNM320500_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320500_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320500_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320500_2_rmdup.sam
rm data/intermediate/mito/bwa/USNM320500_2.sam
bwa mem data/intermediate/mito/bwa/macarong_reference.fasta data/intermediate/mito/USNM320500.cutadapt.1.fastq.gz data/intermediate/mito/USNM320500.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM320500.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM320500.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM320500_rmdup.sam
rm data/intermediate/mito/bwa/USNM320500.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM321535_1.cutadapt.1.fastq.gz data/intermediate/mito/USNM321535_1.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM321535_1.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM321535_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM321535_1_rmdup.sam
rm data/intermediate/mito/bwa/USNM321535_1.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM321535.cutadapt.1.fastq.gz data/intermediate/mito/USNM321535.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM321535.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM321535.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM321535_rmdup.sam
rm data/intermediate/mito/bwa/USNM321535.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM355443_1.cutadapt.1.fastq.gz data/intermediate/mito/USNM355443_1.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM355443_1.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM355443_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM355443_1_rmdup.sam
rm data/intermediate/mito/bwa/USNM355443_1.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/USNM355443.cutadapt.1.fastq.gz data/intermediate/mito/USNM355443.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/USNM355443.sam
samtools view -b -F 4 data/intermediate/mito/bwa/USNM355443.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/USNM355443_rmdup.sam
rm data/intermediate/mito/bwa/USNM355443.sam
bwa mem data/intermediate/mito/bwa/suillus_reference.fasta data/intermediate/mito/ZRC45042_2.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45042_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45042_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45042_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45042_2_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45042_2.sam
bwa mem data/intermediate/mito/bwa/suillus_reference.fasta data/intermediate/mito/ZRC45042.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45042.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45042.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45042.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45042_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45042.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/ZRC45046_2.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45046_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45046_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45046_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45046_2_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45046_2.sam
bwa mem data/intermediate/mito/bwa/peguensis_reference.fasta data/intermediate/mito/ZRC45046.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45046.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45046.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45046.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45046_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45046.sam
bwa mem data/intermediate/mito/bwa/maxi_reference.fasta data/intermediate/mito/ZRC45049_2.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45049_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45049_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45049_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45049_2_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45049_2.sam
bwa mem data/intermediate/mito/bwa/maxi_reference.fasta data/intermediate/mito/ZRC45049.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45049.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45049.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45049.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45049_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45049.sam
bwa mem data/intermediate/mito/bwa/maxi_reference.fasta data/intermediate/mito/ZRC45051_2.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45051_2.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45051_2.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45051_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45051_2_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45051_2.sam
bwa mem data/intermediate/mito/bwa/maxi_reference.fasta data/intermediate/mito/ZRC45051.cutadapt.1.fastq.gz data/intermediate/mito/ZRC45051.cutadapt.2.fastq.gz > data/intermediate/mito/bwa/ZRC45051.sam
samtools view -b -F 4 data/intermediate/mito/bwa/ZRC45051.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/mito/bwa/ZRC45051_rmdup.sam
rm data/intermediate/mito/bwa/ZRC45051.sam
