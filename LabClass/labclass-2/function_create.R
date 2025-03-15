

add_ewu_function <- function(x, y) {
  return( x + y)
}

add_ewu_function(10, 20)

add_ewu_function(100, 20)

square_function <- function(x) {
  return(x^2)
}





# H0 : mu <= 9.5
# Ha : mu > 9.5

xbar <- 10.05
s <- 1.5
alpha <- 0.05
n <- 36
mu0 <- 9.5

sderror_est <- s / sqrt(n)

tcalc <- (xbar - mu0) / sderror_est


# this is an upper tail test, so we need
# t 1-alpha

tcritical <- qt(1-alpha, n - 1)

# since tcacl > tcritical we reject the null


if (tcalc > tcritical) {
  print("Reject the Null")
} else {
  print("accept the Null")
}







my_uppertail_test <- function(xbar, n, s, alpha, mu0) {
  
  sderror_est <- s / sqrt(n)
  tcalc <- (xbar - mu0) / sderror_est
  tcritical <- qt(1-alpha, n - 1)
  
  if (tcalc > tcritical) {
    print("Reject the Null")
  } else {
    print("accept the Null")
  }

  
}


my_uppertail_test(10.5, 36, 1.5, 0.05, 9.5)







