# The visualization insights are made on the available data

# plotting function
plot <- function(data, row = 1:10){
  Data <- data[row,,drop=FALSE]
  matplot(t(Data), 
          type = "b", 
          pch = 15:18,
          col = c(1:4, 6))
  legend("topleft",
         legend = Players[row],
         pch = 15:18,
         col = c(1:4,6),
         horiz = FALSE)
}

# salary of the players
plot(Salary) # overall salary of the players
plot(Salary/Games) # salary per game

# in-game insights of players
plot(MinutesPlayed/Games)
plot(Points/Games)
plot(FieldGoalAttempts/Games)
plot(FieldGoals/Games)

# players playing style insights
plot(FieldGoalAttempts/FieldGoals) # accuracy of the player



