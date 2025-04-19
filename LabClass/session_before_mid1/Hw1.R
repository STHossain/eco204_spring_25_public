setwd("/Users/TajidulHaqueProtul/Desktop/EWU/Spring 25/ECO 204/MID 2")

# get the data

library(readxl)
data_msales_aprice <- read_excel("Hw 1/data_msales_aprice.xlsx")

View(data_msales_aprice)



# Calculate Covariance between Msales and Aprice

cov <- cov(data_msales_aprice$Msales , data_msales_aprice$Aprice)

cov

cor <- cor(data_msales_aprice$Msales , data_msales_aprice$Aprice)
cor


plot <- plot(data_msales_aprice$Msales , data_msales_aprice$Aprice)


# Plot Sales vs Student Population
plot(data_msales_aprice,
     xlab = "Average Price ",
     ylab = "Sales in monthly ",
     main = "Sales vs Average Price " )

# running regression

model <- lm(Msales ~ Aprice, data = data_msales_aprice)
summary(model)

# (Intercept) 424.2727    29.0061   14.63 4.68e-07 ***
# Aprice       -1.2576     0.1229  -10.23 7.16e-06 ***
