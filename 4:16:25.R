d <- c(2, 3, 4, 6)
e <- c("red", "white", "red", "green")
f <- c(TRUE, TRUE, TRUE, FALSE)

my_df <- data.frame(d,e,f)
is.data.frame(my_df)

rownames <- c("one", "two", "three", "four")
my_df <- data.frame(d,e,f, row.names = rownames)
my_df

my_df2 <- my_df[,c("d", "f")]
my_df2

my_df3 <- my_df[,c(1,2)]
my_df3

my_df4 <- my_df[c("one", "two"),]
my_df4

data("iris")
View(iris)
is.data.frame(iris)
dim(iris)
ls(iris)
names(iris)

head(iris, n=5)
tail(iris, n=5)

my_iris_data1 <- subset(iris, select= -Petal.Width)
head(my_iris_data1, n=5)

my_iris_data2 <- subset(iris, select= -c(Petal.Length, Species))
head(my_iris_data2, n=5)

my_iris_data3 <- subset(iris, select= c(Petal.Length, Species))
head(my_iris_data3, n=5)

my_iris_data4 <- subset( iris, select = -c(Sepal.Width:Species) )
head(my_iris_data4, n=5)

summary(iris)
names(iris)

hist(iris$Petal.Length)
mean(iris$Petal.Length)
median(iris$Petal.Length)
sd(iris$Petal.Length)

boxplot(Petal.Length~Species, data=iris,
        main=toupper("Petal.Length~ to Species"),
        xlab= "Species", ylab="Petal.Length",col="pink")

FirstName <- c("Ann", "Paul", "Bob")
LastName <- c("Smith", "Liu","Lopez")
Department <- c("Math", "Physics", "Biology")

Faculty_Profile <- cbind(FirstName,LastName,Department)
Faculty_Profile
is.matrix(Faculty_Profile)

New_Faculty_Profile <- data.frame(FirstName = c("John","Sara","Jane"),
                                  LastName = c("Day", "Brown","Green"),
                                  Department = c("History", "English", "PSTAT"))
New_Faculty_Profile
is.data.frame(New_Faculty_Profile) 

All_Faculty_Profile <- rbind(Faculty_Profile, New_Faculty_Profile)
All_Faculty_Profile
is.data.frame(All_Faculty_Profile)

write.csv(All_Faculty_Profile, "All_Faculty_Profile2.csv")
getwd()

read.csv("All_Faculty_Profile2.csv")

Missing_Values <- data.frame(x=c("PSTAT",2, TRUE), y=c(5, NA, 8))
Missing_Values
is.data.frame(Missing_Values)
na.omit(Missing_Values)

data("faithful")
is.data.frame(faithful)
head(faithful, n=10)

duration <- faithful$eruptions
hist(duration)
hist(faithful$eruptions)

color <- c("red", "orange", "yellow", "blue", "green",
           "red", "orange", "yellow")
hist(duration, col=color)

duration <- faithful$eruptions
stem(duration, scale=2)

summary(duration)
boxplot(duration)

plot(iris[ , 3], iris[ , 4])
plot(iris$Petal.Length, iris$Petal.Width,
     main="Edgar Anderson's Iris Data")

plot(iris$Petal.Length, iris$Petal.Width,
     pch=21, bg=c("red","green3","blue"),
     main="Edgar Anderson's Iris Data")

head(iris, n=10) 
cor(iris$Petal.Length, iris$Petal.Width) 
scatter.smooth(iris$Petal.Length,iris$Petal.Width)

BestFit <- lm(iris$Petal.Width ~ iris$Petal.Length, data=iris)
BestFit