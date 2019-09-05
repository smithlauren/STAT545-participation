#testing out R in class
#<- is "get", assigns that value to the variable, equal sign (=) works the same
#order of script doesn't matter but order of execution matters, i.e. object has to be defined before a calculation is attempted
#defined objects appear in the environment tab
number <- 5+2
number*2

#making a vector = c()
times <- c(60, 40, 33, 15, 20, 55, 35)
times #to print
(times <- c(60, 40, 33, 15, 20, 55, 35)) #define and print at the same time
times / 60 #to get time in hours
mean(times) #to average the times
sqrt(times) #to squareroot times
range(times) #to get range of times

#logicals
times < 30 #tells me which values are less than 30, will list "TRUE" or "FALSE"
times == 20 #tells me which values are equal to 20, TRUE/FALSE output
times != 20 #tells me which are not equal to 20
times > 20 & times < 50 #combine command with &, TRUE when both commands are true, FALSE when one or both are FALSE
times < 20 | times > 50 #"or" is |
which(times < 30) #tells me what positions fulfill that requirement i.e. 4th and 5th numbers are true
sum(times < 30) #tells how many fulfill that

#subsetting
times[3] #extracts third entry
times[-3] #extracts everything except third entry
times[c(2,4)] #extracts 2nd and 4th entry, have to tell to pull from a vector with c(), would try to pull from matrix (2nd row, 4th column) with out c()
times[c(4,2)] #flips order of extractions
times[1:5] #extracts entries 1-5
times[times < 30] #extract all times that are less than 30
times[times > 50] <- 50 #will replace all entries greater than 50 with 50
times[8] <- NA #adds an 8th entry (NA) to vector

#functions
?mean #gives me the documentation for the function
mean(times, na.rm = TRUE) #give mean without the NA that is in the vector
mean(times, 0, TRUE) #don't have to specify each argument if it is in the right order, but if not entering them in the right order, must specify what each argument is
mean (trim = 0, na.rm = TRUE, x = times) #same as above

#dataframes
mtcars #existing dataframe in R
str(mtcars) #prints the structure of the dataframe
names(mtcars) #extracts vector of names of columns
mtcars$mpg #extracts the single column "mpg"
