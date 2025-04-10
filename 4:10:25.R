# question 1
m <- matrix(1:12, nrow=4, ncol=3, byrow=TRUE)
m
rnames <- c("a","b","c","d")
cnames <- c("x","y","z")
m <- matrix(1:12, nrow=4, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
m
m[,1] # 1 4 7 10
m[3,1] # 7


# question 2
a <- c(1,2,3)
b <- c(6,7,8)
d <- array(c(a,b), dim=c(3,2))
d
is.matrix(d) # TRUE

# question 3
x <- matrix(nrow=2, ncol=3, byrow=FALSE)
x


# question 4
v1 <- c(1, 3, 4, 5) 
v2 <- c(10,11,12,13,14,15)
new.array <- array(c(v1, v2), dim=c(3,3,2)) # use array
new.array

# question 5
x <- c(10, 20, 30, 20, 20, 25, 9, 26)
min(x) # 9 
max(x) # 30

# question 6
alist <- list("PSTAT 10", 2024, 300, "ILP 1202")
print(alist)
alist[[4]] <- "ILP 1203"
print(alist)
