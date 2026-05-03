
# Assignment 8

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
