PSTAT10db <- dbConnect(RSQLite::SQLite(), "PSTAT10-db.sqlite")

# question 1
dbSendStatement(PSTAT10db, 'INSERT INTO DEPARTMENT VALUES ("D4", "COMPLAINTS", "E3")')
dbReadTable(PSTAT10db, 'DEPARTMENT')
dbSendQuery(PSTAT10db, 'CREATE TABLE NEW_DEPARTMENT as 
            select * from department') # help -> alt method but works
dbRemoveTable(PSTAT10db, "NEW_DEPARTMENT")
dbListTables(PSTAT10db)

# question 2
dbWriteTable(PSTAT10db, "airquality", airquality, overwrite=TRUE)
result_in_batches <- dbSendQuery(PSTAT10db, 'SELECT ozone FROM airquality')
dbFetch(result_in_batches, n=10)
dbGetRowCount(result_in_batches)
dbClearResult(result_in_batches)
dbDisconnect()

# question 3
dbSendStatement(HealthCARE, 'INSERT INTO DOCTOR VALUES ("500", "Jones", "SAINTS")')
# we cannot add dr. liu to healthcare's database because they did not give a doctor id
