library(treeio)
library(ggtree)
library(tidyverse)
library(RColorBrewer)
library(phytools)

path2tree <-
  "data/intermediate/unsaturated/RAxML_bipartitionsBranchLabels.tree"
tr1 <-
  treeio::read.raxml(path2tree) %>%
  treeio::root(outgroup = "Echinosorex_gymnura_AF348079")
#tr1@phylo <- reroot(as.phylo(tr1), 25, .1)

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
  str_replace("Hylomys_suillus_siamensis_T1264", "Hylomys_peguensis_T1264") %>%
  str_replace("Hylomys_suillus_peguensis_USNM583813", "Hylomys_peguensis_USNM583813") %>%
  str_replace_all("_", " ")
tr1@phylo$tip.label <- newlabs
  
  
# matrix with species
sp <-
  sapply(newlabs, function(x) str_split_1(x, " ")[2]) %>%
  as.data.frame %>%
  setNames("species") %>%
  mutate(
    species = str_replace(species, "hainanensis|sinensis|gymnura", "outgroup"),
    )

p1 <-
  ggtree(tr1) +
  geom_tiplab(align = T, linetype = 'dotted', linesize = .3, size = 3) +
  geom_text(aes(label = bootstrap), hjust = -.5, size = 2) +
  ggplot2::xlim(0, .7) +
  geom_treescale(fontsize = 3) 

#scale1 <- c('#fb8072','#fdb462','#4daf4a',"white",'#b3de69','grey70', "#377eb8", "#984ea3")
#scale2 <- c('#a6cee3','#1f78b4','#b2df8a',"white",'#33a02c','#fb9a99','#e31a1c','#fdbf6f')
#scale3 <- c('#fbb4ae','#b3cde3','#ccebc5',"white",'#decbe4','#fed9a6','#ffffcc','#e5d8bd')
itopal <-
  c(palette.colors(palette = "Okabe-Ito"), "white")[c(2, 4, 5, 10, 6:8, 1)] %>%
  as.character()

p2 <-
  gheatmap(p = p1, data = sp, width = .05, offset = .27, colnames = F) +
  scale_fill_manual(values = c(itopal, "white")) +
  theme(legend.position = "none")
ggsave(filename = "output/raxml_mito_tree.pdf",
       p2,
       width = 6,
       height = 8)
#
library(ggnewscale)
library(readxl)

meta <-
  read_xlsx("data/intermediate/Hylomys_apr23.xlsx", 1) %>%
  janitor::clean_names() %>%
  select(museum_code, elevation_m) %>%
  mutate(sample = str_remove(museum_code, pattern = "[^0-9A-Za-z]"))

elev <-
  sp %>%
  rownames_to_column("names") %>%
  rowwise() %>%
  mutate(sample = str_split_1(names, " ")[3]) %>%
  left_join(meta, by = "sample") %>%
  mutate(elev_corrected = str_extract(elevation_m, "[0-9]+") %>% as.numeric) %>%
  column_to_rownames("names") %>%
  select(elev_corrected)

p4 <-
  gheatmap(p1, elev, width = .05, offset = .35, colnames = F) +
  scale_fill_distiller(palette = "RdYlGn", name = "Elevation (masl)")

ggsave(filename = "output/raxml_mito_tree_elev.pdf",
       p4,
       width = 6,
       height = 8)

# overplot no nt consensus
# read msa used in phylogenetic reconstructions
msapath <- "data/intermediate/unsaturated/partitionFinder/contat4PF_unsaturated.phy"
nt <-
  read_lines(msapath) %>%
  lapply(function(x){
    y <- stringr::str_split_1(x, " +")
    data.frame(sample = y[1] %>%
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
                 str_replace("Hylomys_suillus_siamensis_T1264", "Hylomys_peguensis_T1264") %>%
                 str_replace("Hylomys_suillus_peguensis_USNM583813", "Hylomys_peguensis_USNM583813") %>%
                 str_replace_all("_", " "),
               no_nt = stringr::str_count(y[2], "A|T|C|G"))
    }) %>%
  do.call(what = "rbind") %>%
  as_tibble %>%
  { .[-1,]} %>%
  tibble::column_to_rownames("sample")
# plot nt as color scale heatmap next to tree
p3 <-
  gheatmap(p = p1, data = sp, width = .07, offset = .37, colnames = F) +
  scale_fill_manual(values = c(itopal, "white")) +
  theme(legend.position = "none") +
  new_scale_fill()

p5 <-
  gheatmap(p3, nt, width = .07, offset = .39, colnames = F) +
  scale_fill_gradient(low = "grey90", high = "grey20")
ggsave(filename = "output/raxml_mito_tree_nt.pdf",
       p5,
       width = 6,
       height = 8)
