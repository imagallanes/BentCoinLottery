# 
# Author: Graham Smith
# 
# A simulation of a lottery based on flipping a bent coin 10 times
#
# Currently written with questionable coding practices
#


library(stats)

# Small edit! from class 1!
# 10 is the number of coin tosses
num_of_coin_tosses<- 10
heads<- 1
tails<-0
num_of_successive_coin_tosses<-100

lotto_tix <- array(0,num_of_coin_tosses)
for (i in 1:num_of_coin_tosses){
  lotto_tix[i] <- if (runif(heads) < 0.1) heads else tails
}

for (j in 1:num_of_successive_coin_tosses){
  lotto_tix <- array(0,num_of_coin_tosses)
  for (i in 1:num_of_coin_tosses){
    lotto_tix[i] <- if (runif(heads) < 0.1) heads else tails
  }
  print(lotto_tix)
}
