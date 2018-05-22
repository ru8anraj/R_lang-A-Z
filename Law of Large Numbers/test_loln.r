# This file is to understand the Law of Large Numbers using RScript
# 
# To understand that increase the N value and check the answer getting
# closer to E(x)


N <- 1000 # sample size
counter <- 0 # reset counter

for(i in rnorm(N)){
  if(i<=1 && i>=-1){
    counter = counter + 1 # increase the counter when SD is within -1 and 1
  }
}

answer <- counter/N
answer # prints the outcome of the sample