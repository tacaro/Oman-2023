library(tidyverse)

kg_ha_to_tonne_km2 <- function(kg_ha) {
  result = kg_ha / 0.01 / 1000
  return(result)
}