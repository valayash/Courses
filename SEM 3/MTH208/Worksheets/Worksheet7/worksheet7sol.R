library(tidyverse)
library(rvest)

# Extracting code for a specific movie

html = read_html("https://www.imdb.com/chart/top/")
movies.code = html_elements(html , ".wlb_ribbon")
movies.code = html_attr(movies.code , "data-tconst")

for( i in movies.code)
{
   website = paste("https://www.imdb.com/title/" , i ,"/ratings/" ,sep ="")
   html = read_html(website)
   distr = html_table(html)
   rating1.10 = distr[[1]][ ,c(1,3)]
   
}

website = paste("https://www.imdb.com/title/" , "tt0111161" ,"/ratings/" ,sep ="")
html = read_html(website)
distr = html_table(html)
rating1.10 = distr[[1]][  ,c(1,3)]

