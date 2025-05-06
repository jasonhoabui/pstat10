# question 1
dunif(x=1:5, min = 1, max = 5) # 0.25 0.25 0.25 0.25 0.25
punif(q=3.5, min = 1, max = 5) - punif(q=2.0, min = 1, max = 5) # 0.375

# question 2
pnorm(95, mean=80, sd=12) - pnorm(65, mean=80, sd=12) # 0.789
pnorm(74, mean=80, sd=12) # 0.309

# question 3
pnorm(116, mean=100, sd=16) - pnorm(84,mean=100, sd=16) # 0.683
qnorm(0.98, mean=100, sd=16) # 132.86

# question 4
set.seed(123)
values <- round(rexp(n=100, rate= 0.05))
sample(values, 5) # 27 10 17 19 8
sample(values, 5) # 16 90 29 12 6

# question 5
rvariates <- round(rnorm(100, mean=75, sd=10))
sum(rvariates >= 55 & rvariates <= 95) # 95

# question 6
dpois(0, lambda = 1.5) # 0.223
dpois(4, lambda = 1.5) # 0.047

# question 7 
pexp(1, rate=1/2, lower.tail=TRUE) # 0.393

