

# Set the directory
setwd("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/slides/03_regression_slr/Codes/")


# get the data
library(readxl)
mydata <- read_excel("Fast_Food_Data_SLR.xlsx")
View(mydata)


# Calculate Covariance between Msales and Spop
cov(mydata$Spop, mydata$Msales) # the formula is cov(x, y)

# [1] 315.5556



cor(mydata$Spop, mydata$Msales)
# [1] 0.950123



# Plot Sales vs Student Population
plot(mydata$Spop, mydata$Msales,
     xlab = "Student Population (in 1000s)",
     ylab = "Sales (monthly, in 1000 BDT)",
     main = "Sales vs Student Population",
     pch = 19, col = "blue")


