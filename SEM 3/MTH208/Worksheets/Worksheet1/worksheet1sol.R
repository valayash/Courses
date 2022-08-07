#Question 1

fact <- function(n)
{
  if(n == 1) return(1) 
  else return (n * fact(n-1))
}
var <- readline();
var <- as.integer(var);
fact(var)
fact(var)==factorial(var)

#Question 2

rhs <- function(n)
{
  return((1+1/n)^n)
}
var <- readline();
var <- as.integer(var);
rhs(var)

#Question 3

seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
var <- as.integer(readline("Enter Your Roll Number : "));

for(i in 1:nrow(seat))
{
  if(seat[i,1] == var)
  {
    cat("Your seat no is " , seat[i,2])
  }
}

#Question 4

seat <- read.csv("https://raw.githubusercontent.com/dootika/worksheet1-valayash/main/Worksheet1_sol/seating.csv?token=GHSAT0AAAAAABXGAFTSMQFYLH6NLLSUDY56YXIXKZQ")
seat
  
