

# Problems for 9.1 (9, 10, 11)

# Problem 9

# First Clear the Env with the Broom or Jharu


# Here is the Hypotheses
# Null : mu >= 20
# Alternative : mu < 20

# So it's a lower tail test

n <- 50
xbar <- 19.4
sigma <- 2
mu0 <- 20
alpha <- 0.05

# a. Here we need to use Z test statistic
# calculate zcalc

zcalc <- (xbar - mu0) / (sigma / sqrt(n))

zcalc

# so value of the test statistic is -2.12132


# b. p value calculation

pvalue <- 1 - pnorm(abs(zcalc))
pvalue

# so the p value is 0.169 or 1.6%
# This means p value < alpha when alpha = 0.05
# so we can reject the null at alpha = 0.05


# d. Now we will do the test using critical value approach

# Since this is a lower tail test, this we need z(alpha)

z1 <- qnorm(alpha)

zcalc

z1

# here zalpha = -1.644854, here -2.12 < -1.64, so zcalc falls in the rejection region, so 
# we reject the null

# So we reached the same conclusion using the critical value approach



# =======================

# Problem 10

# Clear the Env


# Here is the Hypotheses
# Null : mu <= 25
# Alternative : mu > 25

# So it's an upper tail test

n <- 40
xbar <- 26.4
sigma <- 6
mu0 <- 25
alpha <- 0.01

# a. 

zcalc <- (xbar - mu0) / (sigma / sqrt(n))
zcalc
# so the value of the test statistis is 1.47573

# b. 

pvalue <- 1 - pnorm(abs(zcalc))
pvalue

# so the value of the p value is 0.07000825, or 7%

# c. At alpha = 0.01 or at 1%, we see that p value > alpha, so we accept the Null.


# d. Now we will do the same test using the critical value approach

# This is an upper tail test, so we need z(1 - alpha)

z1 <- qnorm(1-alpha)

zcalc

z1

# Here since 1.47 < 2.34, this means  zcalc < z(1 - alpha), so zcalc falls
# in the acceptance region so we accept the null.

#=====================================================================================

# 11.  

# Clear the Env 

# Null : mu = 15
# Alternative : mu not= 15

# This is a two tail test

n <- 50
xbar <- 14.15
sigma <- 3
mu0 <- 15
alpha <- 0.05
  
# a. 

zcalc <- (xbar - mu0) / (sigma / sqrt(n))

zcalc

# So the value of the test statistic is -2.003469

# b.

pvalue <- 2 * ( 1 - pnorm(abs(zcalc)))
pvalue

# so the value of the p value is 0.045 or 4.5%

# c. At alpha = 0.05 or at 5%, we see that pvalue < alpha, so reject the Null.

# d. Since this is a two tail test, we need to check for two critical values

z1 <- qnorm(alpha/2)

z2 <- qnorm(1 - alpha/2)

zcalc

z1


z2

# Since here zcalc < -1.959964, this means zcalc falls in the rejection region. So reject the Null.



