library(imager)

#Question 1

dog <- load.image("https://raw.githubusercontent.com/dootika/worksheet-5-valayash/main/dog.jpeg?token=GHSAT0AAAAAABXTGDBCEOPPE5LWFQVGEX3KYXXHD6A")
plot(dog)
col.mat <- as.array(dog[,,1,])
rot.mat <- as.array(dog[,,1,])
xaxis_pix <- length(col.mat[,1,1]) 
yaxis_pix <- length(col.mat[1,,1]) 
xaxis_pix
yaxis_pix
for(i in 1:xaxis_pix)
{
  for(j in 1:yaxis_pix)
  {
    rot.mat[i,j,] = col.mat[xaxis_pix +1 -i , yaxis_pix + 1 -j , ]
  }
}
rotate = as.cimg(rot.mat)
plot(rotate)


#Question 2

data1 <- c(0)
data2 <- c(0)
ninety_deg <- array(c(data1, data2), dim = c(635,640,3))


for(j in 1:xaxis_pix)
{
  for(i in 1:yaxis_pix)
  {
    ninety_deg[i, j,] = col.mat[ 641 - j , i, ]
  }
}
plot(as.cimg(ninety_deg))

 
#Question 3

data1 <- c(0)
data2 <- c(0)
ninety_deg <- array(c(data1, data2), dim = c(635,640,3))


for(j in 1:xaxis_pix)
{
  for(i in 1:yaxis_pix)
  {
    ninety_deg[i, j,] = col.mat[ j , 636 -i, ]
  }
}
plot(as.cimg(ninety_deg))

#Question 4

im = as.cimg(col.mat[1:600 , 1:600 , ])
im = resize(im,round(width(im)/2),round(height(im)/2))
plot(im) 


#Question 5

im60 = as.cimg(col.mat[1:600 , 1:600 , ])
im60 = resize(im60,round(width(im60)/10),round(height(im60)/10))
plot(im60) 

