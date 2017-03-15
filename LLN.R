# declaring the number of randomly generated numbers
# try values 10, 30, 50, 1000, 5000, 10000,95000
N<-50000
# using rnorm function, get N random numbers 
# from set of normally distributed values
x<-rnorm(N)
counter<-0
for(i in x)
{
  if((i>-1)&(i<1))
  {
    counter<-counter+1   #increase counter each time program encounters number between -1 and 1
  }
}
percentage <- counter/N 
percentage

