
# set the working directory
setwd("E:/labclass2")


# load the Houston data set
library(readxl)
Houston <- read_excel("Houston.xlsx")

# print the working directory
getwd()


# print the amount variable
Houston$Amount


# let's create a data set and calculate mean and sd


mydata <- c(10, 20, 40, 60, 100)

mean(mydata) # this is calculating mean

sd(mydata) # this is calculating standard deviation



xbar <- mean(Houston$Amount)
s <- sd(Houston$Amount)




# Question 29 of Chapter 9.4

# a. 

# H0 : mu = 21.62
# Ha : mu not= 21.62

xbar <- mean(ResidentialWater$`Rate (5 CCF)`)
s <- sd(ResidentialWater$`Rate (5 CCF)`)
n <- length(ResidentialWater$`Rate (5 CCF)`)
alpha <- 0.05
mu0 <- 21.62

sderror_est <- s/sqrt(n)

tcalc <- (xbar - mu0)/sderror_est

# this is a two tail test, I need two t values
# which are t alpha/2 and t 1-alpha/2

t1 <- qt(alpha/2, n - 1)
t2 <- qt(1 - alpha/2, n - 1)

# since t1 < tcalc < t2, we accept the null


if ( (tcalc > t2) | (tcalc < t1) ) {
  print("Reject The Null") 
} else {
  print("Accept The Null")
}


# Question 31 of 9.4

# H0 : mu <= 9.5
# Ha : mu > 9.5


xbar <- 10.05
s <- 1.5
alpha <- 0.05
n <- 36
mu0 <- 9.5

sderror_est <- s / sqrt(n)

tcalc <- (xbar - mu0) / sderror_est


# this is an upper tail test, so we need
# t 1-alpha

tcritical <- qt(1-alpha, n - 1)

# since tcacl > tcritical we reject the null


if (tcalc > tcritical) {
  print("Reject the Null")
} else {
  print("accept the Null")
}






















