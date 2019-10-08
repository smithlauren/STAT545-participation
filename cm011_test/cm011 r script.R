library(tidyverse)
library(gapminder)
library(here)

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


#read_csv can read from url, but read_excel
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
file_name <- basename(data_url)
download.file(url = data_url,
              destfile = paste(here::here("cm011_test", file_name)))

library(readxl)
philanthropists <- read_excel(here::here("cm011_test", file_name))




mri_file = here("cm011_test", "Firas-MRI.xlsx")
mri <- read_excel(mri_file)
mri
mri <- mri[,-10]

mri <- mri %>%
  pivot_longer(cols = "Slice 1":"Slice 8", 
               names_to = "slice_no",
               values_to = "value")
view(mri)






