library(tidyverse)

stocks <- tibble(
  year = c(2015, 2015, 2016, 2016),
  half=c(1, 2, 1, 2),
  return=c(1.88, 0.59, 0.92, 0.17)
)
stocks %>% 
  spread(year, return) %>% 
  gather("year","return","2015":"2016")


#Question 4
preg <- tribble(
  ~pregnant, ~male, ~female,
  "yes", NA, 10,
  "no", 20, 12
)
preg

#Exercises separate()
library(tidyverse)
tibble(x=c("a,b,c", "d,e,f,g","h,i,j")) %>% 
  separate(x, c("one","two","three"), remove = FALSE)
