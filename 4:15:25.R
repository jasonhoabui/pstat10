# question 1
x <- c(3,7,7,8,9,10,1)
which(x>7) # 4 5 6

# question 2
y <- c("PSTAT 10 , PSTAT 5LS, PSTAT 120B")
y # "PSTAT 10, PSTAT 5LS, PSTAT 120A"
gsub("B", "A", y)
y # "PSTAT 10, PSTAT 5LS, PSTAT 120B"

# question 3
toupper(month.name[6:8]) # "JUNE" "JULY" "AUGUST"

# question 4
z <- c("B", "B", "D", "E")
a <- factor(z)
a # B B D E Levels: B D E
levels(a) # "B" "D" "E"
levels(a)[1] <- "A"
levels(a) # "A" "D" "E"