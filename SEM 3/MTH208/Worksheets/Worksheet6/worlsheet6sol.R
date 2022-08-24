library(tidyverse)
library(rvest)

#Reading html file from website
html <- read_html("https://www.iitk.ac.in/math/faculty")

name <- html_elements(html, ".head3")
name <- html_elements(name, "a")
name <- html_text(name)


#Problem1

html.postdoc = read_html("https://www.iitk.ac.in/math/visitors-post-doctoral-fellow")
postdoc.name <- html_elements(html.postdoc , ".head2")
postdoc.name <- html_text(postdoc.name)

#Problem2

html.movies <- read_html("https://www.imdb.com/chart/top/")
movies.name <- html_elements(html.movies , ".titleColumn")
movies.name <- html_elements(movies.name , "a")
movies.name <- html_text(movies.name)

#Problem3

#We have already extract names

#Scrapping Year for the movies
html.movies <- read_html("https://www.imdb.com/chart/top/")
movies.year <- html_elements(html.movies , ".titleColumn")
movies.year <- html_elements(movies.year , ".secondaryInfo")
movies.year <- html_text(movies.year)
movies.year <- substr(movies.year , 2 , 5)

#Scrapping rating of the movies

html.movies <- read_html("https://www.imdb.com/chart/top/")
movies.rating <- html_elements(html.movies , ".ratingColumn strong")
movies.rating <- html_text(movies.rating)

#Scraping Number of votes

html.movies <- read_html("https://www.imdb.com/chart/top/")
movies.vote <- html_elements(html.movies , ".posterColumn span")
movies.vote <- html_attr(movies.vote , "data-value")
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



























