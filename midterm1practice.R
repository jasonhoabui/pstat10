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