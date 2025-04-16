# problem 1
hec <- c(32,11,10,3,53,50,25,15,3,30,5,8)
haireyecolor1 <- matrix(hec, nrow=3, ncol=4, byrow=TRUE) # rename to haireyecolor1

View(HairEyeColor)

is.array(HairEyeColor) # TRUE

sum(HairEyeColor) # 592

sum(HairEyeColor[,,1]) # 279

sum(HairEyeColor[,2,]) # 215

sum(HairEyeColor[3,,2]) # 37

# problem 2
plot(mtcars$drat, mtcars$mpg,
     xlab = "Rear Axle Ratio", ylab = "MPG",
     main = "Miles/(US) Gallon vs. Rear Axle Ratio")

barplot(table(mtcars$gear),
        xlab = "Forward Gears",
        main = "Barplot of Forward Gears", col = 2)

summary(mtcars)

boxplot(mtcars$mpg, col = 7, main = "Boxplot of MPG")

boxplot(mtcars$mpg ~ mtcars$gear, col = 10:12, xlab = "Number of Gears",
        ylab = "MPG", main = "Boxplot of MPG vs. Number of Forward Gears")

# question 3
V1 <- c(77, 44, 33)
V2 <- c("Hamilton","Bottas","Verstappen")
z <- list(V1, V2)

z[[1]] <- append(z[[1]], 11)
z[[2]] <- append(z[[2]], "Perez")
z

substr(z[[2]], 1, 1)[1:3]

# question 4
mat <- matrix(16:31, nrow = 4, ncol = 4, byrow = TRUE)
mat
colnames(mat) <- c("C1","C2","C3","C4")
rownames(mat) <- c("R1","R2","R3","R4")
mat[2,3]

# question 5
arr1 <- array(1:20, dim = c(3,4,2),
              dimnames = list(c("Row1","Row2","Row3"),
                              c("Col1","Col2","Col3","Col4"),
                              c("Matrix 1","Matrix 2")))
arr1
apply(arr1, MARGIN = 2, FUN = sum)
apply(arr1, MARGIN = 3, FUN = mean)
