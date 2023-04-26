ambiguityfilter <- function(seq, maxpropAmb = .7){
  # seq is a DNAStringSet object
  h <-
    seq %>%
    sapply(function(x){
        as.character(x) %>%
        strsplit(split = "") %>%
        {.[[1]]} %>%
        table %>%
        as.data.frame() %>% 
        setNames(c("base", "count")) %>%
        mutate(freq = count/sum(count)) %>%
        filter(base %in% c("A", "C", "T", "G")) %>% 
        pull(freq) %>% sum
    })
  ok <- seq[h >= maxpropAmb]
  notOk <- seq[h < maxpropAmb]
  cat(
    paste(names(notOk), glue::glue("was droppped because it had {1-round(h[h < maxpropAmb],2)} prop. of ambiguous nucleotides\n"))
    )
  return(ok)
  }
