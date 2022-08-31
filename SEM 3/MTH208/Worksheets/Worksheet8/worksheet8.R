library(dplyr)
starwars

dim(starwars)

filter(starwars ,skin_color == "light" ,  eye_color == "brown")

slice(starwars , 5:10)
slice_sample(starwars ,n =  5)
slice_head(starwars , n = 10)
slice_tail(starwars , n = 3)
slice_sample(starwars , prop = 0.1)

filter(starwars , is.na(height))

  