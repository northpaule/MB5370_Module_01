#------------------------
# MB5370: Introduction to Programming
# Paule Mathieu
# May 2026

# Workspace:
#F:/Paule/MB5370/Module_01/Module_01.R
#------------------------


#------------------------
#Workshop 01. Introduction ####

# Getting started ####
# This section introduces us to R by using it as a simple calculator.

2+1
1:30 #creates a sequence of numbers

6* #multiplication
  2

#6%2 #error in syntax





# Variables and Assignment #### 
# This section focuses on understanding how data is stored in R and why that matters.

age <- 25
first_name <- 'Bill'

age+1
age+age 

#you cannot use a number/symbol at the beginning of an object name, got it.

sum_result <- sum(15, 25.1, 20.25)
object <- 12
sum_result + object 




# Functions ####
# This section introduces us to R basic functions.

#Base R Package: https://stat.ethz.ch/R-manual/R-patched/library/base/html/00Index.html

years_old <- 25.7
round(years_old) # rounds up
floor(years_old) # rounds down

years_old <- 25.765
round (years_old, 2) # comma after the object to specify argument

?round # go to help

#Create objects
name <- "Gary"
age <- 28

#Create sentence (using paste())
sentence <- paste(name, "is", age, "years old. :)")
print(sentence)


# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets


grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade + 10
print (total) # executed in the way it was defined


# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be? -> 10
print (out) # What is the value of out? Is it the same as expected? -> Yes


# debugging errors
#out <- p * a # undefined variable.
## > Error: object 'a' not found
out <- p * z


# Testing statements in scripts
x <- 1
is.character(x) # FALSE
is.numeric (x) # TRUE


my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro", # expected ',' after expression (it was missing)
             "cinco")
print (my_quiz) # syntax error my_quis should be my_quiz
str(my_quiz)
length(my_quiz) #len could be from a different package, should be length in this one





# Data types 
# Understanding data types will ensure you are performing the right codes based on your needs.

my_numeric_variable = 4.2
class(my_numeric_variable) #numeric
typeof(my_numeric_variable) #double
length(my_numeric_variable) #1
attributes(my_numeric_variable) #NULL

my_character = "boat"
class(my_character) #character
typeof(my_character) #character
length(my_character) #1
attributes(my_character) #NULL

my_integer = 25L
class(my_integer) #integer
typeof(my_integer) #integer
length(my_integer) #1
attributes(my_integer) #NULL

my_logical = TRUE
class(my_logical) #logical
typeof(my_logical) #logical
length(my_logical) #1
attributes(my_logical) #NULL




# Data structures
# Understanding structure is particularly important when you want to pull out single values from a data frame. Best to keep a good structure to adapt good habits.

list("uno", "dos")
y <- c(1, 2, 3) # vector
z <- c("Graham", "Logan", "Dean", "Tucker" ) # character elements
#class(y) # object y not found
class(z) # numeric

x <- list(1, "a", TRUE) # lists the elements inside the ()
x[[2]] # retrieving the second element in the list





# Dta frames and tibbles (tables?)
# Used for two-dimensional data files.

my_dataframe <- data.frame(
  no = c(1, 2, 3),
  name = c("Graham", "Logan", "Dean"),
  active = c(TRUE, FALSE, TRUE)
)

my_dataframe
str(my_dataframe)

my_dataframe$no = as.factor(my_dataframe$no)
str (my_dataframe)





# Packages and libraries
# To make your own code an R package, you need to write a set of functions and package them up into a way that they are reliable to use on any computer. 

#install.packages("tidyverse") # download and install
library(tidyverse) # load into current workspace

#install.packages("ggplot","tidyr", "earthtones","redlistr","dplyr" ,"terra", "ggplot2")
library (ggplot2)

?ggplot2

#Class discussion
# 1. Read the .csv dataset into R.

# 2. Inspect the dataset to understand the columns and data types.

# 3. Clean the data if needed (e.g. fix missing values or incorrect entries).

# 4. Select/filter the species of interest from the dataset.

# 5. Extract the abundance/count data for that species.

# 6. Summarise or organise the data if needed 
#    (e.g. totals by site, date, or habitat).

# 7. Create a plot of the species abundance using a plotting function.

# 8. Add labels, title, and axis names to make the plot readable.

# 9. Check the plot for accuracy and interpretation.





#------------------------


#------------------------












