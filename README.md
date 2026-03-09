# r-programming-assignments
# Destini Randall
# LIS4370
# Repository for R Programming Assignments
# ---------------------------
# Module 2 Assignment
# Blog: https://rprogrammingjournal-destinirandall.blogspot.com/2026/01/mymean-error-and-correction.html

# The output from testing myMean was "Error in myMean(assignment2) : object 'assignment' not found".  
# The function fails because assignment and someData are not assigned variables. These objects do not exist, so trying to pass them to the function myMean(assignment2) results in an error. To correctly return the mean of assignment2, the myMean function needs the variable assignment2 to replace assignment and someData.

# Corrected version of myMean, which returns 19.25: 
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}  
# ---------------------------
# Module 3 Assignment
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_political_poll_results <- c(4, 62, 51, 21, 2, 14, 15)

CBS_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19) 

election_2016 <- data.frame(Name, ABC_political_poll_results, CBS_political_poll_results)

election_2016
# ---------------------------
# Module 4 Assignment
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


boxplot(bloodp ~ finaldecision, 
        main = "Patients BPs & MD’s Ratings",
        names = c("Low","High"),
        xlab = "Final Decision",
        ylab = "Blood Pressure")

hist(bloodp,
     main = "Histogram of Patient's Blood Pressure",
     xlab = "Blood Pressure")
# ---------------------------
# Module 5 Assignment
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)


det(A)
det(B)

solve(A)
solve(B)
# ---------------------------
# Module 6 Assignment
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)
AB_sum <- A + B
AB_dif <- A - B
AB_sum
AB_dif

C <- c(4,1,2,3)
diag(C)

D <- diag(x = 3, nrow = 5, ncol = 5)
D[1, 2:5] <- 1
D[2:5, 1] <- 2
D
# ---------------------------
# Module 7 Assignment

# S3
produce <- list(name = "Apple", amount = 5, price = 3.45)
class(produce) <- "produce"

print.produce <- function(object) {
  cat("Name:", object$name, '\n')
  cat("Amount:", object$amount, '\n')
  cat("Price: $", object$price, '\n')
}
produce

# S4
setClass("course", slots = list(name = "character", seats = "numeric", start_time = "numeric"))

course <- new("course", name = "Calculus", seats = 45, start_time = 10)

setMethod("show",
          "course",
          function(object) {
            cat("Course Name:", object@name, '\n')
            cat("Seats Available:", object@seats, "\n")
            cat("Class Starts:", object@start_time, "A.M.\n")
          }
)
course
# ---------------------------
# Module 8 Assignment

install.packages("plyr")
library(plyr)

#Step 1
student_assignment_6 <- read.table(file.choose(), header = TRUE, sep = ",")
students_gendered_mean = ddply(student_assignment_6, "Sex", transform, Grade.Average = mean(Grade))
write.table(students_gendered_mean, "Students_Gendered_Mean.txt")

#Step 2
i_students <- subset(student_assignment_6, grepl("i", student_assignment_6$Name, ignore.case = TRUE))

#Step 3
write.table(i_students, "DataSubset.csv", sep = ",")
# ---------------------------
