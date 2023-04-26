library(tidyverse)

dfdist <- readRDS("data/intermediate/dfdist.rds")
# saturated partitions
sat_partitions <-
  dfdist %>%
  filter(TN93 > 1.5) %>%
  pull(partition) %>%
  unique %>%
  as.character()

# copy fasta files non saturated partitions to run2
allfasta <-
  list.files("data/intermediate/raxml", pattern = "fas-gb$", full.names = T)

sapply(allfasta, function(x){
    h <-
      str_detect(string = x, pattern = sat_partitions) %>%
      any %>% {!.}
    if(h){
      file.copy(from = x,
                "data/intermediate/raxml/run2_unsaturated/")
    }
  })
