# suppose we have 5 test scores
# from bob, alice, alex, juan, amy
# 8,7,8,10,5 (respectively)

test_scores <- c(8,7,8,10,5)
class(test_scores)
mean(test_scores)
median(test_scores)

test_results <- c("bob"=8, "alice"=7,"alex"=8,"juan"=10,"amy"=5)
class(test_results)
mean(test_results)
median(test_results)
length(test_results)

# example 2

mileage <- c(65311, 65624, 65908)
x <- diff(mileage)
x

mileage2 <- c(66200, 66533, 66856)
y <- diff(mileage2)
y

mileage3 <- c(mileage, mileage2)
z <- diff(mileage3)
z

# example 3

both <- c("dog", 3, "cat", "mouse", 7, 12, 9, "chicken")
class(both)
# you cannot do mean(both) because there are characters in the vector


series <- 1:10
is.vector(series) # true or false

seq(1, 10, by = 0.5) # sequence starting at 1, ending at 10, increment by 0.5

seq(10, 20, length = 7) # seven numbers in the vector, increments depend on length

# repetitions

rep(3, time=5) # five 3's in a vector
rep(x=3, time=5) # outputs the same thing

# sorting

sort(test_scores) # sorts by increasing (default)
sort(test_scores, decreasing=FALSE) # sorts by increasing
sort(test_scores, decreasing=TRUE) # sorts by decreasing

# logical condition

any(test_scores<7) # true
all(test_scores>7) # false

# accessing elements of a vector
# not like python, indexes start at 1 instead of 0

t <- c(1, 7, 3, 10, 5) 
t[4]
t[-2] # returns every element except for the second
x[2:4] # returns the elements 2 (included) to 4 (included)