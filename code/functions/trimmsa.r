trim_msa <- function(input_fasta = NULL,
                     thres = NULL,
                     output_filename = NULL) {

# if thres is below 1, proportions are used. Else, number of positions.
  library(tidyverse)
  library(bioseq)
  library(tidyr)
  #path to fasta MSA
  dnaal <- input_fasta

  #read fasta a bioseq
  h <- bioseq::read_fasta(dnaal)

  #from bioseq to df with one column per character
  hdf <-
    bioseq::as_tibble.bioseq_dna(h) %>%
    mutate(sequence = as.character(sequence)) %>%
    tidyr::separate(sequence,
                    into = as.character(1:nchar(.[1, 2])),
                    sep = "")
  #vector of positions to retain
  pos2retain <-
    hdf %>% apply(2, function(x) {
    ht <- table(x) %>% data.frame()  %>% setNames(c("char", "fq"))
    atcg <- ht %>% filter(grepl("^[aA,cC,tT,gG]$", char)) %>%
      pull(fq) %>% sum
    total <- ht %>% pull(fq) %>% sum
    if(thres < 1)
      atcg/total > thres
    else if (thres >= 1)
      atcg > thres
    else if (thres < 0)
      (atcg - total) < thres
    })

  #trim msa
  trimedAl <-
    hdf[, pos2retain] %>%
    apply(1, paste0, collapse = "") %>%
    bioseq::dna() %>%  setNames(names(h))

  #write to file
  bioseq::write_fasta(
    trimedAl,
    file = output_filename)
  }
