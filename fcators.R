library(tidyverse)
library(forcats)

#Create factors
x1 <- c("Dec","Apr","Jan","Mar")
x2 <- c("Dec","Apr","Jam","Mar")

#Testing  sorting
sort(x1)

#Creating a factor
month_levels <- c("Jan", "Feb", "Mar", "Apr", "May","Jun", "Jul", "Aug", "Sep", "Oct", "Nov","Dec")

y1 <- factor(x1, levels=month_levels)
y1
sort(y1)

#How values not in the set are treated: as NA
y2 <- factor(x2, levels=month_levels)
y2

# Omiting the levels. Data will be taken in alp
factor(x1)

#order of levels to match order of appearance
f1 <- factor(x1, levels=unique(x1))
f1

#or as
f2 <- x1 %>% 
  factor() %>% 
  fct_inorder()
f2

levels(f2)

#Genetal Social Survey Data
View(gss_cat)

#To see categoric data in a tibble , use count() or bar_graph()
gss_cat %>% 
  count(race)

ggplot(gss_cat, aes(race))+geom_bar()

#Force drawing of levels without values
ggplot(gss_cat, aes(race))+geom_bar()+scale_x_discrete(drop=FALSE)

#Exercises
ggplot(gss_cat, aes(rincome))+geom_bar()

#Most common relig
gss_cat %>% 
  count(relig, sort=TRUE)

#Most common  party_id
gss_cat %>% 
  count(partyid, sort=TRUE)

#Which religion does demon apply to
gss_cat %>% 
  count(relig, sort=TRUE)

#Modify factor order.

#avg hours spend watching tv per day across religions
relig <- gss_cat %>% 
  group_by(relig) %>% 
  summarise(
    age=mean(age, na.rm=TRUE),
    tvhours=mean(tvhours,na.rm=TRUE),
    n=n()
      )

ggplot(relig,aes(tvhours,relig))+geom_point()

#Improved plot
ggplot(relig,aes(tvhours,fct_reorder(relig, tvhours)))+geom_point()

#improved code
relig %>%
  mutate(relig=fct_reorder(relig, tvhours)) %>% 
  ggplot(aes(tvhours,relig))+
  geom_point()

