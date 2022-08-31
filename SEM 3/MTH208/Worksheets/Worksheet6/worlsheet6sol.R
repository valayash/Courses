library(tidyverse)
library(rvest)

#Reading html file from website
html <- read_html("https://www.iitk.ac.in/math/faculty")
name <- html %>% html_elements(".head3") %>%  html_elements( "a") %>%  html_text()

#Problem1

html.postdoc = read_html("https://www.iitk.ac.in/math/visitors-post-doctoral-fellow")
postdoc.name <- html.postdoc %>% html_elements(".head2") %>% html_text()
 

#Problem2

html <- read_html("https://www.imdb.com/chart/top/")
movies.name <- html  %>%  html_elements(".titleColumn a")  %>%  html_text()

#Problem3

#We have already extract names

#Scrapping Year for the movies
movies.year <- html  %>%  html_elements(".titleColumn .secondaryInfo")  %>%  html_text() %>%  substr(2 , 5)

#Scrapping rating of the movies
movies.rating <- html  %>%  html_elements(".ratingColumn strong")  %>%  html_text()

#Scraping Number of votes
movies.vote <- html  %>%  html_elements(".posterColumn span")  %>%  html_attr("data-value")
vote = numeric(250)
i = 4
j = 1
while(i < 1250)
{
 
    vote[j] = movies.vote[i]
    j = j + 1
    i = i + 5
 
}
movies.vote = vote

#Creating a DataFrame 
row.names = c("Movie Name" , "Year Released" , "Rating" , "No. of Total Votes")
df = data.frame(movies.name , movies.year , movies.rating , movies.vote )
colnames(df) = row.names

























