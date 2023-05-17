
library(tidyverse)

dfdist <- readRDS("data/intermediate/dfdist_lowcov.rds")
# saturated partitions
sat_partitions <-
  dfdist %>%
  group_by(partition) %>%
  summarize(avtn93 = mean(TN93)) %>%
  filter(avtn93 > .4) %>%
  pull(partition) %>%
  as.character() %>%
  unique
# copy fasta files non saturated partitions to lowcov unsaturated
allfasta <-
  list.files("data/intermediate", pattern = "fas-gb$", full.names = T)

sapply(allfasta, function(x){
    h <-
      str_detect(string = x, pattern = sat_partitions) %>%
      any %>% {!.}
    if(h){
      file.copy(from = x,
                "data/intermediate/unsaturated/")
    }
  })
