library(readxl)
library(tidyverse)
library(here)

mri <- read_excel(here("Desktop", "STAT 545A", "Firas-MRI.xlsx"),
                  range="A1:L12")

view(mri)

mri <- mri[,-10]
view(mri)

mri <- mri %>% 
  pivot_longer(cols = "Slice 1":"Slice 8",
               names_to = "slice_number",
               values_to = "value")


data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

download.file(url = data_url,
              destfile = here::here("Desktop", 
                                    "STAT 545A", 
                                    "GreatestGivers.xls"))

file_name <- basename(data_url)


library(readxl)

phil <- read_excel("~/Desktop/STAT 545A/GreatestGivers.xls",
                   file_name, trim_ws = TRUE)

