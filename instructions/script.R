library(tidyverse)
library(gapminder)

gapminder = gapminder %>% 
  # round gdpPercap to 0 decimals:
  mutate(gdpPercap = round(gdpPercap)) %>% 
  # divide pop by million, round to 1 decimal:
  mutate(pop_millions = (pop/1e6) %>% round(1))

gapminder %>% 
  select(-pop) %>% 
  sample_n(10)

gapminder %>% 
  filter(year == 2007) %>% 
  ggplot(aes(x      = gdpPercap/1000, #divide by 1000 to tidy the x-axis
             y      = lifeExp,
             colour = continent,
             size   = pop_millions)) +
  geom_point(shape = 1) +
  theme_bw()
