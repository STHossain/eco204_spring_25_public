

# R has different kinds of objects

# Type - Character / String
test1 <- "ECO104"
test1
class(test1)



# Type - Numeric Objects

test2 <- 2
test2
class(test2)


test3 <- c(1, 2, 3)
test3
class(test3)


# Type - Lists
test4 <- list(1, "all", c(1, 2))
class(test4)



# Type - Dataframe 
test5 <- data.frame (
  grade = c("A", "B", "C"),
  marks = c(90, 80, 70),
  semester = c(5, 4, 4)
)

# Print the data frame
test5

class(test5)


# Type - function

test6 <- function(x){
  y <- 2*x + 1
  return(y)
}

test6(2)

class(test6)


