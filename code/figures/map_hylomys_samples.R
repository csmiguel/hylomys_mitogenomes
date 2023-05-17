library(tidyverse)
library(maps)
library(readxl)
library(janitor)

# mapa paisese
sunda <-
  map_data("world") %>%
  filter(lat < 26 & lat > -10 & long < 120 & long > 90)
countries <- sunda$data$region %>% unique
col_countries <- grey.colors(n = length(countries) + 2)
p1 <-
  ggplot(sunda) +
  geom_polygon(aes(long, lat, group = group, fill = region), colour = "white") + 
  coord_quickmap() +
  theme_minimal() +
  scale_fill_manual(values = col_countries)

# metadatos hylomys
meta <-
  readxl::read_xlsx("../hylomys_publi/data/intermediate/Hylomys_apr23.xlsx", 1) %>%
  janitor::clean_names() %>%
  select(museum_code, taxa_new_taxonomy, latitude, longitude) %>%
  mutate(longitude = as.numeric(longitude),
         latitude = as.numeric(latitude)) %>%
  rename(species = taxa_new_taxonomy) %>%
  drop_na
  
# add sample coordinates to map
p2 <-
  p1 +
  geom_point(data = meta,
             aes(x = longitude, y = latitude, color = species)) +
  theme(legend.direction = "vertical", legend.box = "horizontal")

# save map
ggsave("../hylomys_publi/output/map_countries_hylomys.pdf",
       p2, width = 8, height = 6)
