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


# -------- Visualization of the data using qplot
library(ggplot2)
?qplot
qplot(data = stats,
      x = Internet.users)
qplot(data = stats,
      x = Income.Group,
      y = Birth.rate,
      size = I(3),
      color = I("black"))

qplot(data = stats,
      x = Income.Group,
      y = Birth.rate,
      size = I(3),
      color = I("black"),
      geom = "boxplot")

# viz birth rate to internet user with categorizing using income group
qplot(data = stats,
      x = Internet.users,
      y = Birth.rate,
      size = I(3),
      color = Income.Group)

# -------- adding new data country regions
regions_df <- data.frame(Codes_2012_Dataset, Countries_2012_Dataset,
                         Regions_2012_Dataset)
head(regions_df)
colnames(regions_df) <- c("Code", "Country", "Region")
unique(regions_df["Region"])

# -------- merging dfs
new_stats <- merge(stats, 
                   regions_df, 
                   by.x = c("Country.Name", "Country.Code"),
                   by.y = c("Country", "Code"))
head(new_stats)

# -------- visualizing with different country region
qplot(data = new_stats,
      x = Internet.users,
      y = Birth.rate,
      color = Region,
      size = I(3))
