library(tidyverse)
library(sbmR)


edges <- clements_pollinators %>% sample_n(100)

nodes <- bind_rows(tibble(id = edges$pollinator,
                          type = "pollinator"),
                   tibble(id = edges$flower,
                          type = "flower")) %>%
  arrange(type)

types <- count(nodes, type, name = "count")


