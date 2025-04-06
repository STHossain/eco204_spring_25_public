

# Point estimation

pbar <- 574/1007
n <- 1007
alpha <- 0.05

# Interval estimate

sderror_est <- sqrt(pbar*(1-pbar)/n)

moe <- qnorm(1-alpha/2) * sderror_est

ul <- pbar + moe
ll <- pbar - moe

## =========================================


# Poportion testing

library(readxl)
HomeState <- read_excel("HomeState.xlsx")

as.factor(HomeState$`Arkansas Residents Born Here?`)













