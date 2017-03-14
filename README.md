# playing-around-with-R
Contains code snippets that does mini experiments on datasets

1. Mispricing Analysis 

Description: 
Using a dataset which contains information on the carat value, clarity (or grade) and price for various types of diamonds, 
an R snippet determines whether there has been a mispricing for a category(or grade) of diamonds.

Method:
Analyze diamond price based on diamond clarity(or grade) using ggplot2 package. 
A scatterplot is gnerated using ggplot2 package, overriding the plot defaults using aesthetic specifications(aes(), geom_point()). This enables us to clearly analyze the carat v/s price data based on clarity. 
Only statistically significant data is analyzed by limiting data in the 'data' specification. 
Average values are analyzed as smoothed curves using geom_smooth() 

Insights:
The line at the top represents diamonds with highest clarity(IF), while the line at the bottom represents diamonds with lowest clarity (I1). The lines in between represent diamonds that fall within the intermediate clarity range. 
The principle behind deteccting mis-pricing is that, if the lines overlap, there is mis-pricing. 
It is observed that, at lower carat values, there is mispricing amongst almost all clarity types.
For IF clarity diamonds between calarity range 1.5 and 2.0, there is mis-pricing.
Lowest grade diamonds are clearly priced after carat value of 0.5

Files - mispricing_anlaysis.R, diamond-price-correl.csv, diamondRplot.jpeg
Info on diamond clarity: http://blog.longsjewelers.com/hs-fs/hub/323238/file-1856876318-jpg/DiamondClarity.jpg?t=1489087979876

