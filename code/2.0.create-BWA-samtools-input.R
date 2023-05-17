# create input for bwa
# since each sample must map to a different reference I have to create a custom script
library(tidyverse)
library(readxl)
# 1. create dataframe with 3 columns, and one sample per line:
# forward_cutadapt.fa rv_cutadapt.fq reference_path
#   read fastq cutadapt files
cutadapt <-
  list.files("data/intermediate/", "cutadapt.*gz")
#   samples
samples <-
  cutadapt %>%
  stringr::str_remove(".cutadapt.*$") %>%
  unique()
#   df with references and paths to references
refs <-
  read_xlsx("output/seqmeta.xlsx", sheet = 1) %>%
  select(sample, taxa_new_taxonomy) %>%
  mutate(ref = stringr::str_replace(taxa_new_taxonomy, "Hylomys ", "") %>%
           paste0("_reference.fasta"),
         refpath = file.path("data/intermediate/bwa", ref)) %>%
  select(sample, refpath) %>%
  arrange(sample)
# data frame with inputs and references
df <-
  samples %>%
  lapply(function(x){
    # which refs
    s <- stringr::str_remove(x, "_.")
    data.frame(
      sample = x,
      fw = grep(x = cutadapt, pattern = paste0(x, ".cutadapt.1.fastq.gz"), value = T),
      rv = grep(x = cutadapt, pattern = paste0(x, ".cutadapt.2.fastq.gz"), value = T),
      rf = filter(refs, sample == s)$refpath
    )
  }) %>%
  do.call(what = rbind) %>%
  distinct()

# writeLines to file
outfile <- "code/2.2.bwa-mem-mapped-sort-rmdup.sh"
file.remove(outfile)
write_lines(
  x =
    c("#!/bin/bash",
      apply(df, 1, function(x){
        c(
          paste("bwa mem", x[4], # ref
                file.path("data/intermediate", x[2]), # fw
                file.path("data/intermediate", x[3]), # rv
                ">",
                paste0(file.path("data/intermediate/bwa", x[1]), ".sam")),
          paste("samtools view -b -F 4",
                paste0(file.path("data/intermediate/bwa", x[1]), ".sam"),
                " | samtools sort - -o - | samtools rmdup - ",
                paste0(file.path("data/intermediate/bwa", x[1]), "_rmdup.sam")),
          paste("rm",
                paste0(file.path("data/intermediate/bwa", x[1]), ".sam")
          )
        )
      })
    ),
  file = outfile, append = T)
