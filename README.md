# Experiments-with-R
Contains code snippets that does mini experiments on datasets


1. Impact of the Civil War on the Rwandan Economy
Description: Adjusted Net National Income between the period 1970 and 2000 were collected(source World Bank databank). Using the matplot function, the net income based on year was plotted.

Method:
Matplot function was used to plot the data. Matplot function has been used only for learning purposes, and advanced plotting functions are obviously a better choice.

Insights:

It was observed that in 1991, the growing national income saw a drastic drop, and once again saw a massive drop in 1994. The Civil War in rwanda was restarted by Paul Kagame in 1991 and the world-famour Rwandan Genocide took place in 1994, which may have had a huge impact on the economy. (Source-https://en.wikipedia.org/wiki/Rwandan_genocide)

Folder: Impact of Genocide on rwandan Economy 

2. Mispricing Analysis 

Description: 
Using a dataset which contains information on the carat value, clarity (or grade) and price for various types of diamonds, 
an R snippet determines whether there has been a mispricing for a category(or grade) of diamonds.

Method:
Analyze diamond price based on diamond clarity(or grade) using ggplot2 package. 
A scatterplot is gnerated using ggplot2 package, overriding the plot defaults using aesthetic specifications(aes(), geom_point()). This enables us to clearly analyze the carat v/s price data based on clarity. 
Only statistically significant data is analyzed by limiting data in the 'data' specification. 
Average values are analyzed as smoothed curves using geom_smooth() 

The line at the top represents diamonds with highest clarity(IF), while the line at the bottom represents diamonds with lowest clarity (I1). The lines in between represent diamonds that fall within the intermediate clarity range. 
The principle behind deteccting mis-pricing is that, if the lines overlap, there is mis-pricing. 
It is observed that, at lower carat values, there is mispricing amongst almost all clarity types.
For IF clarity diamonds between calarity range 1.5 and 2.0, there is mis-pricing.
Lowest grade diamonds are clearly priced after carat value of 0.5

Files - diamond_mispricing_anlaysis.R, diamond-price-correl.csv, diamondRplot.jpeg
Info on diamond clarity: http://blog.longsjewelers.com/hs-fs/hub/323238/file-1856876318-jpg/DiamondClarity.jpg?t=1489087979876

3. Testing Law of Large Numbers

Description:
Normal distribution is certainly any OCD-lover's favorite. According to probability theory, 68% of the values in a standard normal distribution lie between -1 and 1.  In this test, we check whether the probability that all numbers obtained from a set of values which follow a normal distribution with mean=0, standard deviation =1 (standard normal distribution) approaches the value 68.2% as we increase the number of random numbers selected. 

Method:
rnorm(N) generates N randomly generated values that follow a normal distribution. 
N is supplied manually for various values. According to statistics, the 68% rule applies for data with N>30
A 'counter' variable records the number of values between -1 and 1
For loop is used to count each number between -1 and 1
IF statement within the FOR loop checks whether each of the numbers passed from the for loop is between -1 and 1
If value is between -1 and 1, increase counter by 1
Once the control exits the for loop, the counter value is divided by N.
The program is executed for various values of N and results are noted.

Observation:
For N=10, percentage =0.7
FOR N=30, percentage=0.73
For N=50000, percentage =68.1
As N approaches a very large number, most of the numbers fall between -1 and 1 with a probability of 68.2.


Files - LLN.R


4. Simulation of linar models

Description:

Simulating a linear model using R. The equation for a linear model is: y=Beta_zero + Beta_one*x + Epsilon
Assume Beta_zero= 0.75 and Beta_one=2

Case 1: if x is a random number following normal distribution, generated using rnorm

Result: The plot is evidently linear
summary(y) Min. 1st Qu. Median Mean -7.8000 -1.1290 0.8083 0.7435 3rd Qu. Max. 2.7600 6.3730

Case 2: if x is binary, generated using rbinom 

Result: The plot displays binary characteristics
summary(y) Min. 1st Qu. Median Mean -2.843 0.011 1.730 1.852 3rd Qu. Max. 3.473 8.614


5. Financial Statement Analysis

Description:

Data from an Auditing department is used to assess a financial statement of an organization. Two vectors supplied are: monthly revenue, monthly expenses for a financial year. Task is to calculate the following metrics:

Profit for each month
profit after tax for each month (tax rate=30%)
profit margin for each month(equals profit after tax divided by revenue)
good months (where profit after tax greater than the mean for the year)
bad months (where profit after tax less than the mean for the year)
the best month (profit after tax was max for the year)
the worst month (profit after tax was min for the year)
