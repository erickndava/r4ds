library(tidyverse)

df <- tibble(
	a=rnorm(10),
	b=rnorm(10),
	c=rnorm(10),
	d=rnorm(10)
	)

#median for each column, using copy and paste
median(df$a)
median(df$b)
median(df$c)
median(df$d)

# Using iteration
output <- vector("double",ncol(df)) 	# 1.output
for (i in seq_along(df)){				# 2. sequence
	ouput[[i]] <- median(df[[i]])    	# 3. body
 }
output


#sequence analysis
y <- vector("double",0)
seq_along(y)
1:length(y)

#exercises
# 1.a

mtcars_val <- vector("double",ncol(mtcars))
for (i in seq_along(mtcars)){				
  mtcars_val[[i]] <- mean(mtcars_val[[i]])
}
mtcars_val
