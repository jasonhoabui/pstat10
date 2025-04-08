# question 1
data("CO2")
hist(CO2$uptake, breaks = "sturges", col="yellow",
     xlab="uptake rate", main = paste("carbon dioxide uptake rates in grass plants"))
# the distribution is bimodal

# question 2
x <- c(738,538,158,103,93,682)
labels <- c("heart diseases", "cancer", "stroke", "pulmonary diseases",
          "accidents", "others")
pie(x, labels, radius=0.8, main="deaths in 1995 and the cause of death (in thousands)",
     col= rainbow(length(x)), clockwise = TRUE)
# this is a bad way to display data. it is bad at judging relative areas and has no numbers 

# question 3
x <- c(9,9,22,32,33,39,39,42,49,52,58,70)
stem(x, scale=2)

# question 4
data("state")
min(state.area) # 1214
max(state.area) # 589757
mean(state.area) # 72367.98
median(state.area) # 56222
max(state.area) - min(state.area) # 588543

# question 5
x <- c(2,3,3,3,4,2,5,NA,10) 
mean(x, na.rm = TRUE) # 4
y <- c(2,3,3,3,4,2,5,10)
table(y)
# the mode is 3 