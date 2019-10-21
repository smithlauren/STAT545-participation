# R exploration for class 2
# examples of R operations

number * 6
number <- 5 + 4
number * 2
a * 2

(ages <- c(60, 40, 33, 15, 20, 55, 35))
ages / 60

mean(ages)
sqrt(ages)
range(ages)
# This is a comment
ages < 30 # This is an inline comment
ages == 20
ages != 20
ages > 20 & ages < 50
ages < 20 | ages > 50
i <- which(ages < 30)
sum(ages < 30)
a <- all(ages < 30)

# Subsetting:
ages[3]
ages[-3]
ages[c(2, 4)]
ages[c(4, 2)]
ages[1:5]
ages[3, 5]
ages[ages < 30]
ages
ages[ages > 50] <- 50
ages[8] <- NA
ages
mean(ages, na.rm = TRUE)
mean(ages, 0, TRUE)
mean(na.rm = TRUE, x = ages)
?mean

mtcars
str(mtcars)
names(mtcars)
mtcars$mpg
