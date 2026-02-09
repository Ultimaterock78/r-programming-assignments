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

