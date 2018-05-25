setwd('./World Trends')
getwd()

# extracting data from the csv file
data <- read.csv('./Section5-Homework-Data.csv')
head(data)
nrow(data)

# filterting the data from the year 1960
data1960 <- data[data$Year == 1960, ]
head(data1960)
nrow(data1960)

# filtering the data from the year 2013
data2013 <- data[data$Year == 2013, ]
head(data2013)
nrow(data2013)
