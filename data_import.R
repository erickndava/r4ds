library(tidyverse)
wards <- read_csv("wards.csv")
read_csv("a,b,c
         1,2,3
         4,5,6")
read_csv("The first line of meta data
         The second line of metadata
         x,y,z
         1,2,3", skip = 2)

read_csv("1,2,3\n4,5,6", col_names = FALSE)

read_csv("1,2,3\n4,5,6", col_names = c("X","y","Z"))
