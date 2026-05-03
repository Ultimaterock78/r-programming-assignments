
#Assignment 6

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