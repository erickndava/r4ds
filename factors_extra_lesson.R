library(tidyverse)
library(forcats)
library(gapminder)

View(gapminder)

gapminder %>% 
  count(continent) 

fct_count(gapminder$continent)
  
View(gss_cat)

#How many total observations are in the dataset
gss_cat

#How many levels for ech factor
gss_cat %>% 
  count(relig) #race, relig(ion)

relig_summary <- gss_cat %>% 
  group_by(relig) %>% 
  summarise(
    age=mean(age,na.rm=TRUE),
    tvhours=mean(tvhours, na.rm=TRUE),
      n=n()
  )

ggplot(relig_summary, aes(tvhours, relig))+geom_point()