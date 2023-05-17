# generate code to merge SAM files.
library(tidyverse)
# list files rmdup
fil <- list.files("data/intermediate/bwa", pattern = "rmdup", full.names = T)
# identify duplicated samples
dupl <-
  stringr::str_extract(fil,"[A-Z]+[0-9]+") %>%
  {.[duplicated(.)]}
#outfile code file
outfile <- "code/2.4.samtools_merge.sh"
file.remove(outfile)
# write lines
dupl %>%
  lapply(function(x){
    y <- grep(x, fil, value = T)
    write_lines(
        glue::glue("samtools merge -o data/intermediate/bwa/{x}_merged.bam {y[1]} {y[2]}"),
        file = outfile,
        append = T)
    })
    