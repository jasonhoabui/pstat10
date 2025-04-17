# question 1
install.packages(MASS)
library(MASS)
painters
mean(painters$Composition[painters$School == "C"]) # 13.16667

# question 2
maxscore <- max(painters$Composition) # 18
top <- unique(painters$School[painters$Composition == maxscore]) 
print(top) # E G

# question 3
mean(painters$Colour >= 14) * 100 # 37.03704%

# question 4
schools <- table(painters$School)
pie(schools, main = "Painter Schools") # see graph

# question 5
tapply(painters$Composition, painters$School, FUN = mean) # run

# question 6
barplot(schools) # see graph
