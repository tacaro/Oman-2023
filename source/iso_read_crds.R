#' @title read Picarro CRDS output .dat file
#' @description reads Picarro cavity ring down spectroscopy 'CRDS' .dat file
#' @param filename
#' @return a tibble of cleaned Picarro data
#' 

require(tidyverse)
require(lubridate)

iso_read_crds <- function(path) {
  crds_df <- read.delim(path , sep = "", header = T) |> 
    mutate(
      DATE = ymd(DATE), # convert column to date type
      TIME = hms(TIME), # convert column to time type
      datetime = DATE + TIME
    ) |> 
    select(datetime, everything())
  return(crds_df)
}

test <- iso_read_crds("data/picarro/CFIDS2308-20230803-000921Z-DataLog_User.dat")
