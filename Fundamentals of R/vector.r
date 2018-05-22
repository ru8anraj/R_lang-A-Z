v <- c(1,2,4,5) # creating numberic vector
v
is.numeric(v) # TRUE it is a numberic vector
is.integer(v) # FALSE 
is.double(v) # TRUE  R by default stores numberic vector in double datatype


v1 <- c(1L, 2L, 4L, 5L) # creating integer vector
v1
is.numeric(v1) # TRUE interger is also a numeric
is.integer(v1) # TRUE declared as integer
is.double(v1) # FALSE


v2 <- c("a", "b", 3, "d2d") # creating a character vector
v2 # observe 3 automatically becomes as character
is.character(v2) # TRUE declared as character
is.numeric(v2) # FALSE


# other ways to add vectors
v3 <- seq(1,15,1) # creating a sequence of number with step 1
v3

v4 <- seq(2,16,2) # creating a sequence of number with step 2
v4

v5 <- rep(3, 10) # creating a replication of numberic 3, 10 times
v5


# bracket operations
v4[1] # gives the first element of the vector
v4[-1] # gives all element except first element
v4[-5] # gives all element except fifth element
v4[1:3]
v4[3:4]

