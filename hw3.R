# question 1
x <- c(8, 98, 5, 115, 22, 76, 16, 69)
arr.clinical <- array(x, dim=c(2,2,2))
arr.clinical
  
rownames(arr.clinical) <- c("deaths", "survivors")
colnames(arr.clinical) <- c("tolb", "placebo")
arr.clinical

dimnames(arr.clinical)[[3]] <- c("age<55", "age>=55")
arr.clinical

apply(arr.clinical, MARGIN = 1, FUN = sum)

apply(arr.clinical, MARGIN = 2, FUN = sum)

arr.clinical[2,2,2]

combined <- apply(arr.clinical, MARGIN = c(1,2), FUN = sum)
combined

# question 2 
is.data.frame(VADeaths)

VADeaths.df <- as.data.frame(VADeaths)

deaths.age <- apply(VADeaths.df, MARGIN = 1, FUN = sum)
deaths.age

summary(VADeaths.df)

# question 3
class(state.x77)

df1 <- as.data.frame((state.x77))
head(df1)

sum(df1["Income"] < 4300)

# question 4
z <- factor(c("agree", "agree", "strongly agree", "disagree", "agree"), levels = c("disagree", "agree", "strongly agree"))
z

nlevels(z)

levels(z)

# question 5
df <- data.frame(subject = c("english", "maths", "chemistry", "physics"), percentage = c(80, 100, 85, 95))
df

colnames(df) <- c("course", "score")
df

df[1]

# question 6
swisscopy <- swiss[c(1,2,3,10,11,12,13), c("Examination", "Education", "Infant.Mortality")]
swisscopy