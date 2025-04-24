x <- c(1:9)
y <- c(1:12)
z <- c(1:15)

my_list <- list(x,y,z)
my_list
lapply(my_list, sum)
sapply(my_list, sum)

data(state)
rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)

is.vector(state.area)
state.area

smallstate <- state.area < 10000
smallstate
sum(smallstate)
class(smallstate)

largestate <- state.area > 100000
largestate
sum(largestate)

sum(smallstate | largestate)

state.name
which(state.name == "Alaska")
x <- sort(state.area)
x
which(x >= 158693)
which(state.area==5009)

gender <- factor(c("male", "female", "female", "male"))
gender
levels(gender)
nlevels(gender)
table(gender)
plot(gender)

classgrades <- factor(c("A", "B"))
classgrades <- ordered(c("A", "B"))
classgrades
nlevels(classgrades)
is.factor(classgrades)

y <- c("Hello, PSTAT 10")
y
sub("PSTAT 10", "MATH 8", y)

x <- c("Hello, Hello World") 
x
gsub("Hello", "Hi", x)

z <- c("Goodbye, goodbye and farewell, goodbye")
sub("goodbye", "so long", z)
gsub("goodbye", "so long", z)

letters[1:4]
month.name[1:4]
month.abb [10:12]