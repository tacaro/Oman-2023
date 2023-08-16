library(dplyr)

# Sample data for dataframe A
A <- data.frame(
  datetime = ymd_hms(c("2023-08-11 12:30:00", "2023-08-11 15:00:00", "2023-08-11 18:45:00"))
)

# Sample data for dataframe B
B <- data.frame(
  id = c(1, 2, 3),
  datetime_start = ymd_hms(c("2023-08-11 12:00:00", "2023-08-11 14:00:00", "2023-08-11 18:00:00")),
  datetime_end = ymd_hms(c("2023-08-11 14:00:00", "2023-08-11 16:00:00", "2023-08-11 19:00:00"))
)

# Perform a left join and create a new dataframe with the desired structure
result <- A %>%
  mutate(id = NA_integer_) %>%  # Initialize the id column with NAs
  left_join(B, by = character(0)) |> 
  mutate(id = if_else(
    datetime >= datetime_start && datetime <= datetime_end,
    true = id.y,
    false = NA_integer_
  ))


%>%  # Left join without common columns
  mutate(id = if_else(between(datetime, datetime_start, datetime_end), id, NA_integer_))  # Update id based on datetime comparison
  
  print(result)
