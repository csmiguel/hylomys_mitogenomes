setwd("../hylomys_publi/")
library(treeio)
library(ggtree)
library(tidyverse)
library(RColorBrewer)

path2tree <-
  "data/intermediate/raxml/run2_unsaturated/RAxML_bipartitionsBranchLabels.tree"
tr1 <-
  treeio::read.raxml(path2tree) %>%
  treeio::root(outgroup = "Echinosorex_gymnura_AF348079")
tr1@phylo <- reroot(as.phylo(tr1), 25, .1)

newlabs <-
  tr1@phylo$tip.label %>%
  str_replace_all("_+", "_") %>%
  str_replace("suillus_dorsalis", "dorsalis") %>%
  str_replace("Hylomys_suillus_microtinus_T1084", "Hylomys_peguensis_T1084") %>%
  str_replace("Hylomys_suillus_NC_010298.1", "Hylomys_maxi_NC_010298.1") %>%
  str_replace("Hylomys_suillus_microtinus_MHNG1926.032", "Hylomys_peguensis_MHNG1926.032") %>%
  str_replace("Hylomys_suillus_siamensis_T1264", "Hylomys_peguensis_T1264") %>%
  str_replace("Hylomys_suillus_siamensis_T1346", "Hylomys_peguensis_T1346") %>%
  str_replace("Hylomys_suillus_tionis_MZUM4F", "Hylomys_maxi_MZUM4F") %>%
  str_replace("Hylomys_suillus_maxi_MZUM5B", "Hylomys_maxi_MZUM5B") %>%
  str_replace("Hylomys_suillus_maxi_RHN38347", "Hylomys_maxi_RMNH38347") %>%
  str_replace("Hylomys_suillus_siamensis_T1264", "Hylomys_peguensis_T1264")
tr1@phylo$tip.label <- newlabs
  
  
# matrix with species
sp <-
  sapply(newlabs, function(x) str_split_1(x, "_")[2]) %>%
  as.data.frame %>%
  setNames("species") %>%
  mutate(
    species = str_replace(species, "hainanensis|sinensis|gymnura", "outgroup"),
    )

p1 <-
  ggtree(tr1) +
  geom_tiplab(align = T, linetype = 'dotted', linesize = .3, size = 3) +
  geom_text(aes(label = bootstrap), hjust = -.5, size = 2) +
  ggplot2::xlim(0, .7)

scale1 <- c('#fb8072','#fdb462','#4daf4a',"white",'#b3de69','grey70', "#377eb8", "#984ea3")
scale2 <- c('#a6cee3','#1f78b4','#b2df8a',"white",'#33a02c','#fb9a99','#e31a1c','#fdbf6f')
scale3 <- c('#fbb4ae','#b3cde3','#ccebc5',"white",'#decbe4','#fed9a6','#ffffcc','#e5d8bd')


p2 <-
  gheatmap(p = p1, data = sp, width = .12, offset = .27, colnames = F) +
  scale_fill_manual(values = scale1) +
  theme(legend.position = "none")
ggsave(filename = "output/raxml_mito_tree.pdf",
       p2,
       width = 6,
       height = 8)

