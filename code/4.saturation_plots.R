# dna saturation test
library(Biostrings)
library(tidyverse)
library(ape)

# list Gblocks output
p2gb <- "data/intermediate"
gb <- list.files(p2gb, pattern = "fas-gb$", full.names = T)
# name partitions
partname <-
  str_remove(gb, "data/intermediate/msa_added_") %>%
  str_remove("-out.fas-gb")
# compute distances
dfdist <-
  gb %>%
  lapply(function(x){
    seqs <- ape::read.FASTA(x)
    d1 <-
      ape::dist.dna(seqs, pairwise.deletion = T) %>%
      as.matrix %>% as.data.frame %>%
      tibble::rownames_to_column("code1") %>%
      pivot_longer(cols = -1,
                   names_to = "code2",
                   values_to = "uncorrected")
    mod <- "TN93"
    d2 <-
      ape::dist.dna(seqs, pairwise.deletion = T,
                    model = mod) %>%
      as.matrix %>% as.data.frame %>%
      tibble::rownames_to_column("code1") %>%
      pivot_longer(cols = -1,
                   names_to = "code2",
                   values_to = mod)
    left_join(d1, d2,
              by = c("code1", "code2"))
  }) %>%
  setNames(partname) %>%
  plyr::ldply(.id = "partition") %>%
  as_tibble() %>%
  drop_na %>%
  rowwise() %>%
  mutate(outg = ifelse(
    test = grepl("Hylomys", c(code1, code2)) %>% all,
    "ingroup", "outgroup"
  ))

saveRDS(dfdist, "data/intermediate/dfdist_lowcov.rds")

# plot
xylim <- 1.5
p1 <-
  ggplot(data = dfdist,
         aes(x = TN93, y = uncorrected, color = outg)) +
  geom_point(alpha = 0.1) +
  geom_abline(slope = 1, intercept = 0,
              color = "brown", linetype = "dotted",
              linewidth = 1) +
  xlim(c(0, xylim)) + ylim(c(0, xylim)) +
  facet_wrap(~partition) +
  theme_classic()

ggsave(
  "output/saturation_plot_lowcov.pdf",
  p1,
  width = 14,
  height = 10
)
