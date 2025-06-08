# question 1
sqrt(729)

# question 2
b <- 1947.0

# question 3
v <- c(1:6)

# question 4
v <- c(1, 'a', 2, 'b')

# question 5
v <- c("Jason", "John", "Peter", "Annie", "Hannah", "Melody")
length(v)
v[1:2]
v[c(2,4)]
sort(v)

# question 6
v <- c(1, 2, NA, 4)
v <- na.omit(v)

# question 7
x <- c(4, 6, 5, 7, 10, 9, 4, 15)
x < 7

# question 8
p <- c(3, 5, 6, 8)
q <- c(3, 3, 3)
p + q

# question 9 
age <- c(22, 25, 18, 20)
name <- c("James", "Matthew", "Olivia", "Stella")
gender <- c("M", "M", "F", "F")
df <- data.frame(age, name, gender)
df[1:2, ]

# question 10
seq(2, 11, 3)

# question 11
seq(1, 4, 1)

# question 12
array(1:24)

# question 13
x <- c(NA, 3, 14, NA, 33, 17, NA, 41)
x <- na.omit(x)

# question 14
x <- c(1, 2, 3, 3, 5, 3, 2, 4, NA)
levels(factor(x))

# question 15
v <- c(1:12)
B <- matrix(v, nrow = 4, ncol = 3)
colnames(B) <- c("x", "y", "z")
rownames(B) <- c("a", "b", "c", "d")
B

# question 16
for (i in 1:7) {
  print(i^3)
}

# question 17
z <- c("p", "a" , "g", "t", "b")
z[3] <- "b"

# question 18
x <- c(1:4, 101:104)
matrix(x, nrow = 4, ncol = 2)

# question 19
# c

# question 20
result_in_batches <- dbSendQuery(PSTAT10db, 'SELECT weight FROM chickwts')
batch1 <- dbFetch(result_in_batches, n=5)
batch2 <- dbFetch(result_in_batches, n=5)
batch3 <- dbFetch(result_in_batches, n=5)
nrow(batch1) + nrow(batch2) + nrow(batch3)
dbSendQuery(PSTAT10db, "SELECT weight, feed FROM chickwts
            WHERE (weight < 300 and feed = 'linseed') OR 
            (weight > 300 and feed = 'soybean')")
dbSendQuery(PSTAT10db, "SELECT MAX(weight) AS maxweight, MIN(weight) as minweight
            FROM chickwts WHERE feed = 'soybean'")

# question 21
data(warpbreaks)
summary(warpbreaks)
dbSendQuery(PSTAT10db, "SELECT * FROM warpbreaks WHERE breaks > 40 and wool = 'A'")
dbSendQuery(PSTAT10db, "SELECT SUM(breaks) FROM warpbreaks WHERE wool = 'B'")

# question 22
# {Title, Year, StarName} candidate key and {Title, Year, StarName} primary key

# question 23
# yes, integrity is violated

# question 24
# b

# question 25
# nothing

# question 26
NEWPRODUCT <- dbGetQuery(PSTAT10db, "SELECT * FROM PRODUCT")
dbWriteTable(PSTAT10db, "NEWPRODUCT", NEWPRODUCT)
dbExecute(PSTAT10db, "
  INSERT INTO NEWPRODUCT (PRODUCT_ID, NAME, COLOR)
  VALUES ('p9', 'SOCKS', 'ORANGE')
")
dbGetQuery(PSTAT10db, "
  SELECT * FROM NEWPRODUCT
  LIMIT 1 OFFSET 1
")
dbRemoveTable(PSTAT10db, "NEWPRODUCT")
dbExecute(PSTAT10db, "PRAGMA foreign_keys = ON")
dbExecute(PSTAT10db, "
  CREATE TABLE RAINWEAR (
    ItemID TEXT PRIMARY KEY,
    Type TEXT,
    Size TEXT,
    Color TEXT,
    Brand TEXT
  )
")
dbExecute(PSTAT10db, "
  INSERT INTO RAINWEAR (ItemID, Type, Size, Color, Brand)
  VALUES 
    ('r1', 'jacket', 'M', 'Blue', 'NorthFace'),
    ('r2', 'pants', 'L', 'Black', 'Columbia')
")
dbGetQuery(PSTAT10db, "SELECT * FROM RAINWEAR")

# question 27
# c
