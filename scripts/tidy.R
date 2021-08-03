# heading

# set up
# libraries 
library(here)
library(RSocrata)
library(tidyverse)
library(janitor)

# read data from https://data.cdc.gov/NCHS/COVID-19-Hospital-Data-from-the-National-Hospital-/q3t8-zr7t
covid19 <- read.socrata(url = "https://data.cdc.gov/resource/q3t8-zr7t.json") %>%
  as_tibble()

glimpse(covid19)

class(covid19)

covid19 %>%
  distinct(figure)

covid19 %>%
  distinct(setting)

covid19 %>%
  distinct(measure)

covid19 %>%
  distinct(indicator)

covid19 %>%
  distinct(group)

covid19 %>%
  distinct(subgroup)

# 
# covid19 %>%
#   filter(setting == "ED",
#          measure == "Number of encounters",
#          indicator == "Confirmed COVID-19"),
#          group == "Total",
#          subgroup == "Total") %>%
# ggplot() +
#   geom_point(mapping = aes(x = end_time, y = value))
