library(dplyr)
library(tidyverse)

# the data
data <- tribble(~datetime,    ~numeric_data,
                "2009-04-06",   1234,
                "2013-05-11",   45148,
                "2015-11-01",   7771,
                "2020-01-02",   -1304
)


# a sample map
map <- tribble(~sample_id, ~start_datetime,   ~end_datetime,
               "A",      "2007-09-11",     "2010-04-06",
               "B",      "2014-08-29",     "2016-01-01",
               "C",      "2019-04-01",     "2021-01-01")


# the desired output
desired_df <- tribble(~datetime,    ~sample_id, ~is_in_interval, ~numeric_data,
                      "2009-04-06",  "A",        TRUE,            1234,
                      "2013-05-11",  NA,         FALSE,           45148,
                      "2015-11-01",  "B",        TRUE,            7771,
                      "2020-01-02",  "C",        TRUE,            -1304
)


desired <- data |> left_join(map, by = "sample_id") |> 
  mutate(sample_id = if_else(
    between(datetime, start_datetime, end_datetime),
    true = sample_id,
    false = NA
  ))

df3 <- df1 %>% left_join(df2, by = "ID") %>% 
  mutate(employed = between(TAX_YEAR_END_DATE, START_DATE, END_DATE)) %>% view()
  group_by(ID, TAX_YEAR_END_DATE) %>% 
  summarise(employed = any(employed))

df3

ymd_hms("2009-04-06 01:13:29.012")
