library(tidyverse)
library(gapminder)

gapminder
write_csv(gapminder, './gapminder.csv') #write_csv is to create a csv file 
view(gapminder)

# calculate mean life expectancy
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_life = mean(lifeExp))
view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>%
  ggplot(aes(continent, ave_life)) +
  geom_point() +
  theme_bw()
