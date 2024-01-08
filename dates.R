library(tidyverse)
library(readxl)

d <- read_excel("Data/Stechlinsee_mangan_2017_2022.xlsx", sheet = "MN", skip = 1) |>
  select(Date) |>
  mutate(date_new = as_date(Date)) |>
  fill(date_new) |>
  write_csv("Data/Datasets/stechlinsee_mangan_2017_2022_dates.csv")

