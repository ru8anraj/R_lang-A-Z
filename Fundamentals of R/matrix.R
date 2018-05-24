# matrix()
data <- 1:20
my_matrix <- matrix(data, 4, 5)
my_matrix
my_matrix[1,] # indexing the first row


# other ways to create matrix
a <- seq(1,5)
b <- seq(6,10)

# rbind()
my_matrix_1 <- rbind(a,b)
my_matrix_1

#cbind()
my_matrix_2 <- cbind(a,b)
my_matrix_2

# indexation of the matrix
my_matrix[1,1] # element in row 1 and column 1
my_matrix[1,] # entire row 1
my_matrix[,1] # entire column 1

# naming the matrix
rownames(my_matrix) <- c("r1", "r2", "r3", "r4")
colnames(my_matrix) <- c("c1", "c2", "c3", "c4", "c5")

# indexation using the row and coumn names of the matrix
my_matrix["r2", "c4"]
my_matrix["r1",]
my_matrix[,"c1"]


####################
# Visualizing Matrix
matplot(my_matrix[,"c1"])


# subsetting of matrix
my_matrix
my_matrix[1:3, c(1,3)] # subsetting first 3 rows from column 1 and 3
my_matrix[c(1,3),] # subsetting the row 1 and row 6 entirely
my_matrix[,c("c3", "c4")] # subsetting the entire columns using their column name

# Important Concept
my_matrix[1,] # returns vector -> bcoz R tries to drop unwanted dimenstions
my_matrix[1,5] # returns vector value

# To avoid above problem or fallout
my_matrix[1,,drop=FALSE] # returns the 2 dimensional value as required


rm(data, my_matrix, my_matrix_1, my_matrix_2, a, b)
