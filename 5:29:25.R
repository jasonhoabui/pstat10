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

PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")
dbWriteTable(PSTAT10db, "CUSTOMER", CUSTOMER)
dbWriteTable(PSTAT10db, "DEPARTMENT", DEPARTMENT)
dbWriteTable(PSTAT10db, "EMPLOYEE", EMPLOYEE)
dbWriteTable(PSTAT10db, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(PSTAT10db, "INVOICES", INVOICES)
dbWriteTable(PSTAT10db, "PRODUCT", PRODUCT)
dbWriteTable(PSTAT10db, "SALES_ORDER", SALES_ORDER)
dbWriteTable(PSTAT10db, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(PSTAT10db, "STOCK_TOTAL", STOCK_TOTAL)
dbListTables(PSTAT10db)

# question 1
dbGetQuery(PSTAT10db, 'SELECT DISTINCT NAME FROM EMPLOYEE')
# smith, brown, green

# question 2
dbGetQuery(PSTAT10db, "SELECT NAME FROM DEPARTMENT WHERE NAME LIKE 'S%' AND NAME LIKE '%r%'")
# it does not change whether or not you use 'R' or 'r'

# question 3
dbGetQuery(PSTAT10db, "SELECT * FROM PRODUCT WHERE NAME LIKE '%SOCKS%' AND COLOR LIKE '%WHITE%'")
# yes it does sell white socks

# question 4
dbGetQuery(PSTAT10db, "SELECT AGE FROM EMPLOYEE WHERE NAME LIKE '%BROWN%'")
# brown is 65 years old

# question 5
dbGetQuery(PSTAT10db, "SELECT EMP_NO FROM EMPLOYEE WHERE NAME LIKE '%R%'")
# e3 and e5

# question 6
dbGetQuery(PSTAT10db, "SELECT NAME, AGE, EMP_NO FROM EMPLOYEE WHERE AGE != 21")
# smith 31 e2, brown 65 e3, green 52 e5

# question 7
dbGetQuery(PSTAT10db, "SELECT NAME FROM DEPARTMENT")
# accounts, stores, sales




