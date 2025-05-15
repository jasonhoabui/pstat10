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

mydb <- dbConnect(RSQLite::SQLite(), "my-db.sqlite")

dbWriteTable(mydb, "CUSTOMER", CUSTOMER)
dbWriteTable(mydb, "DEPARTMENT", DEPARTMENT)
dbWriteTable(mydb, "EMPLOYEE", EMPLOYEE)
dbWriteTable(mydb, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(mydb, "INVOICES", INVOICES)
dbWriteTable(mydb, "PRODUCT", PRODUCT)
dbWriteTable(mydb, "SALES_ORDER", SALES_ORDER)
dbWriteTable(mydb, "SALES_ORDER_LINE", SALES_ORDER_LINE)
dbWriteTable(mydb, "STOCK_TOTAL", STOCK_TOTAL)

# question 1
dbReadTable(mydb, "CUSTOMER")
dbReadTable(mydb, "DEPARTMENT")
dbReadTable(mydb, "EMPLOYEE")
dbReadTable(mydb, "EMPLOYEE_PHONE")
dbReadTable(mydb, "INVOICES")
dbReadTable(mydb, "PRODUCT")
dbReadTable(mydb, "SALES_ORDER")
dbReadTable(mydb, "SALES_ORDER_LINE")
dbReadTable(mydb, "STOCK_TOTAL")


# question 2
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER')
