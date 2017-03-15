1. Testing Law of Large Numbers

Description: Normal distribution is certainly any OCD-lover's favorite. According to probability theory, 68% of the values in a standard normal distribution lie between -1 and 1. In this test, we check whether the probability that all numbers obtained from a set of values which follow a normal distribution with mean=0, standard deviation =1 (standard normal distribution) approaches the value 68.2% as we increase the number of random numbers selected.

Method: rnorm(N) generates N randomly generated values that follow a normal distribution. N is supplied manually for various values. According to statistics, the 68% rule applies for data with N>30 A 'counter' variable records the number of values between -1 and 1 For loop is used to count each number between -1 and 1 IF statement within the FOR loop checks whether each of the numbers passed from the for loop is between -1 and 1 If value is between -1 and 1, increase counter by 1 Once the control exits the for loop, the counter value is divided by N. The program is executed for various values of N and results are noted.

Observation: For N=10, percentage =0.7 FOR N=30, percentage=0.73 For N=50000, percentage =68.1 As N approaches a very large number, most of the numbers fall between -1 and 1 with a probability of 68.2.

Files - LLN.R
