

# Set the directory
setwd("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/slides/03_regression_slr/Codes/")


# get the data
library(readxl)
Fast_Food_Data_SLR <- read_excel("Fast_Food_Data_SLR.xlsx")


# Calculate Covariance between Msales and Spop
cov(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales) # the formula is cov(x, y)

# [1] 315.5556



cor(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales)
# [1] 0.950123



# Plot Sales vs Student Population
plot(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales,
     xlab = "Student Population (in 1000s)",
     ylab = "Sales (monthly, in 1000 BDT)",
     main = "Sales vs Student Population",
     pch = 19, col = "blue")



# Runnign Regression 

# First let R to run the regression

model <- lm(Msales ~ Spop, data = Fast_Food_Data_SLR) # linear regression

# see the result

summary(model) # summary of the linear regression

# plot the scatter plot again and on the top plot the line

plot(Fast_Food_Data_SLR$Spop, Fast_Food_Data_SLR$Msales,
     xlab = "Student Population (in 1000s)",
     ylab = "Sales (monthly, in 1000 BDT)",
     main = "Sales vs Student Population",
     pch = 19, col = "blue")

abline(model)


# in sample prediction

fitted(model) # fitted values

# out of sample prediction

new_data <- data.frame(Spop = c(15, 30)) # new data in dataframe

predicted_sales <- predict(model, newdata = new_data) # predicted values
predicted_sales # predicted values



