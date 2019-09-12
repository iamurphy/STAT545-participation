# This is the R code for participation in Lecture 002

number / 6
number <- 5
number * 10
# nmber * 2 Doesn't exist -> Error is thrown

# Time to get to work (minutes)
times <- c(10,30,15,60,75,5,9)

# Convert this to hours (operations are always done component wise)
times_hours <- times / 60
times_hours

# Average commute time in minutes? Use function mean.
mean(times)

# Range of values?
range(times)

# Logicals
times < 30
times == 60
(20 < times & times < 60)
(times < 10 & times > 5)

which(times < 30)
any(times == 60)
all(times > 5)

# Using []
times[3] # Third entry
times[-3] # Everything except third entry
times[2:5] # Entries 2 through 5
times[c(2,4)] # Entries 2 and 4
times[times < 30] # All entries less than 30

# times never changed
times

# Replace elements
times[2] <- 25
times[6] <- 6

times[times > 30] <- 30

# Add NA
times[3] <- NA
# Mean is now NA. Does not ignore the NA.
mean(times)

# Mean documentation
?mean

# Inputting additional arguments
mean(times, na.rm=TRUE) # Removes all NA's from our vector

# Data frames
# mtcars
head(mtcars)
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
names(mtcars)

# Working with "names" of the variables.
names(mtcars)[1]
which(names(mtcars) == "wt")
mean(mtcars$mpg)

# Packages
library(tibble)
library(gapminder)

head(gapminder)
names(gapminder)
mean(gapminder$pop)


