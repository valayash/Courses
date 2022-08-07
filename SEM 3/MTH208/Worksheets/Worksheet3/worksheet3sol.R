#Question 1a

for_head <- rbinom( 1000, 1, 0.5)
for_head
sum(for_head)/ 1000

#Question 1b

for_head <- rbinom( 1000, 1, 0.3)
for_head
sum(for_head)/ 1000

#Question 2a

sample( n <- c('r', 'g', 'b') , size <- 1 , prob = c( 3/7 , 2/7 , 2/7))

#Question 2b

i = 1
A <- matrix(c(3, 1, -2, 4, 5, 3, -1, 2, -2), nrow <- 3, ncol <- 3)

col_norm <- c(norm(A[ , 1], "2") , norm(A[ , 2], "2") , norm(A[ , i], "2"))
p <- norm(A[ , i], "2")/ sum(col_norm)
p

#Question 2c

#Length of thread is 5 so we are taking one of the point of it as origin and other as x=5
runif(n=1 , min =0 , max =5)

#Question 3a


countnum <- function()
{
  sum_prob <- 0
  count <- 0 
  while(sum_prob < 1)
  {
    #We are using runif so we can get any value between 0 and 1
    sum_prob = sum_prob + runif( n <- 1 , min <- 0 , max <- 1 )
    count <- count + 1
  }
  
  return(count)
}

countnum()

#Question 3b

vec <- numeric(1000)

#Assigning number of random draws to numeric vector of length 1000 using for loops
for( i in 1:1000 )
{
  vec[i] <- countnum()
}

vec

#Question 3c

#calculating the value of mean of the vec
cat("Mean of the vector is" , mean(vec) , "which is close to e whose value is" , exp(1))

#Question 4a


attempts <- function(age)
{
  att = 0
  while(age > 1)
  {
  
    age = age - sample( x = 1:age , size = 1)
    att = att + 1
    #print(age) 
  }
  
  return(att)
}

cat("Attempts take to blow all candle is" , attempts(25))

#Question 4b

candle_dis <- numeric(1000)
for( i in 1:1000 )
{
  candle_dis[i] <- attempts(25)
}

cat("Average time for blow all candle is" ,mean(candle_dis))



#Question 4c

mean(candle_dis)

#Question 4d

candle_dis <- numeric(1000)
for( i in 1:1000 )
{
  candle_dis[i] <- attempts(30)
}

#candle_dis
cat("Average time for blow all candle is" ,mean(candle_dis))













