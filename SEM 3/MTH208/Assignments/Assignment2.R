library(imager)
prop.colour <- function(img , col)
{
  cam.mat = as.array(img[ , ,1, ])
  dimen = dim(img)
  count = 0
  for(i in 1:dimen[1])
  {
    for(j in 1:dimen[2])
    {
      if(norm(cam.mat[i ,j, ] - col , type = "2") <= 0.5 )
      {
        count = count + 1
      }
    }
  }
  
  return((count)/ (dimen[1] * dimen[2]))
}

campus <- load.image("https://raw.githubusercontent.com/dootika/assignment-2-valayash/main/campus.jpeg?token=GHSAT0AAAAAABXUGOPTYFSSAD2HXR5TAAZKYX43I7Q")
prop.colour(campus , c(1,1,1))
