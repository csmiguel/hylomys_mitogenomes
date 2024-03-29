# remove trailing Ns and sequences with too many ambuiguities or too short
library(Biostrings)
library(tidyverse)
# function remove trailing Ns
source("code/functions/noTrailingN.R")

# mitos assembled by me bwa mapped to references generated by iterative mapping in Geneious
path2itmitos <-
  "data/intermediate/consensus/bwa2iterative.fasta"
itmitos <-
  Biostrings::readDNAStringSet(path2itmitos) %>%
  noTrailingN()
# change names
names(itmitos) <-
  names(itmitos) %>%
  str_remove("_.*$")

# read meta
meta <-
  readRDS("data/intermediate/seqmeta.rds") %>%
  filter(sample %in% names(itmitos)) %>%
  select(sample, taxa_new_taxonomy) %>%
  distinct() %>%
  mutate(seq_name = paste(str_replace(taxa_new_taxonomy, " ", "_"), sample, sep = "_"))

# complete names mitos. Add species
names(itmitos) <-
  names(itmitos) %>%
  sapply(function(x){
    if(str_length(x) > 10)
      stop("sequence names seem already complete")
    filter(meta, sample == x) %>%
      pull(seq_name)
  })

# mitos that Arlo assembled
path2arlo <-
  "data/intermediate/consensus/mitos_aligned_arlo.fasta"
toRetain <- c("ylomys")
##
arlo_mitos <-
  Biostrings::readDNAStringSet(path2arlo) %>%
  noTrailingN() %>%
  {# remove outgroups
    .[grep(pattern = toRetain, names(.))]
  }

#merge consensus seqs
allmitos <- c(itmitos, arlo_mitos)

# filter low-cov samples and write to file
lowcovsamples <-
  c("Neohylomys_hainanensis_MVZ186403",
    "Hylomys_suillus_peguensis_USNM583813", 
    "THNHM03942",
    "THNHM03952",
    "USNM320500")
selvector <- sapply(lowcovsamples, function(x) grep(x, names(allmitos))) %>% as.numeric

# write 2 file
Biostrings::writeXStringSet(allmitos[selvector],
                            filepath = "data/intermediate/lowcov_consensus.fasta")

