library(tidyverse)
library(lubridate)
library(nycflights13)

today()
now()

ymd("2019.06.19")
ymd(20190619)

ymd_hms("20190615 08:10:12", tz="UTC")

#date time components spread across multiple  columns
dtflights <- flights %>% 
  select(year, month, day, hour, minute)
  View(dtflights)

dtflights2 <- flights %>% 
    select(year, month, day, hour, minute) %>% 
   mutate(
     departure = make_datetime(year, month, day, hour, minute)
   )

View(dtflights2)


  