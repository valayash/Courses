#Defining a function tennis which return no of games
tennis <- function( p )
{
  x = 1
  sum = 0
  
  while( x <= 5 )
  {
    sum = sum + rbinom( n = 1 , size = 1 , prob = p )
    
    if(sum >=3 )
    {
      return(x)
    }
    x = x + 1
  }
  return(x-1)
}
tennis(0.7)

#creating a vector of length 1000 with initial value 0
matches <- numeric(1000)

#Doing experiment 1000 times with the probablity 0.7 to get a average value of matches
for(i in 1:1000)
{
  matches[i] <- tennis(0.7)
}
ans <- mean(matches)

  