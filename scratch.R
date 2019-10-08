
library(dplyr)
library(ggplot2)
library(tidyverse)


dice <- function() {
  sample(1:6, 1, replace = TRUE) %>% 
  sum()
}

roll_dice <- function(){
  dice() + dice()
}

#make a vector where each element of the vector is the result of rolling 2 die
many_dice <- function(n = 1){
results <- vector(mode = "integer", length = n)
for(i in 1:n){ #need a loop
  results[i] <- dice() + dice()
}
  return(results) #need to return the vector of results
} 

data <- tibble(rolls = many_dice(1000))

ggplot(data, aes(x = rolls)) + geom_histogram()
