library(tidyverse)
as_tibble(iris)
tibble(x=1:5,
       y=1,
       z=x^2+y
       )

tb <- tibble(
  ':)'="smile",
  ' '="space",
  '2000'="number"
)
tb
tribble(
  ~x,~y,~z,
  #--/--/----
  "a",2,3.6,
  "b",1,8.5
)
tibble(
  a=lubridate::now()+runif(1e3)+86400,
  b=lubridate::today()+runif(1e3)+30,
  c=1:1e3,
  d=runif(1e3),
  e=sample(letters, 1e3, replace = TRUE)
)

nycflights13::flights %>% 
  View()

class(as.data.frame(tb))
mtcars;
cars_tibble <- as_tibble(mtcars)
cars_tibble
