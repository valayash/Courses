#Question 1

seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
cat("Number of MSc Student is",nrow(subset(seat ,substring(seat[,1] ,1 , 2) == "22")))


#Question 2

cricket <- read.csv("https://dvats.github.io/assets/course/mth208/battingbowling.csv")

#Creating a Subset using given condition with the help of subset()
allrounder <- subset(cricket, Bowling < 40 & Batting > 25)

#Finding number of Allrounder per team
count_allround <- function(country)
{
  count = 0
  for(i in 1:nrow(allrounder))
  {
    if(allrounder[i,4] == country)
    {
      count <- count + 1
    }
  }
  
  return(count)
}

india_allround = count_allround("India")
aust_allround = count_allround("Australia")
eng_allround = count_allround("England")
new_allround = count_allround("New Zealand")
paki_allround = count_allround("Pakistan")
south_allround = count_allround("South Africa")


#making an dataframe for the number of allrounder
no_allround = c(india_allround , aust_allround , eng_allround , new_allround , paki_allround , south_allround )
country = c('India' , 'Australia' , 'England' , 'New Zealand' , 'Pakistan' , 'South Africa')
df <- data.frame(country , no_allround)

cat("Maximum number of" , df[which.max(df[,2]),2] , "are there in " , as.character(df[which.max(df[,2]),1]))
cat("and minimum number of" , df[which.min(df[,2]),2] , "are there in " , as.character(df[which.min(df[,2]),1]))

#Question 3

x <- c(1,2,3,4,5,6)
plot(x,type="l")

#Question 4

x <- seq(0.0000001,1000,0.01) 
y <-  (1+1/x)^x
plot(x,y,type="l")
abline(h=exp(1),col="red")

