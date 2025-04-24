# question 1
# A card is selected at random from a pack consisting of a total of 52 cards, 
# including 4 queens and 4 kings. The card is not replaced. A second card is 
# selected. Find the probability that the second card is a queen, given that 
# the first card is a king.

answer <- 4/51

# question 2
# A Statistics class has an enrollment of 300. Out of these, 95 are taking 
# the Actuarial Statistics major, 120 are Data Science majors, 80 are 
# Financial Math majors and 5 are Undecided. Find the probability that a student 
# in the class chosen at random is neither an Actuarial Statistics nor a 
# Data Science major.

95/300 # actuarial statistics
120/300 # data science
80/300 # financial math
5/300 # undecided

answer <- 85/300

# question 3
# A two-digit number is chosen at random. What is the probability that the 
# chosen number is a multiple of 5?

# 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95

answer <- 18/90

# question 4
# Which of he following pairs of events are mutually exclusive? 
# Explain your reasoning.
# a. Have rain and sunshine on 4th July.
# b. A person wearing red shoes and a red hat.
# c. Rolling a prime number or rolling an even number when you roll a fair 
#    six-sided die.

answer <- "A because you cannot have rain and sunshine at the same time"

# question 5
# Three white paint balls, A, B and C, are fired at a target independently.
# The probability that a paint ball A will hit the target is 0.7, the probability
# that paint ball B will hit the target is 0.8, and the probability that paint 
# ball C will hit the target is 0.9.
# a. What is the probability that at least one of them will hit the target?
# b. What is the probability that A will miss, B will hit the target and 
#    C will miss the target?

# A doesn't hit 0.3. B doesn't hit 0.2. C doesn't hit 0.1.
# 0.3 * 0.2 * 0.1
# 1 - 0.0006

# A doesn't hit 0.3. B hits 0.8. C doesn't hit 0.1.
# 0.3 * 0.8 * 0.1

answer <- 0.994 # for a
answer <- 0.024 # for b

# question 6
# Among 35 students in a class, 17 earned “A” on the midterm, 14 earned “A” on 
# final exam, and 11 did not earn “A” on either exam. What is the probability 
# that a randomly selected student from this class earned “A” on both exams?

17/35 # A on midterm
14/35 # A on final
11/35 # A on neither
24/35 # A on at least one
# (17 + 14) - 24
# 31 - 24

answer <- 7/35

# question 7
# Using R:
# a. Calculate 32!
# b. How many different ways can 5 ULA’s be assigned to 3 classes? 
# (Assume 1 ULA per class)
# c. How many different ways can a professor choose 10 out of 85 exam papers 
# to review, assuming order does not matter.

answer <- factorial(32) # for a
answer <- choose(5, 3) * factorial(3) # for b
answer <- choose(85, 10) # for c





