# question 1
# what is the result?
a <- data.frame(v1=1:3, v2=LETTERS[1:3]) # 
b <- data.frame(v1=6:8, v2=LETTERS[6:8])
m <- rbind(a, b)
m
# a

# question 2
# which of the following is an invalid assignment?
m <- matrix(nrow = 2, ncol = 3)
m <- matrix(nrow = 2, ncol = 3.5) # columns have to be an integer
m <- mat(nrow = 2, ncol = 3)
# b

# question 3
# what is the class of y?
y <- c(FALSE, 2) 
class(y) # numeric
# d

# question 4
# what is the output?
m <- matrix(nrow = 2, ncol = 3)
dim(m)
# b

# question 5
# what extracts the first 4 elements of vector x?
x <- c("a", "b", "c", "c", "d", "a")
x[1:4]
# c

# question 6
# given two vectors, which will produce the result?
a <- c(4,6,5,7,10,9,4,15)
b <- c(0,10,1,8,2,3,4,1)
# needs to produce 0 60 5 56 20 27 16 15
a*b
# a

# question 7
# which can be used to find the standard deviation of z?
sd(z)
# b

# question 8 
# what is the result?
A <- 12
B <- 20
print(A, B)
# d

# question 9
# what extracts the second element?
x <- c(2,7,9,11,5)
x[2]
# c

# question 10
# the correlation coefficient is used to determine what?
# c, the strength of the relationship between the x and y variables