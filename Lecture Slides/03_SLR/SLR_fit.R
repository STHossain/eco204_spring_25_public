

# Set the directory
setwd("/run/media/tanvir/319E-41B8/SLR/Codes/")

options(scipen = 100)

# get the data
library(readxl)
Fast_Food_Data_SLR <- read_excel("Fast_Food_Data_SLR.xlsx")
View(Fast_Food_Data_SLR)


# Here Fast_Food_Data_SLR is a data frame object



# Calculate Covariance between Msales and Spop
cov(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales) 


cor(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales)




plot(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales)


# Plot Sales vs Student Population
plot(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales,
     xlab = "Student Population (in 1000s)",
     ylab = "Sales (monthly, in 1000 BDT)",
     main = "Scatterplot of Sales vs Student Population",
     pch = 19, col = "red")



# Fitting the line
model <-   lm(Msales ~ Spop, data = Fast_Food_Data_SLR)

summary(model)


# Plot Sales vs Student Population
plot(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales,
     xlab = "Student Population (in 1000s)",
     ylab = "Sales (monthly, in 1000 BDT)",
     main = "Scatterplot of Sales vs Student Population",
     pch = 19, col = "red")

# plot the line
abline(model, col = "blue", lwd = 2)


# This is in-sample prediction
fitted(model)


# How to do out of sample prediction

# there are different ways to solve the out-of-sample prediction problem
# Suppose we want to predict the sales for a restaurant with 15 and 30 thousand students

# 1. write your own function with model$coefficients

out_pred <- function(x){
  yihat <- model$coefficients[1] + model$coefficients[2] * x
  return(yihat)
}

# new x values
new_x <- c(15, 30)

# predicted values
out_pred(new_x)



# 2. Create a new data frame with new x values
new_x <- c(30, 26)

new_data <- data.frame(
  Restaurant = c(11, 12),
  Spop      = new_x,
  Msales    = NA,  # explicit NA of type numeric
  predicted = predict(model, newdata = data.frame(Spop = new_x))
)

# see this
new_data

# Stack the old df and new df together
Fast_Food_Data_SLR_ext <- rbind(Fast_Food_Data_SLR, new_data)



## getting residuals / erros and sum of squared errors
error_vector <- resid(model)
error_vector_sq <- error_vector^2
sum_sq_error <- sum(error_vector_sq)
