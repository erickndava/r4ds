#Strig manipulation

str_to_upper(starwars$homeworld, locale="en")

star_wars <- starwars %>% 
  mutate(
    name_lower = str_to_lower(name),
    eye_color_upper = str_to_upper(eye_color)
    
  )

star_wars <- star_wars[c("name","eye_color","name_lower","eye_color_upper")]

#Pattern matching

str_count(star_wars$name,"e")

sum(str_count(star_wars$name_lower,"[^aeiou]"))