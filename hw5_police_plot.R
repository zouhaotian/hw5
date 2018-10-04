library(tidyverse)
police <- read.csv('police-locals.csv', header=TRUE)

plot <- police %>% 
  filter(police_force_size>1000) %>% 
  ggplot(mapping=aes(x=police_force_size, y=all)) +
  geom_point()

ggsave('hw5_police_plot.png', plot)
