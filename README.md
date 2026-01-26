# r-programming-assignments
# Destini Randall
# LIS4370
# Repository for R Programming Assignments
----
# Module 2 Assignment
# Blog: https://rprogrammingjournal-destinirandall.blogspot.com/2026/01/mymean-error-and-correction.html

# The output from testing myMean was "Error in myMean(assignment2) : object 'assignment' not found".  
# The function fails because assignment and someData are not assigned variables. These objects do not exist, so trying to pass them to the function myMean(assignment2) results in an error. To correctly return the mean of assignment2, the myMean function needs the variable assignment2 to replace assignment and someData.

# Corrected version of myMean: 
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}  
----
