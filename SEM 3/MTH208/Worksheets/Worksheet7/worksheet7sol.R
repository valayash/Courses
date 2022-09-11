

library(tidyverse)
library(rvest)

html <- read_html("https://www.imdb.com/chart/top/")

#EScrapping Names of the movies
movies.name <- html  %>%  html_elements(".titleColumn a")  %>%  html_text()

#EScrapping Year of the movies
movies.year <- html  %>%  html_elements(".titleColumn .secondaryInfo")  %>%  html_text() %>%  substr(2 , 5)
<<<<<<< HEAD

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

=======

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

>>>>>>> f28b12ca1ed33ce4d0f819fc62d7db9343fb1ec8
# Extracting code for a specific movie
html = read_html("https://www.imdb.com/chart/top/")
movies.code = html  %>%  html_elements(".wlb_ribbon")  %>%  html_attr("data-tconst")

movies.vote.rat = data.frame()
movies.vote.gen = data.frame()
for( i in movies.code)
{
<<<<<<< HEAD
  website = paste("https://www.imdb.com/title/" , i ,"/ratings/" ,sep ="")
  html = read_html(website)
  distr = html_table(html)
  movies.vote.rat = rbind(movies.vote.rat , t(distr[[1]][ ,3]))
  movies.vote.gen = rbind(movies.vote.gen , t(distr[[2]][2:3, 2]))
  
=======
   website = paste("https://www.imdb.com/title/" , i ,"/ratings/" ,sep ="")
   html = read_html(website)
   distr = html_table(html)
   movies.vote.rat = rbind(movies.vote.rat , t(distr[[1]][ ,3]))
   movies.vote.gen = rbind(movies.vote.gen , t(distr[[2]][2:3, 2]))
   
>>>>>>> f28b12ca1ed33ce4d0f819fc62d7db9343fb1ec8
}

col.name = c("Movie" , "Year" , "Rating" , "No of Votes" , "10","9","8","7","6","5","4","3","2","1","Male Rating........................ No of Male Votes" , "Female Rating...................No of Female Votes")
movies = data.frame(movies.name,movies.year,movies.rating,movies.vote,movies.vote.rat,movies.vote.gen)
colnames(movies) = col.name
rownames(movies) <- 1:nrow(movies)
<<<<<<< HEAD
movies
save(movies , file = "movies_data.frame.Rdata")
=======
>>>>>>> f28b12ca1ed33ce4d0f819fc62d7db9343fb1ec8

#Problem2

html <- read_html("https://www.imdb.com/chart/top/")
images = html  %>%  html_elements("a img")  %>%  html_attr("src")
<<<<<<< HEAD
images
save(images  , file = "images.Rdata")
=======
>>>>>>> f28b12ca1ed33ce4d0f819fc62d7db9343fb1ec8

#Problem3

library(imager)
propo = numeric(250)
l=1
for(k in images)
{
  
  im = load.image(k)
  mat.im = as.array(im[,,1,])
  dimen = dim(mat.im)
  count = 0
  for( i in 1:dimen[1])
  {
    for (j in 1:dimen[2]) 
    {
      if( norm(mat.im[i,j,] - c(0,0,0) ,type = "2") == 0.2 )
      {
        count = count + 1
      }
    }
  }
  
  propo[l] = (count) / ( dimen[1] * dimen[2] )
  l = l+1
<<<<<<< HEAD
  
}
=======
   
}


im = load.image("https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX67_CR0,0,67,98_AL_.jpeg")
mat.im = as.array(im[,,1,])
dimen = dim(mat.im)
count = 0
for( i in 1:dimen[1])
{
  for (j in 1:dimen[2]) 
  {
    if( norm(mat.im[i,j,] - c(0,0,0) ,type = "2") == 0.2 )
      count = count + 1
  }
}

propo[1] = (count) / ( dimen[1] * dimen[2] )














>>>>>>> f28b12ca1ed33ce4d0f819fc62d7db9343fb1ec8

propo
save(propo , file = "proprtion.Rdata")
