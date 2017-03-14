# Reading the CSV file, interactively
mydata<-read.csv(file.choose())
mydata

# installing reqiured packages
install.packages("ggplot2")

# analysing carat v/s price and plotting the graph to analyse mispricing from the lines
ggplot(data=mydata[mydata$carat<2.5,],
       aes(x=carat,y=price, colour=clarity))  + 
  geom_point(alpha=0.1) + 
  geom_smooth()
