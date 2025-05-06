# question 1
dunif(x=1:5, min = 1, max = 5)
punif(q=3.5, min = 1, max = 5) - punif(q=2.0, min = 1, max = 5)

# question 2
pnorm(95, mean=80, sd=12) - pnorm(65, mean=80, sd=12)
pnorm(74, mean=80, sd=12)

# question 3
pnorm(116, mean=100, sd=16) - pnorm(84,mean=100, sd=16)
qnorm(0.98, mean=100, sd=16)

# question 4
set.seed(123)
values <- round(rexp(n=100, rate= 0.05))
sample(values, 5)
sample(values, 5)

# question 5
rvariates <- sample(100, replace = FALSE)
sum(rvariates >= 95 + rvariates <= 55) # fix

# question 6
dpois(x, lambda = 1.5) # fix

# question 7 
pexp(1, rate=1/2, lower.tail=TRUE)

