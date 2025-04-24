# study for the midterm tomorrow (4/21)

8/2-2*(2-3) # 6

sqrt(1024) # 32

options(prompt = "R> ")

obj <- "midterm tomorrow!"
obj

# suitable comment

###################

x <- c(5,7,3,10,1,7,19,5,2)
x[4] # 10
x[5:7] # 1 7 19
median(x) # 5
length(x) # 9

y <- rep(6, 7) # 6 6 6 6 6 6 6
z <- c(rep(3, 3), rep(4,3), rep(6,3)) # 3 3 3 4 4 4 6 6 6

p <- c(2,3,4,6,6)
q <- c(7,2,4,3,2)
p+q # 9 5 8 9 8
sum(p+q) # 39

x <- c(-50:-54, -53:-50) # -50 -51 -52 -53 -54 -53 -52 -51 -50

rep(1:3, each = 2, length = 5) # 1 1 2 2 3

###################

x <- c(5,7,3,10,1)
x[3] # 3
x[-2] # 5 3 10 1
x[c(2,3,5)] # 7 3 1
x[4] <- 17
x # 5 7 3 17 1
x[c(1,3)] <- 4
x # 4 7 4 17 1

x <- c(1,2,3,7,6,8,3,12,0,17)
length(x) # 10
sort(x, decreasing = TRUE) # 17 12 8 7 6 3 3 2 1 0
mean(x) # 5.9

print("PSTAT 10 HW 1 Question 3", quote = FALSE) # PSTAT 10 HW 1 Question 3

seq(2.25, 3, 0.25) # 2.25 2.50 2.75 3.00

rep(1:4, each = 3, length= 10) # 1 1 1 2 2 2 3 3 3 4

sum(c(10:50),c(75:100)) # 3505

x <- c(1:6)
y <- c(seq(10, 60, 10))
x + y # 11 22 33 44 55 66

z <- c(1.0,2.0,4.6,5.5)
class(z) # numeric
as.integer(z) # 1 2 4 5
as.logical(z) # TRUE TRUE TRUE TRUE
as.character(z) # "1" "2" "4.6" "5.5"

A <- c("PSTAT 10")
B <- c("HOMEWORK 1, Q9")
paste(A,B) # "PSTAT 10 HOMEWORK 1, Q9
A == B # FALSE

###################

hist(CO2$uptake, breaks = "sturges", col="white",
     xlab="uptake rate", main = paste("carbon dioxide uptake rates in grass plants"))

x <- c(738, 538, 158, 103, 93, 682)
labels <- c("heart diseases", "cancer", "stroke", "pulmonary", "accidents", "others")
pie(x, labels, main = "deaths in 1995")

x <- c(9,9,22,32,33,39,39,42,49,52,58,70)
stem(x, scale=2)

min(state.area) # 1214
max(state.area) # 589757
mean(state.area) # 72367.98
median(state.area) # 56222
max(state.area) - min(state.area) # 588543

x <- c(2,3,3,3,4,2,5,NA,10)
mean(x, na.rm = TRUE) # 4
table(x) # mode is 3

###################

m <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE)
rownames <- c("a", "b", "c", "d")
colnames <- c("x", "y", "z")
m <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE, dimnames = list(rownames, colnames))
m # with added row and column names
m[,1] # column one
m[3,1] # third row, column one

a <- c(1,2,3)
b <- c(6,7,8)
c <- array(c(a, b), dim=c(3,2))
is.matrix(c) # TRUE

x <- matrix(nrow = 2, ncol = 3, byrow = FALSE)
x # empty two by three matrix

v1 <- c(1,3,4,5)
v2 <- c(10:15)
new.array <- array(c(v1,v2), dim = c(3,3,2))
new.array

v <- c(10, 20, 30, 20, 20, 25, 9, 26)
v
min(v) # 9 
max(v) # 30

alist <- list("PSTAT 10", 2024, 300, "ILP 1202")
alist[[4]] <- "ILP 1203" # replaced
print(alist)

###################

# continue tomorrow morning!

x <- matrix(1:12, nrow = 4, ncol = 3, byrow = FALSE)
x
x[2,]
x[,2] # self intuitive