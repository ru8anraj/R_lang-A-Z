# checking the number of rows and columns
nrow(stats)
ncol(stats)
#--------- 195 rows and 5 columns available

# getting the head of the data
head(stats)

# reviewing the structure of the data
str(stats)

# getting the detailed description of the data 
summary(stats)

# indexing the value from the dataframe
stats$Internet.users # indexing the whole column by column name

stats[3,3]
stats[4, "Birth.rate"]

# --------- Filtering data frame
stats[stats$Income.Group=="High income", ] # <<<<<<< Very IMPORTANT {{ CHECK THIS }}

stats[substr(stats$Country.Name, 1, 1) == 'A', ]
