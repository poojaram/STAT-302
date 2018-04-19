# Constructing the matrix M

M <- matrix(24:1, ncol = 6)

# Extracting elements of M to build matrix M2

M2 <- matrix(M[c(13, 21, 15, 23)], ncol = 2, byrow = TRUE)

# Inverse of Matrix M2

require(MASS)
Inv_M2 <- ginv(M2)

# Replacing the given positions in M

M[c(13, 21, 15, 23)] <- -1

funx <- function(vectorinput) {
  mean = mean(vectorinput)
  product = prod(vectorinput)
  root = length(vectorinput)
  geomean = product^(1/root)
  diff = mean - geomean
  diff
}

x <- 1:6
funx(x)
x <- c(8,1,3,2,1,6)
funx(x)

# 3 - Arithmetic mean is always greater than or equal to the geometric mean of a non-negative real vector
#     The difference between arithmetic mean and the geometric mean is 0 if and only if every number in 
#     vector is the exact same. For example, consider the vector below:
x <- c(3,3,3,3,3,3,3,3,3,3)
funx(x)
# Function that takes an input and returns a number based on the type of the input

funstr <- function(x) {
  if(is.list(x) == TRUE) return(1)
  else if(is.matrix(x) == TRUE) return(2)
  else if(is.function(x) == TRUE) return(3)
  else return(4)
}

# Executing the function









A <- matrix(1:6, nrow = 3)
funstr(A)

B <- 1:5
funstr(B)

C <- function(x){x}
funstr(C)

D <- list(A,B,C)
funstr(D)

P <-  1:15
Q <- matrix(1:15, ncol = 3)
fun <- function(x){x*x*x*3}
L <- list(P,Q,fun)
L[[3]]
L[3]
?lapply
lapply(3,L[[3]])
L[[3]]

a <- 1
b <- 2
a_vector <- c(a)
b_vector <- c(b)
for (i in 2:9) {
  temp_a <- a*exp(-b) + 1
  a_vector <- c(a_vector,temp_a)
  temp_b <- ((a+b)/3) + 2 + (1/i)
  b_vector <- c(b_vector,temp_b)
  a <- temp_a
  b <- temp_b
}

a_vector
b_vector

?matrix
as.matrix(a_vector, b_vector)
answer <- rbind(a_vector, b_vector)
is.matrix(answer)
