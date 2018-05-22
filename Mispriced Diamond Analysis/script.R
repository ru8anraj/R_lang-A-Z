
data <- read.csv(file.choose())

library(ggplot2)

ggplot(data=data, aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()


