text_output <- function(){
	"Do you like apples?"
}
text_output()

addition_result <- function(){
	20+612
}
addition_result

funky <- function(){
  
  "Hello World function"
}
funky()

help <- function(){
  "Help here. Looking for a way out"
}
help()

foo <- function(){
  21+6-3
  }

foo()

text_single_arg <- function(x){
  paste("The",x,"in Spain falls mainly on the plain")
}

text_single_arg("rain")

add_single_arg <- function(y){
  y+22
}
add_single_arg(41)

subt_single_arg <- function(z){
  98-z
}
subt_single_arg(3)

text_two_args <- function(name, state){
  paste(name,",I've a feeling we are not in", state," anymore.",sep = "")
}

text_two_args("Toto","Kensas")

add_two_args <- function(a, b){
  a+42+b
}
add_two_args(12, 124)

subt_two_args <- function(x, y){
  100-x-y
}
subt_two_args(100, 100)

quadratic <- function(a,b,c){
  (-b+sqrt(b*b-4*a*c))/(2*a)
}
quadratic(3,4,5)


##More functons lessons from DataCamp material
myFirstFun <- function(n){
  #compute the square of an integr
  n*n
}

k <- 10
myFirstFun(k)