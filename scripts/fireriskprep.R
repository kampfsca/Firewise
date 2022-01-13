library(ggplot2)
library(sf)
library(dplyr)


df <- st_read("fireclass9.shp")

df$risk <- gsub(".*_", "", df$FHSZ9)

df2 <- df %>%
  group_by(risk) %>% 
  summarise()

ggplot(df2)+
  geom_sf(aes(fill = risk), color = NA)+
  theme_bw()

saveRDS(df2, "fireRisk.RDS")
