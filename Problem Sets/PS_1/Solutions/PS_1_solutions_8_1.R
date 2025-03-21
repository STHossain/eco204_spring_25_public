
#=================================
# ---- Solutions of Ps - 1--------
#=================================



#=============Ch - 8.1 (1, 2, 3, 4, 5, 9, 10) 

#=========== Answer to Question 1. 

#  DIY (Do It Yourself)

#=========== Answer to Question 2. 

n <- 50
sigma <- 6
xbar <- 32

sderror <- sigma / sqrt(n)

# a.
alpha <- .10
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate

# so the 90% confidence interval is (30.60, 33.39)


#---------------------------------------------------------

# clear the directory and then start b
# b.


n <- 50
sigma <- 6
xbar <- 32

sderror <- sigma / sqrt(n)

# a.
alpha <- .05
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate
# so the 90% confidence interval is (30.33, 33.66)

#------------------------------------------------------

# clear the directory
# c.


n <- 50
sigma <- 6
xbar <- 32

sderror <- sigma / sqrt(n)

# a.
alpha <- .01
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 

# so the 90% cofidence interval is (29.81434, 34.18)

#--------------------------------------------------------



#=========== Answer to Question 3. 

# clear the environment 

n <- 60
sigma <- 15
xbar <- 80

sderror <- sigma / sqrt(n)

# a.
alpha <- .05
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 


# so the 90% confidence interval is (76.20455, 83.79545)

#----------------------------------------------------

# b.
n <- 120
sderror <- sigma / sqrt(n)

alpha <- .05
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 

# so the 90% confidence interval is (77.31621, 82.68379)

# c. So we see that confidence interval is becoming narrower as we increase
# the sample size




#=========== Answer to Question 4. 
# clear the environment

# from simple algebra, we can see that ul - ll = moe
# and using some rearrangement we see that n = (sigma / moe)^2 * qnorm(1 - alpha/2)^2

ul <- 160
ll <- 152
sigma <- 15
alpha <- .05

moe <- ul - ll
n <- (sigma / moe)^2 * qnorm(1 - alpha/2)^2

n

# so roughly the sample size is 14



#=========== Answer to Question 5.
# This is an application problem so we need to 
# do some additional steps

# step - 1.  clear the environment

# step - 2. set the working directory

setwd(" give your path ..... ")

# step - 3. Go to more and click "Go to working directory"

# step - 4. You should see all the data sets, click Houston and Click "import dataset"

# step - 5 select import and now you should see the dataset in the environement


# Note that you don't have to run the following codes, Rstudio will
# automatically Run the codes for you
# So we can run these 3 commands and we will get
# exactly same result


library(readxl)
Houston <- read_excel("Houston.xlsx")
View(Houston) 


# step - 6 save the variable of the data set in a object called data 

data <- Houston$Amount

# Now all our information is in data, and we can start our problem
# Now everything will be very similar

n <- length(data)
sigma <- 6
xbar <- mean(data)

sderror <- sigma / sqrt(n)

# a.
alpha <- .01
moe <- qnorm(1 - alpha/2) * sderror
moe
# so the margin of error is 1.931872

# b. 

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 

# so the 90% confidence interval is (19.58813, 23.45187)

#=========== Answer to Question 9.

# clear the environment following command will also work
# Run the following command or hit the broom icon in Environment pane 
rm(list=ls())


# first we will calculate the confidence interval using 
# sample mean of damage cost from all causes

n <- 55
sigma <- 3027
xbar <- 11389

sderror <- sigma / sqrt(n)


alpha <- .05
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 

# in this case the confidence interval is (10589.02, 12188.98)

#=========================================
# now we will load the data set and calculate the confidence interval again

# clear the environment
rm(list = ls())

# Now we don't need to change the directory again because we need to do it once

# run getwd() to see this
getwd()

# import the data set 

library(readxl)
TobaccoFires <- read_excel("TobaccoFires.xlsx")
View(TobaccoFires)  


# make a data object
data <- TobaccoFires$`Smoke and Fire Cost`



n <- length(data)
sigma <- 3027
xbar <- mean(data)

sderror <- sigma / sqrt(n)


alpha <- .05
moe <- qnorm(1 - alpha/2) * sderror

# lower limit
ll <- xbar - moe

# upper limit
ul <- xbar + moe

interval_estimate <- c(ll, ul) 
interval_estimate 

# in this case the confidence interval is (18300.02, 19899.98)

#=========== Answer to Question 10.

# DIY
