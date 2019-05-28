#Learning more on joins
#Source stat545.com/bit001_dplyr-cheatsheet.html

library(tidyverse)

#the data

superheroes <- "
  name,     alignment,  gender,   publisher
  Magneto,  bad,  male, Marvel
  Storm,  good, female, Marvel
  Mystique, bad,  female, Marvel
  Batman, good, male, DC
  Joker,  bad, male, DC
  catwoman, bad, female, DC
  Hellboy,  good, male, Dark Horse Comics
"

superheroes <- read_csv(superheroes, skip = 1)

publishers <- "
  publisher,  yr_founded
  DC, 1934
  Marvel, 1939
  Image, 1992
"

publishers <- read_csv(publishers, skip =1)

View(superheroes)
View(publishers)

#Inner Join: returns one row of x, for each matching row of y. A mutating join.

superheroes
inner_join(superheroes,publishers)

superheroes %>% 
    inner_join(publishers, by="publisher")

#Semi_join (x,y): does not duplicate rows of x. it is a filtering join.

superheroes
superheroes %>% 
  semi_join(publishers)

#------------Left Join

superheroes
superheroes %>% 
  left_join(publishers)

#Antijoin

superheroes %>% 
anti_join(publishers)

#Joins with publishers as reference tibble

publishers %>% 
  inner_join(superheroes)

full_join(superheroes,publishers)
