# load the dataset 'state'
data("state")

# remove unwanted datasets
rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)

# is state a vector? TRUE
is.vector(state.area)

state.name # returns the vector (names)
class(state.name) # character
state.abb # returns the vector (abbreviations)
print(state.area) # returns the vector (area codes)
class(state.area) # numeric

# histogram
hist(state.area) # default
hist(state.area, breaks = "sturges", col="yellow",
     xlab="state areas (sq. miles)", main = paste("histogram of state areas"))

options(scipen = 999) # turns off scientific notation

hist(state.area , breaks = "sturges", col="orange",
     xlab= "state areas (sq. miles)", border = "blue",
     main = paste("histogram of state areas"))

options(scipen = 0) # turns scientific notation on again

x <- c(12,15,24,29,30,31,52,58,60,63) 
stem(x, scale=2)

y <- c(1,1,1,6,7,4)
mfv(y) # 1
range(y) # 1 7
sd(y) # 2.73252

df <- c(12,3,4,56,78,18,46,78,100)
quantile(df)
IQR(df)
summary(df)
fivenum(df)

G <- c(1,2,3,4,5,6,7,8,9,10)
summary(G)
fivenum(G)
boxplot.stats(G)

F <-c(12,3,4,56,78,18,46,78,100)
summary(F)
fivenum(F)
boxplot(F)

boxplot(state.area)
boxplot(state.area, col="yellow", border="blue",
        main="boxplot of state area data", 
        horizontal = TRUE)

boxplot(wt~cyl, data=mtcars,
        main=toupper("compare vehicle weight to number of cylinders"),
        xlab= "number of cylinders", ylab="weight",col="pink")

dogs <- c(1,4,6,10)
breed_name<- c("alsatian", "collie", "pug", "beagle")
barplot(dogs,names.arg = breed_name, xlab="breed",
        ylab="number of dogs", col= "green",
        main="dog chart",border="black")

x<-c(4,5,6,1,4)
labels<-c("comedy", "action", "romance", "drama", "scifi")
pie (x, labels, radius=0.8, main="movies",
     col= rainbow(length(x)), clockwise = TRUE)

Test_Results <- c("bob" = 8, "alice" = 7, "alex" = 8, "juan" = 10, "amy" = 5)
mean(Test_Results)

Test_Results_1 <- c("bob" = 8, "alice" = 7, "alex" = 8,
                    "juan" = 10, "amy" = 5, jim = NA)
mean(Test_Results_1)
mean(Test_Results_1, na.rm = TRUE) # ignore missing values, jim is NA

x <- c(10, 20, 30, 20, 20, 25, 29, 26)
y <- c(10, 50, 30, 20, 20, 35, 19, 56)
z <- c(10, 40, 30, 20, 20, 25, 49, 26)
result1 <- intersect(x,y) # 10 20 30
result2 <- intersect(x,y,z) # error
result3 <- intersect(intersect(x,y),z) # correct way 10 20 30
