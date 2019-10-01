library(gapminder)
library(tidyverse)
library(ggridges)

ggplot(gapminder, aes(lifeExp, continent)) +
  ggridges::geom_density_ridges()

ggplot(mtcars, aes(cyl)) +
  geom_bar()


tsibble::as_tsibble(co2) %>% 
  rename(yearmonth = index,
         conc = value) %>% 
  mutate(month = lubridate::month(yearmonth, label = TRUE),
         year  = lubridate::year(yearmonth)) %>% 
  ggplot(aes(month, conc)) +
  geom_line(aes(group = year), alpha = 0.5) +
  ylab("CO2 Concentration")