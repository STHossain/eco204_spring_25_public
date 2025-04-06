
# Math 1


setwd("D:/228")

library(readxl)

Houston <- read_excel("Houston.xlsx")

xbar <- mean(Houston$Amount)
s <- sd(Houston$Amount)
n <- 64
alpha <- 0.05

sderror_est <- s/sqrt(n)

moe <- qt(1-alpha/2, n-1) * sderror_est

ul <- xbar + moe
ll <- xbar - moe

# Math 3

# H0 : mu <= 30
# Ha : mu > 30

library(readxl)
ChildCare <- read_excel("ChildCare.xlsx")


xbar <- mean(ChildCare$`Hours Spent in Child Care`)
 s <- sd(ChildCare$`Hours Spent in Child Care`)
 
 n <- length(ChildCare$`Hours Spent in Child Care`)
 
 mu0 <- 30
 
 
 sderror_est <- s/sqrt(n)
 
tcalc <- (xbar - mu0)/sderror_est

pvalue <- 1 - pt(abs(tcalc), n - 1)


























