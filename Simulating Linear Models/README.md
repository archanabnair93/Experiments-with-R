Description:

Simulating a linear model using R. The equation for a linear model is:
y=Beta_zero + Beta_one*x + Epsilon

Assume Beta_zero= 0.75 and Beta_one=2

Case 1: if x is a random number following normal distribution, generated using rnorm 

Result: The plot is evidently linear

> summary(y)
   Min. 1st Qu.  Median    Mean 
-7.8000 -1.1290  0.8083  0.7435 
3rd Qu.    Max. 
 2.7600  6.3730 
 
Case 2: if x is binary, generated using rbinom 
Result: The plot displays  binary characteristics

>summary(y)
   Min. 1st Qu.  Median    Mean 
 -2.843   0.011   1.730   1.852 
3rd Qu.    Max. 
  3.473   8.614 
