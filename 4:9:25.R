# 5x4 matrix
y <- matrix(1:20, nrow=5, ncol=4, byrow=FALSE)
y
y[,3] # third column 
y[3,] # third row
y[2:4, 1:3] # rows 2,3,4 of columns, 1,2,3
dim(y) # dimensions, returns 5 4 (5 by 4)

hec <- c(32,11,10,3,53,50,25,15,3,30,5,8)
haireyecolor <- matrix(hec, nrow=3, ncol=4, byrow=TRUE)
haireyecolor
dim(haireyecolor) # returns 3 4
rnames <- c("black hair", "brown hair", "blond hair") # row names
cnames <- c("brown eyes", "blue eyes", "hazel eyes", "green eyes") # column names
haireyecolor <- matrix(hec, nrow=3, ncol=4, byrow=TRUE, dimnames=list(rnames, cnames))
haireyecolor
rowSums(haireyecolor) # sum of rows

# how many people with blonde hair and blue eyes?
haireyecolor["blond hair", "blue eyes"]

haireyecolor <- addmargins(haireyecolor) # sum rows, sum columns
haireyecolor

x <- apply(haireyecolor, 1, sum) # sum the rows
print(x)

y <- apply(haireyecolor, c(1,2), sum) # sum the rows and columns
print(y)

a <- c(1,2,4,5,6)
b <- c(3,2,4,1,9)
d <- c(7,5,5,6,4)

cc <- cbind(a,b,d) # creates a matrix from the vectors
cc
is.matrix(cc) # TRUE

cr <- rbind(a,b,d) # combine by row
cr
is.matrix(cr) # TRUE

cc <- subset(cc, select=-a) # remove column 'a'
cc

cc[1,] <- 1:2 # replace the first column with 1,2
cc

cr[,2] <- 4:6 # replace the second row with 4,5,6
cr

vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
result <- array(c(vector1,vector2), dim = c(3,3,2)) # create array
print(result)

column.names <- c("col1","col2","col3")
row.names <- c("row1","row2","row3")
matrix.names <- c("matrix1","matrix2")
result <- array(c(vector1,vector2), # add names
                dim = c(3,3,2),
                dimnames = list(row.names,column.names,matrix.names))
print(result)

aaa <- c(2,3,4,6)
bbb <- c(5,6,10,12,45)
new.array <- array(c(aaa,bbb), dim=c(3,3,2))
print(new.array)

result <- apply(new.array, 1, sum) # sum rows
print(result)

result <- apply(new.array, 2, sum) # sum columns
print(result)

result <- apply(new.array, c(1,2), sum) # sum each of the cells
print(result)

is.array(result) # TRUE

v <- c(0:10, 48)
class(v) # numeric

w <- as.integer(c(0:10, 48))
w
class(w) # ensures integer

# use the vector w to create a 4x3 matrix
new_matrix <- matrix(w,4)
new_matrix

new_matrix2 <- matrix(w, 4, 3) # same result
new_matrix2

# change the column names to x, y, z; the row names to a, b, c, d
# print the matrix, using one line of code
colnames(new_matrix) <- c("x", "y", "z") ; 
rownames(new_matrix) <- c("a", "b", "c", "d") ;
print(new_matrix)

# byrow is an option, or argument, in matrix(). the default is FALSE
# change to TRUE
new_matrix <- matrix(new_matrix, 4, byrow = TRUE) ; print(new_matrix)

my_list <- list(7,8,17)
is.list(my_list) # TRUE
length(my_list) # 3
my_list[2] # returns the 2nd and 3rd elements of the list

my_list[c(2,3)] # member reference using double square bracket notation

my_list[[2]] # changing list elements

my_list[2]+3 # notice: my_list[2]+3 returns an error
my_list[[2]]+3 # use double bracket

# add to an element in the list
my_list[[3]] # references element 3 of my_list
my_list[[3]] <- paste(my_list[[3]], " math") # adds math to element 3 of my_list
my_list

