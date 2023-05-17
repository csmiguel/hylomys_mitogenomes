#!/bin/bash
bwa mem data/intermediate/bwa/maxi_reference.fasta data/intermediate/ANSP20372.cutadapt.1.fastq.gz data/intermediate/ANSP20372.cutadapt.2.fastq.gz > data/intermediate/bwa/ANSP20372.sam
samtools view -b -F 4 data/intermediate/bwa/ANSP20372.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ANSP20372_rmdup.sam
rm data/intermediate/bwa/ANSP20372.sam
bwa mem data/intermediate/bwa/vorax_reference.fasta data/intermediate/ANSP20377.cutadapt.1.fastq.gz data/intermediate/ANSP20377.cutadapt.2.fastq.gz > data/intermediate/bwa/ANSP20377.sam
samtools view -b -F 4 data/intermediate/bwa/ANSP20377.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ANSP20377_rmdup.sam
rm data/intermediate/bwa/ANSP20377.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/THNHM03942.cutadapt.1.fastq.gz data/intermediate/THNHM03942.cutadapt.2.fastq.gz > data/intermediate/bwa/THNHM03942.sam
samtools view -b -F 4 data/intermediate/bwa/THNHM03942.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/THNHM03942_rmdup.sam
rm data/intermediate/bwa/THNHM03942.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/THNHM03952.cutadapt.1.fastq.gz data/intermediate/THNHM03952.cutadapt.2.fastq.gz > data/intermediate/bwa/THNHM03952.sam
samtools view -b -F 4 data/intermediate/bwa/THNHM03952.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/THNHM03952_rmdup.sam
rm data/intermediate/bwa/THNHM03952.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM124229.cutadapt.1.fastq.gz data/intermediate/USNM124229.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM124229.sam
samtools view -b -F 4 data/intermediate/bwa/USNM124229.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM124229_rmdup.sam
rm data/intermediate/bwa/USNM124229.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM260640.cutadapt.1.fastq.gz data/intermediate/USNM260640.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM260640.sam
samtools view -b -F 4 data/intermediate/bwa/USNM260640.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM260640_rmdup.sam
rm data/intermediate/bwa/USNM260640.sam
bwa mem data/intermediate/bwa/vorax_reference.fasta data/intermediate/USNM271034_1.cutadapt.1.fastq.gz data/intermediate/USNM271034_1.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM271034_1.sam
samtools view -b -F 4 data/intermediate/bwa/USNM271034_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM271034_1_rmdup.sam
rm data/intermediate/bwa/USNM271034_1.sam
bwa mem data/intermediate/bwa/vorax_reference.fasta data/intermediate/USNM271034.cutadapt.1.fastq.gz data/intermediate/USNM271034.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM271034.sam
samtools view -b -F 4 data/intermediate/bwa/USNM271034.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM271034_rmdup.sam
rm data/intermediate/bwa/USNM271034.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM300009.cutadapt.1.fastq.gz data/intermediate/USNM300009.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM300009.sam
samtools view -b -F 4 data/intermediate/bwa/USNM300009.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM300009_rmdup.sam
rm data/intermediate/bwa/USNM300009.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320485_1.cutadapt.1.fastq.gz data/intermediate/USNM320485_1.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320485_1.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320485_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320485_1_rmdup.sam
rm data/intermediate/bwa/USNM320485_1.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320485.cutadapt.1.fastq.gz data/intermediate/USNM320485.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320485.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320485.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320485_rmdup.sam
rm data/intermediate/bwa/USNM320485.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320490_1.cutadapt.1.fastq.gz data/intermediate/USNM320490_1.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320490_1.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320490_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320490_1_rmdup.sam
rm data/intermediate/bwa/USNM320490_1.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320490.cutadapt.1.fastq.gz data/intermediate/USNM320490.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320490.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320490.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320490_rmdup.sam
rm data/intermediate/bwa/USNM320490.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320495_2.cutadapt.1.fastq.gz data/intermediate/USNM320495_2.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320495_2.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320495_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320495_2_rmdup.sam
rm data/intermediate/bwa/USNM320495_2.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320495.cutadapt.1.fastq.gz data/intermediate/USNM320495.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320495.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320495.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320495_rmdup.sam
rm data/intermediate/bwa/USNM320495.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320500_2.cutadapt.1.fastq.gz data/intermediate/USNM320500_2.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320500_2.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320500_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320500_2_rmdup.sam
rm data/intermediate/bwa/USNM320500_2.sam
bwa mem data/intermediate/bwa/macarong_reference.fasta data/intermediate/USNM320500.cutadapt.1.fastq.gz data/intermediate/USNM320500.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM320500.sam
samtools view -b -F 4 data/intermediate/bwa/USNM320500.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM320500_rmdup.sam
rm data/intermediate/bwa/USNM320500.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM321535_1.cutadapt.1.fastq.gz data/intermediate/USNM321535_1.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM321535_1.sam
samtools view -b -F 4 data/intermediate/bwa/USNM321535_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM321535_1_rmdup.sam
rm data/intermediate/bwa/USNM321535_1.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM321535.cutadapt.1.fastq.gz data/intermediate/USNM321535.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM321535.sam
samtools view -b -F 4 data/intermediate/bwa/USNM321535.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM321535_rmdup.sam
rm data/intermediate/bwa/USNM321535.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM355443_1.cutadapt.1.fastq.gz data/intermediate/USNM355443_1.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM355443_1.sam
samtools view -b -F 4 data/intermediate/bwa/USNM355443_1.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM355443_1_rmdup.sam
rm data/intermediate/bwa/USNM355443_1.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/USNM355443.cutadapt.1.fastq.gz data/intermediate/USNM355443.cutadapt.2.fastq.gz > data/intermediate/bwa/USNM355443.sam
samtools view -b -F 4 data/intermediate/bwa/USNM355443.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/USNM355443_rmdup.sam
rm data/intermediate/bwa/USNM355443.sam
bwa mem data/intermediate/bwa/suillus_reference.fasta data/intermediate/ZRC45042_2.cutadapt.1.fastq.gz data/intermediate/ZRC45042_2.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45042_2.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45042_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45042_2_rmdup.sam
rm data/intermediate/bwa/ZRC45042_2.sam
bwa mem data/intermediate/bwa/suillus_reference.fasta data/intermediate/ZRC45042.cutadapt.1.fastq.gz data/intermediate/ZRC45042.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45042.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45042.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45042_rmdup.sam
rm data/intermediate/bwa/ZRC45042.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/ZRC45046_2.cutadapt.1.fastq.gz data/intermediate/ZRC45046_2.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45046_2.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45046_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45046_2_rmdup.sam
rm data/intermediate/bwa/ZRC45046_2.sam
bwa mem data/intermediate/bwa/peguensis_reference.fasta data/intermediate/ZRC45046.cutadapt.1.fastq.gz data/intermediate/ZRC45046.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45046.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45046.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45046_rmdup.sam
rm data/intermediate/bwa/ZRC45046.sam
bwa mem data/intermediate/bwa/maxi_reference.fasta data/intermediate/ZRC45049_2.cutadapt.1.fastq.gz data/intermediate/ZRC45049_2.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45049_2.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45049_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45049_2_rmdup.sam
rm data/intermediate/bwa/ZRC45049_2.sam
bwa mem data/intermediate/bwa/maxi_reference.fasta data/intermediate/ZRC45049.cutadapt.1.fastq.gz data/intermediate/ZRC45049.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45049.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45049.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45049_rmdup.sam
rm data/intermediate/bwa/ZRC45049.sam
bwa mem data/intermediate/bwa/maxi_reference.fasta data/intermediate/ZRC45051_2.cutadapt.1.fastq.gz data/intermediate/ZRC45051_2.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45051_2.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45051_2.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45051_2_rmdup.sam
rm data/intermediate/bwa/ZRC45051_2.sam
bwa mem data/intermediate/bwa/maxi_reference.fasta data/intermediate/ZRC45051.cutadapt.1.fastq.gz data/intermediate/ZRC45051.cutadapt.2.fastq.gz > data/intermediate/bwa/ZRC45051.sam
samtools view -b -F 4 data/intermediate/bwa/ZRC45051.sam  | samtools sort - -o - | samtools rmdup -  data/intermediate/bwa/ZRC45051_rmdup.sam
rm data/intermediate/bwa/ZRC45051.sam
