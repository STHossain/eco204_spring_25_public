
# create an object x = 10 and object y = 20 and and add them and store value in a new object called z
x <- 10
y <- 20
z <- x + y
z
print(z)

# create a vector of numbers with the values 1, 2, 3
data <- c(1, 2, 3)

# create a vector of numbers with the values 1, 2, 3, 4, 5
data <- c(1:5) # you can also use seq() function, use this to create an even sequence

# create a string
name <- "John Doe"

# create a matrix
mat <- matrix(1:6, nrow = 2, ncol = 3)

# Create a list that can store different types of objects
my_list <- list(
  number = 42,
  name = "Alice",
  values = c(3, 4, 5)
)
print(my_list)

# Create a simple data frame
df <- data.frame(
  id = 1:3,
  name = c("Alice", "Bob", "Charlie"),
  score = c(85, 90, 88)
)
print(df)
View(df)
# Create a factor (categorical variable) called temperature
temp <- factor(c("low", "medium", "high", "medium", "low"))
temp


# Define a simple function to calculate the square of a number
square <- function(x) {
  return(x^2)
}

# Test the function
square(5)
square(10)

# If Else condition
num <- 10
if (num %% 2 == 0) {
  print("Even number")
} else {
  print("Odd number")
}

# An example of a for loop
for (i in 1:5) {
  print(i)
}
