

# Set the directory

setwd("/home/tanvir/Documents/ownCloud/Git_Repos/EWU_repos/5_Sprint_2025/Github_repos/eco204_spring_25/slides/04_regression_mlr/Codes/")


# get the data

library(readxl)
Fast_Food_Data <- read_excel("Fast_Food_Data.xlsx")
View(Fast_Food_Data)


# MLR fit

model <- lm(Msales ~ Spop + Aprice + Adv, data = Fast_Food_Data)
summary(model)


# getting predictions
fitted(model)

# confidence intervals for the slope and intercept
confint(model, level = 0.95)



# useful library
library(stargazer)
stargazer(model, type = "text",  ci = TRUE)


# checking correlation between all variables in the data
vars_3_5 <- Fast_Food_Data[, 3:5]
cor(vars_3_5)


# pairwise correlation plot
pairs(~Spop+Aprice+Adv+Msales, data=Fast_Food_Data,
      main="Simple Scatterplot Matrix", cex = .3)





# anova table ... this won't work
anova(model)

# to get a similar table like Excel, you need to do this... why? full restricted vs unrestricted model
null_model <- lm(Msales ~ 1, data = Fast_Food_Data)
anova(null_model, model)


# restricted model with only adv as the covariate,


restrictedmodel <- lm(Msales ~ Adv, data = Fast_Food_Data)
anova(restrictedmodel, model)


# Interactions

model_interaction <- lm(Msales ~ Spop + Aprice + Adv + Spop*Adv, data = Fast_Food_Data)
summary(model_interaction)

