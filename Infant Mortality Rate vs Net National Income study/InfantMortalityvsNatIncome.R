
# Comparison of Economies based on Infant Mortality rate(per 1000 live births)
# and Adjust Net National Income(current US $)
# and studying the presence of correlation
# Note: 156 countries with complete data(2014) were selected for this study
# The income values were sorted in ascending order  prior to import to ease the visualization process
# Source: databank.worldbank.org  
# Database: World Development Indicators 

library(xlsx)
library(ggplot2)
data <- read.xlsx("InfantMortalityvsNationalIncome.xlsx",sheetIndex = 1)
data

# Formatting the large currency values to 2 digits
data$AdjNetNatIncome<-format(round(data$AdjNetNatIncome/ 1e9, 3), trim = TRUE)
# Converting the income values from char to numeric
data$AdjNetNatIncome<-as.numeric(data$AdjNetNatIncome)
# Veriying that the variables are in desirable data types
str(data)
# Studying the nature of data
head(data)
View(data[1:101,])
str(data)
max(data$InfantMortalityRate)
min(data$InfantMortalityRate)
min(data$AdjNetNatIncome)
# 1 Plotting National income against Infant mortality rate
p <- ggplot(data=data, aes(x=AdjNetNatIncome,y=InfantMortalityRate,main="Net National Income vs Infant Mortality Rate", color=Income.Group))
p+geom_point(alpha=I(0.4))

# To analyze lower Net National Income countries, within 100 range
# Plotting National income against Infant mortality rate for Income<100
q <- ggplot(data=data[1:101,], aes(x=AdjNetNatIncome,y=InfantMortalityRate,main="Net National Income vs Infant Mortality Rate", color=Income.Group))
q+geom_point(alpha=I(0.4))

# Observations:

# Countries with minimum and maximum infant mortality rates
data[data$InfantMortalityRate==max(data$InfantMortalityRate),]
# Central African Republic has max of 93.5 deaths per 1000 live births and falls in low income group
data[data$InfantMortalityRate==min(data$InfantMortalityRate),]
# Luxemburg has minimum deaths (1.6) per 1000 live births, and falls in High Income group

# High Income groups have a very low infant mortality rate
# Likely to fall within the 0-20 range
# Upper Middle Income group is more likely to fall below 25
# with some countries within 25 and 50 deaths per 1000 births
# Observed that Gunea is an exception of a country in Upper middle income
# which has a 70 mortality rate. 
data[data$InfantMortalityRate>65& data$Income.Group=="Upper middle income",]

#  External research showed that 2014
#  showed the lowest mortality rate between 2000 and 2014
#  indicating the improvement of healthcare through the years
# Lower moddle income countries generally fell between 10 and 25
# with fewer countries between 25 and 50, and very few between 50 and 70
# Typically, countries in lower middle income group with a National income above 50
# fell in the 25-50 range. 

data[data$InfantMortalityRate<25& data$Income.Group=="Lower middle income"& data$AdjNetNatIncome>50&data$AdjNetNatIncome<75,]
# Sri Lanka is likely to have an exceptional healthcare environment 
#   since it falls in the lower middle income group

# Low income Groups
# As Previously observed, Central African Republic has highest mortality
data[data$InfantMortalityRate>65& data$Income.Group=="Low income",]

# From the plot, most deaths are within 50 and 75 range
#and fewer within 25-59 and 75+ range
# To analyse which country is likely to have the best healthcare facilities 
#  in this Income group, despite the low income
# method: store low income countries data in variable "aa"
aa<-data[data$Income.Group=="Low income",]
nrow(aa)
# display lowest mortality rate in aa

aa[aa$InfantMortalityRate==min(aa$InfantMortalityRate),]
# Result is Nepal
nrow(data$Income.Group)

# 2 Observing Income Groups distribution

f<-ggplot(data=data[1:101,], aes(x=Income.Group))
f+geom_bar(color="steelblue2", fill="turquoise3")

# Observation
#most countries fall into Lower middle income category
# Upper middle and low income categories have almost same number of countries
#There are very few high income countries in this dataset



# 3 Faceting based on Income Groups

g<- ggplot(data=data[1:105,], aes(x=AdjNetNatIncome, y=InfantMortalityRate,color=Income.Group))
g + geom_point() + facet_grid(Income.Group~.)

# Observations 
# High Income Group countries fall within 25
# Low income groups fall above 25
# Lower middle income group falls within 75. Higher national income shows some positive impact on mortality
# Upper middle income typically falls below 25
