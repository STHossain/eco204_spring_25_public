
# Question 1

# a and b

## -----------------------------------------------------------------------------
# SSR
SST <- 6724.125
SSR <- 6216.375
SSE <- SST - SSR
SSE


## -----------------------------------------------------------------------------
# MSR
p <- 2 # already this is defined before
MSR <- SSR / p
MSR


## -----------------------------------------------------------------------------
n <- 10
p <- 2
MSE <- SSE / (n - (p + 1))
MSE


## -----------------------------------------------------------------------------

Fcalc <- MSR / MSE
Fcalc


## -----------------------------------------------------------------------------
# find the critical value of F
alpha <- 0.05
n <- 10
p <- 2


# p value approach

pvalue <- 1 - pf(Fcalc, df1 = p, df2 = n - p - 1)

# F test is always one tail test, this is F(1-alpha)
Fcrit <- qf(p = 1 - alpha, df1 = p, df2 = n - p - 1)

Fcalc > Fcrit


# b.

## -----------------------------------------------------------------------------
# t-test for beta_1
tcalc_beta1 <- (0.5906 - 0) / 0.0813


# it's a two tail test, so let's calculate the p value directly
pvalue_beta1 <- 2 * (1 - pt( abs(tcalc_beta1) , df = n - p - 1) )

pvalue_beta1

pvalue_beta1 < alpha

# c .

# do it ....



## -----------------------------------------------------------------------------
# d.

tcalc_beta2 <- (0.4980 - 0) / 0.0567

pvalue_beta2 <- 2 * (1 - pt( abs(tcalc_beta2) , df = n - p - 1) )

pvalue_beta2

pvalue_beta2 < alpha



## -----------------------------------------------------------------------------
# load the library
library(readxl)

# directly load the data
Showtime <- read_excel("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/homeworks/SLR_MLR/HW3/Solutions/Showtime.xlsx")



## -----------------------------------------------------------------------------
Showtime


## -----------------------------------------------------------------------------
summary(Showtime)


## ----message = FALSE, warning = FALSE-----------------------------------------
# fit the model
model_slr <- lm(revenue ~ tv, data = Showtime)

# view the results with stargazer package
library(stargazer)
stargazer(model_slr, type = "text")


## -----------------------------------------------------------------------------
# fit the model
model_mlr <- lm(revenue ~ ., data = Showtime)

# view the results with stargazer package
library(stargazer)
stargazer(model_mlr, type = "text")


## -----------------------------------------------------------------------------
# fit null model
model_null <- lm(revenue ~ 1, data = Showtime)

# we already have the complete model

# anova function will compare between two models
anova(model_null, model_mlr)



## -----------------------------------------------------------------------------
model_restrict <- lm(revenue ~ tv + newspaper, data = Showtime)



## -----------------------------------------------------------------------------
anova( model_restrict, model_mlr)


## -----------------------------------------------------------------------------
test_data <- data.frame(tv = 3500/1000, newspaper = 2300/1000, magazines = 1000/1000, leaflets = 500/1000)

predict(model_mlr, newdata = test_data)


## -----------------------------------------------------------------------------
predict(model_restrict, newdata = data.frame(tv = 3500/1000, newspaper = 2300/1000), interval = "confidence")



## -----------------------------------------------------------------------------
predict(model_restrict, newdata = data.frame(tv = 3500/1000, newspaper = 2300/1000), interval = "prediction")



## -----------------------------------------------------------------------------
plot(model_mlr$fitted.values, model_mlr$residuals)


##/... Extenstions

## -----------------------------------------------------------------------------

# fit the model
model_interaction <- lm(revenue ~ tv*newspaper, data = Showtime)

# view the results with stargazer package
library(stargazer)
stargazer(model_interaction, type = "text")


## -----------------------------------------------------------------------------
# load the library, load the data
library(readxl)
Auto <- read_excel("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/homeworks/SLR_MLR/HW3/Solutions/Auto_clean.xlsx")



## -----------------------------------------------------------------------------
summary(Auto)


## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
plot(Auto$horsepower, Auto$mpg)



## -----------------------------------------------------------------------------
quad_fit <- lm(mpg ~ horsepower + I(horsepower^2), data = Auto)

library(stargazer)
stargazer(quad_fit, type = "text")



## -----------------------------------------------------------------------------
plot(Auto$horsepower, Auto$mpg)

lines(sort(Auto$horsepower), fitted(quad_fit)[order(Auto$horsepower)], col = "red", lwd = 2)




## -----------------------------------------------------------------------------
cubic_fit <- lm(mpg ~ horsepower + I(horsepower^2) + I(horsepower^3), data = Auto)
stargazer(cubic_fit, type = "text")


## -----------------------------------------------------------------------------
plot(Auto$horsepower, Auto$mpg)
lines(sort(Auto$horsepower), fitted(quad_fit)[order(Auto$horsepower)], col = "red", lwd = 2)
lines(sort(Auto$horsepower), fitted(cubic_fit)[order(Auto$horsepower)], col = "blue", lwd = 2)


## -----------------------------------------------------------------------------
poly_fit <- lm(mpg ~ poly(horsepower, 3, raw = TRUE ), data = Auto)

stargazer(poly_fit, type = "text")



## -----------------------------------------------------------------------------
Auto <- read_excel("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/homeworks/SLR_MLR/HW3/Solutions/Auto_clean.xlsx")



## -----------------------------------------------------------------------------
summary(Auto)



## -----------------------------------------------------------------------------
Auto$origin <- factor(Auto$origin, labels = c("USA", "Europe", "Japan"))
summary(Auto)



## -----------------------------------------------------------------------------
# without interaction
model1 <- lm(mpg ~ horsepower + origin, data = Auto)
summary(model1)

# with interaction
model2 <- lm(mpg ~ horsepower + origin + origin*horsepower, data = Auto)
summary(model2)



## ----include = FALSE----------------------------------------------------------
# You can ignore everything from here.... 
# knitr::purl("HW-3_Soln.Rmd")

