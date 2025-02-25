
#==============================================================================
## Section 2
#==============================================================================





# question 3
#--------------------
# generate random numbers from the normal distribution with mean 10 and variance 2 and save in data

sample_size <- 100 # set the sample size
data <- rnorm(n = sample_size, mean = 10, sd = sqrt(2))

# plot the histogram
hist(data)

# you can check the beans by the str() function
str(hist(data))



# question 4
#--------------------
# We need to calculate the probability P(X <= 21), when X is a random variable from the normal distribution with mean 20 and variance 3.

pnorm(q = 21, mean = 20, sd = sqrt(3))
# the answer is 0.7181486



# question 5
#--------------------
# here we need to calculate .95 quantile or 95th percentile of the normal distribution with mean 20 and variance 3, 



qnorm(p = 0.95, mean = 20, sd = sqrt(3))
# the answer is 22.84897



