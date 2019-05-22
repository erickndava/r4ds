library(tidyverse)
library(nycflights13)

airlines %>% head(6)

airports %>% head(6)

planes %>% head(6)

weather %>% head(6)

#Investigating primary keys
planes %>% 
  count(tailnum) %>% 
  filter(n>1)

#mutating joins
flights2 <- flights %>% 
  select(year:day,hour,origin,dest,tailnum,carrier)
  View(flights2)
  
flights2 %>% 
  select(-origin,-dest) %>% 
  left_join(airlines, by="carrier")

#understanding joins
x <- tribble(
  ~key,~val_x,
  1,"x1",
  2,"x2",
  3,"x3"
)

y <- tribble(
  ~key, ~val_y,
  1,"y1",
  2,"y2",
  4,"y4"
)

x
y
j_inner_join <- x %>% 
  inner_join(y, by="key")

#outer joins
j_left_join <- x %>% 
  left_join(y, by="key")
  View(j_left_join)

j_right_join <- x %>% 
  right_join(y, by="key")
  View(j_right_join)
  
j_full_join <- x %>% 
  full_join(y, by="key")
  View(j_full_join)