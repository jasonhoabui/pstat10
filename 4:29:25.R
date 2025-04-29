# question 1
v <- c(5:20)
set.seed(1)
sample(x = v, 5, replace = TRUE)
sample(x = v, 5, replace = FALSE)

# question 2
p <- c(0.0, NA, 0.4, 0.1, 0.03)
1 - sum(p, na.rm=TRUE) # 0.47
p <- c(0.0, 0.47, 0.4, 0.1, 0.03)
outcomes <- c(1,2,3,4,5)
p[outcomes < 2] # 0
mean(p) # 0.2
barplot(p, names.arg = outcomes,
       space = 0.5, xlab= "x",
       ylab = "cumulative probability")

cumsum(p) # cdf

# question 3
# skip

# question 4
die <- c(1,2,3,4,5,6)
total <- length(die)
prob4 <- length(die[die==1])
prob4 <- prob4 / total
prob4 # 0.167