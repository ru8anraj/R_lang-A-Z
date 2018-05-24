# visualizing the player accuracy
# accuracy = goalsPocketed / Total no of goals attempted 
matplot(t(FieldGoals)/t(FieldGoalAttempts), 
        type = 'b',
        pch = 15:18, 
        col = c(1:4, 6))
legend("bottomleft",
       inset = 0.01,
       legend = Players,
       col = c(1:4, 6),
       pch = 15:18,
       horiz = FALSE)


# checking the data in matrix
t(FieldGoals)
t(Games)
FieldGoalAttempts


# subsetting of matrix
Games
Games[1:3,6:10] # subsetting first 3 rows and 6 to 10 columns
Games[c(1,6),] # subsetting the row 1 and row 6 entirely
Games[,c("2008", "2009")] # subsetting the entire columns using their name

# Important Concept
Games[1,] # returns vector -> bcoz R tries to drop unwanted dimenstions
Games[1,5] # returns vector value

# To avoid above problem or fallout
Games[1,,drop=FALSE] # returns the 2 dimensional value as required

