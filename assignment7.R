
#Assignment 7

data("iris")
print(iris)
summary(iris)
head(iris, 3)

class(iris)
isS4(iris)

#S3
produce <- list(name = "Apple", amount = 5, price = 3.45)
class(produce) <- "produce"

print.produce <- function(object) {
  cat("Name:", object$name, '\n')
  cat("Amount:", object$amount, '\n')
  cat("Price: $", object$price, '\n')
}
produce

#S4
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
