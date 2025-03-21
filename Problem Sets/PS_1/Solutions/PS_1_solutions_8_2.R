
#=================================
# ---- Solutions of Ps - 1--------
#=================================



#=============Ch - 8.2 (13, 14, 16, 17, 20, 21) 

#=========== Answer to Question 13. 

# following code will clear the env but you can also click the jharu
rm(list = ls())

# We need to create a vector in R here
# We can create the vector using c() function

data <- c(10, 8, 12, 15, 13, 11, 6, 5)

n <- length(data)
xbar <- mean(data)
s <- sd(data)
alpha <- 0.05

# a. point estimate of the population mean is xbar
xbar

# so the answer is 10

# b. point estimate of the population sd is s
s

# so the answer is 3.464102

# c. at 95% confidence the moe is 

sderror_est <- s / sqrt(n)
moe <- qt(1 - alpha/2, n - 1) * sderror_est

moe

# so the answer is 2.896061

# d. we already know xbar and moe, so we can calculate the conf interval

ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# so the confidence interval is (7.103939, 12.896061)


#=========== Answer to Question 14.
# following code will clear the env but you can also click the jharu
rm(list = ls())


n <- 54
xbar <- 22.5
s <- 4.4

sderror_est <- s / sqrt(n)

# We have different alpha for question a, b and c, moe will be different

# a. here alpha <- 0.10

alpha <- .10
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate
# so the confidence interval is (21.4976, 23.5024)

# b. 

alpha <- .05
moe <- qt(1-alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate
# so the confidence interval is (21.29903, 23.70097)

# c. 

alpha <- .01
moe <- qt(1-alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate
# so the confidence interval is (20.90021, 24.09979)





#=========== Answer to Question 16.
# following code will clear the env but you can also click the jharu
rm(list = ls())

# This is a data problem
# so we need to change the directory and load the data
setwd("give the path")

# go to working directory and import the data corporate bonds

# load the data 


# when you import R will automatically run following 3 commands

library(readxl)
CorporateBonds <- read_excel("CorporateBonds.xlsx")
View(CorporateBonds) 

# Now we have the data
# create an object data for years to maturity and yield

data_maturity <- CorporateBonds$`Years to Maturity`
data_yield <- CorporateBonds$Yield


# now we can start solving problems

# a. 

mean(data_maturity)
sd(data_maturity)

# so the answer is sample mean = 9.70625 years and sample sd = 7.980523 years

# b. 

n <- length(data_maturity)
xbar <- mean(data_maturity)
s <- sd(data_maturity)
sderror_est <- s / sqrt(n)

alpha <- .05
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# so the 95% confidence interval for the population mean years to maturity is (7.153955, 12.258545)

# c. 

mean(data_yield)
sd(data_yield)


# so the answer is sample mean = 3.88535 % and sample sd = 1.619403 %


# d. 

n <- length(data_yield)
xbar <- mean(data_yield)
s <- sd(data_yield)
sderror_est <- s / sqrt(n)

alpha <- .05
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# so the 95% confidence interval for the population mean yield is (3.36744, 4.40326)

#=========== Answer to Question 17.
# following code will clear the env but you can also click the jharu
rm(list = ls())

# since we already did setwd (), we don't need to do it again.
# we can see the data in Files ... have a look

# load the data Miami

# craete a data object


data <- Miami$Rating



# same pattern

n <- length(data)
xbar <- mean(data)
s <- sd(data)
sderror_est <- s / sqrt(n)

alpha <- .05
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# so the 95% confidence interval is (5.725322, 6.954678)

#=========== Answer to Question 20.
# following code will clear the env but you can also click the jharu
rm(list = ls())


# load the data and save it as a data object
data <- AutoInsurance$`Annual Premium`

# a. point estimate is simply xbar
mean(data)

# so the answer is 2551

# b. we need to develop a 95% confidence interval

n <- length(data)
xbar <- mean(data)
s <- sd(data)
sderror_est <- s / sqrt(n)

alpha <- .05
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# so the 95% confidence interval is (2409.984, 2692.016)


# c. Here we need to check whether 1503 falls in the above interval
# Ans: Clearly 1503 (mean of entire US automobile) does not fall into this interval
# So perhaps we can say that the Michgan's data is not a good representative of the entire US

#=========== Answer to Question 21.
# following code will clear the env but you can also click the jharu
rm(list = ls())


# load the data Telehealth and save it as a data object
data <- TeleHealth$`Savings per Visit ($)`


# we need to develop a 95% confidence interval

n <- length(data)
xbar <- mean(data)
s <- sd(data)
sderror_est <- s / sqrt(n)

alpha <- .05
moe <- qt(1 - alpha/2, n - 1) * sderror_est
moe


ll <- xbar - moe
ul <- xbar + moe

interval_estimate <- c(ll, ul) # c() function creates a vector of the two limits
interval_estimate

# The 95% confidence interval for the mean savings for a televisit to the doctor as opposed to an office visit is (60.53929 81.46071)


