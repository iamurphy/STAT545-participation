library(gapminder)
library(tidyverse)
library(ggridges)

ggplot(gapminder, aes(lifeExp, continent)) +
  ggridges::geom_density_ridges()