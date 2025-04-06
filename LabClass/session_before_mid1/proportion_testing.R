

n <- 60
pbar <- .35

# a 

# total 21 employees

# b

# H0 : p >= .46
# Ha : p < .46

p0 <- .46 
# sderror_est <- sqrt(pbar*(1-pbar)/n) # this is wrong in testing

sderror <- sqrt(p0*(1-p0)/n)

alpha <- 0.05

zcalc <- (pbar - p0)/sderror




# Critical value approach
# This is a lower tail test we need z alpha

z1 <- qnorm(alpha)

# since zcalc < z1 we can reject null

# p value approach

pvalue <- 1 - pnorm(abs(zcalc))


