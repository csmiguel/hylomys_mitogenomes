noTrailingN <- function(seqs) {
  # seqs is a DNAStringSet
  require(Biostrings); require(tidyverse)
  sapply(seqs, function(x){
    x %>%
      as.character() %>%
      stringr::str_remove("^N+") %>%
      stringr::str_remove("N+$")
  }) %>%
    Biostrings::DNAStringSet()
  }