# problem 1
x <- c(5,7,3,10,1)
x[3] # third element of x
x[-2] # all elements of x except the second
x[c(2,3,5)] # extract the second, third, and fifth element
x[4] <- 17 # add 17 as the fourth element
x[c(1, 3)] <- 4 # replace the first and third element with 4

# problem 2
x <- c(1,2,3,7,6,8,3,12,0,17)
length(x) # 10
sort(x, decreasing=TRUE) # sorts in descending order
mean(x) # 5.9

# problem 3
print("PSTAT 10 HW 1 Question 3.", quote=FALSE)

# problem 4
seq(2.25, 3, .25) # 2.25 2.50 2.75 3.00

# problem 5
rep(1:4, each=3, length=10) # 1 1 1 2 2 2 3 3 3 4

# problem 6
sum(10:50) + sum(75:100) # 3505

# problem 7
x <- c(1,2,3,4,5,6)
y <- c(10,20,30,40,50,60)
x + y # returns 11 22 33 44 55 66

# problem 8
z <- c(1.0,2.0,4.6,5.5)
class(z) # numeric
as.integer(z) # 1 2 4 5
as.logical(z) # TRUE TRUE TRUE TRUE
as.character(z) # "1" "2" "4.6" "5.5"

# problem 9
A <- c("PSTAT 10")
B <- c("HOMEWORK 1, Q9")
paste(A,B)
A == B # FALSE 

# problem 10
A <- c("I LOVE")
B <- c("R!")
paste(A,B)