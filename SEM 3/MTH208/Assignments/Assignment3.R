library(tidyverse)
library(rvest)

#Extracting html page
html = read_html("https://www.icc-cricket.com/rankings/womens/player-rankings/odi/batting")

#Scrapping player data in the from of table
df.player = html_table(html)

#Getting require data and deleting other data
df.player = df.player[[1]][ , 2:4]

#Making a data frame of all data's
icc_rank = data.frame(df.player)

#Adding a Ranking Column
icc_rank = cbind(Ranking = c(1:100), icc_rank)

icc_rank

