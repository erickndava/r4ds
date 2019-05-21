#Case Study with WHO TB Data
library(tidyverse)

View(who)

who1 <- who %>% 
  gather(
    new_sp_m014:newrel_f65, key = "key", 
    value = "cases",
    na.rm = TRUE
  )
View(who1)

who1 %>% 
  count(key)

who2 <- who1 %>% 
  mutate(key = stringr::str_replace(key, "newrel","new_rel"))

View(who2)

who3 <- who2 %>% 
  separate(key,c("new","type","sexage"), sep="_")

View(who3)

who4 <- who3 %>%
  select(-new,-iso2,-iso3)

View(who4)

#Separate sexage into sex and age
who5 <- who4 %>% 
  separate(sexage, c("sex","age"),sep=1)

View(who5)

#The Separate code all together
who6 <- who %>% 
  gather(code,value,new_sp_m014:newrel_f65,na.rm=TRUE) %>% 
  mutate(
    code=stringr::str_replace(code, "newrel","new_rel")
  ) %>% 
  separate(code,c("new","var","sexage")) %>% 
  select(-new,-iso2,-iso3) %>% 
  separate(sexage,c("sex","age"),sep=1)
View(who6)

#Exercise
country_count <- who1 %>%
  group_by(country, year, sex) %>% 
  filter(year>1995)
  summarise(cases=sum(cases))
  