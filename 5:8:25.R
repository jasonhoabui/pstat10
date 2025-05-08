# question 1
for (i in 1:7) { 
  print(i^3)
}

# question 2
x <- c("PSTAT")
i <- 1
repeat{
  print(x)
  i <- i + 1
  if (i > 6) {
    break
  }
}

# question 3
cube <- function(n) {
  return(n^3)
}

# question 4
i <- 13
while (i <= 17) {
  if (i %% 2 == 1) {
    print(i^2)
  }
  i <- i + 1
}

# question 5
install.packages(DBI)
install.packages(RSQLite)
install.packages(sqldf)
library(DBI)
library(RSQLite)
library(sqldf)

CUSTOMER <- read.csv("CUSTOMER.txt")
DEPARTMENT <- read.csv("DEPARTMENT.txt")
EMPLOYEE <- read.csv("EMPLOYEE.txt")
EMPLOYEE_PHONE <- read.csv("EMPLOYEE_PHONE.txt")
INVOICES <- read.csv("INVOICES.txt")
PRODUCT <- read.csv("PRODUCT.txt")
SALES_ORDER <- read.csv("SALES_ORDER.txt")
SALES_ORDER_LINE <- read.csv("SALES_ORDER_LINE.txt")
STOCK_TOTAL <- read.csv("STOCK_TOTAL.txt")
head(STOCK_TOTAL)

mydb <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")

dbListTables(mydb)