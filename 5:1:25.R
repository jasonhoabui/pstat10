# question 1
dbinom(5, size=8, prob=0.20)

# question 2
set.seed(1)
rbinom(7, size=200, prob=0.03)

# question 3
set.seed(1)
rbinom(1, size=5, prob=1/6)

# question 4
k <- c(0:6)
plot(k, dbinom(k, size=25, prob=0.4), type="h")
