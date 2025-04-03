# question 1
x <- c(5, 7, 3, 10, 1, 7, 19 ,5, 2)
x[4]
x[5:7]
median(x)
length(x)

# question 2
y <- c(rep(6, 7))
y
z <- c(rep(3, 3), rep(4, 3), rep(6, 3))
z


# question 3
p <- c(2,3,4,6,6)
q <- c(7,2,4,3,2)
p+q
sum(p+q)
# p+q returns all the values in both vectors added to one vector
# sum(p+q) returns all the values in both vectors added to one number

# question 4
x <- c(-50:-54, -53:-50)

# question 5
x <- c(rep(1, 2), rep(2, 2), rep(3, 1))
rep(1:3,each=2,length=5) # faster solution
