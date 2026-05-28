---
title: "MB5370_Module_01"
author: "Paule Mathieu"
date: "2026-05-27"
output: html_document
---

# Setting up

``` r
knitr::opts_chunk$set(echo = TRUE)
setwd("F:/Paule/MB5370/MB5370_Module_01")
library(tidyverse, ggplot2)
```


``` r
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
```

```
## [1] 3
```

``` r
1:30 #creates a sequence of numbers
```

```
##  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
## [25] 25 26 27 28 29 30
```

``` r
6* #multiplication
  2
```

```
## [1] 12
```

``` r
#6%2 #error in syntax





# Variables and Assignment #### 
# This section focuses on understanding how data is stored in R and why that matters.

age <- 25
first_name <- 'Bill'

age+1
```

```
## [1] 26
```

``` r
age+age 
```

```
## [1] 50
```

``` r
#you cannot use a number/symbol at the beginning of an object name, got it.

sum_result <- sum(15, 25.1, 20.25)
object <- 12
sum_result + object 
```

```
## [1] 72.35
```

``` r
# Functions ####
# This section introduces us to R basic functions.

#Base R Package: https://stat.ethz.ch/R-manual/R-patched/library/base/html/00Index.html

years_old <- 25.7
round(years_old) # rounds up
```

```
## [1] 26
```

``` r
floor(years_old) # rounds down
```

```
## [1] 25
```

``` r
years_old <- 25.765
round (years_old, 2) # comma after the object to specify argument
```

```
## [1] 25.76
```

``` r
#?round # go to help

#Create objects
name <- "Gary"
age <- 28

#Create sentence (using paste())
sentence <- paste(name, "is", age, "years old. :)")
print(sentence)
```

```
## [1] "Gary is 28 years old. :)"
```

``` r
# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets


grade <- 55
total <- grade + 10
print (total)
```

```
## [1] 65
```

``` r
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
```

```
## [1] 65
```

``` r
total <- grade + 10
print (total) # executed in the way it was defined
```

```
## [1] 100
```

``` r
# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be? -> 10
print (out) # What is the value of out? Is it the same as expected? -> Yes
```

```
## [1] 10
```

``` r
# debugging errors
#out <- p * a # undefined variable.
## > Error: object 'a' not found
out <- p * z


# Testing statements in scripts
x <- 1
is.character(x) # FALSE
```

```
## [1] FALSE
```

``` r
is.numeric (x) # TRUE
```

```
## [1] TRUE
```

``` r
my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro", # expected ',' after expression (it was missing)
             "cinco")
print (my_quiz) # syntax error my_quis should be my_quiz
```

```
## [1] "uno"    "dos"    "tres"   "cuatro" "cinco"
```

``` r
str(my_quiz)
```

```
##  chr [1:5] "uno" "dos" "tres" "cuatro" "cinco"
```

``` r
length(my_quiz) #len could be from a different package, should be length in this one
```

```
## [1] 5
```

``` r
# Data types 
# Understanding data types will ensure you are performing the right codes based on your needs.

my_numeric_variable = 4.2
class(my_numeric_variable) #numeric
```

```
## [1] "numeric"
```

``` r
typeof(my_numeric_variable) #double
```

```
## [1] "double"
```

``` r
length(my_numeric_variable) #1
```

```
## [1] 1
```

``` r
attributes(my_numeric_variable) #NULL
```

```
## NULL
```

``` r
my_character = "boat"
class(my_character) #character
```

```
## [1] "character"
```

``` r
typeof(my_character) #character
```

```
## [1] "character"
```

``` r
length(my_character) #1
```

```
## [1] 1
```

``` r
attributes(my_character) #NULL
```

```
## NULL
```

``` r
my_integer = 25L
class(my_integer) #integer
```

```
## [1] "integer"
```

``` r
typeof(my_integer) #integer
```

```
## [1] "integer"
```

``` r
length(my_integer) #1
```

```
## [1] 1
```

``` r
attributes(my_integer) #NULL
```

```
## NULL
```

``` r
my_logical = TRUE
class(my_logical) #logical
```

```
## [1] "logical"
```

``` r
typeof(my_logical) #logical
```

```
## [1] "logical"
```

``` r
length(my_logical) #1
```

```
## [1] 1
```

``` r
attributes(my_logical) #NULL
```

```
## NULL
```

``` r
# Data structures
# Understanding structure is particularly important when you want to pull out single values from a data frame. Best to keep a good structure to adapt good habits.

list("uno", "dos")
```

```
## [[1]]
## [1] "uno"
## 
## [[2]]
## [1] "dos"
```

``` r
y <- c(1, 2, 3) # vector
z <- c("Graham", "Logan", "Dean", "Tucker" ) # character elements
#class(y) # object y not found
class(z) # numeric
```

```
## [1] "character"
```

``` r
x <- list(1, "a", TRUE) # lists the elements inside the ()
x[[2]] # retrieving the second element in the list
```

```
## [1] "a"
```

``` r
# Dta frames and tibbles (tables?)
# Used for two-dimensional data files.

my_dataframe <- data.frame(
  no = c(1, 2, 3),
  name = c("Graham", "Logan", "Dean"),
  active = c(TRUE, FALSE, TRUE)
)

my_dataframe
```

```
##   no   name active
## 1  1 Graham   TRUE
## 2  2  Logan  FALSE
## 3  3   Dean   TRUE
```

``` r
str(my_dataframe)
```

```
## 'data.frame':	3 obs. of  3 variables:
##  $ no    : num  1 2 3
##  $ name  : chr  "Graham" "Logan" "Dean"
##  $ active: logi  TRUE FALSE TRUE
```

``` r
my_dataframe$no = as.factor(my_dataframe$no)
str (my_dataframe)
```

```
## 'data.frame':	3 obs. of  3 variables:
##  $ no    : Factor w/ 3 levels "1","2","3": 1 2 3
##  $ name  : chr  "Graham" "Logan" "Dean"
##  $ active: logi  TRUE FALSE TRUE
```

``` r
# Packages and libraries
# To make your own code an R package, you need to write a set of functions and package them up into a way that they are reliable to use on any computer. 

#install.packages("tidyverse") # download and install
library(tidyverse) # load into current workspace

#install.packages("ggplot","tidyr", "earthtones","redlistr","dplyr" ,"terra", "ggplot2")
library (ggplot2)

#?ggplot2

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
```


``` r
#Execute workshop 01 script
source("Module_01.R")
```

```
## [1] "Gary is 28 years old. :)"
## [1] 65
## [1] 65
## [1] 100
## [1] 10
## [1] "uno"    "dos"    "tres"   "cuatro" "cinco" 
##  chr [1:5] "uno" "dos" "tres" "cuatro" "cinco"
## 'data.frame':	3 obs. of  3 variables:
##  $ no    : num  1 2 3
##  $ name  : chr  "Graham" "Logan" "Dean"
##  $ active: logi  TRUE FALSE TRUE
## 'data.frame':	3 obs. of  3 variables:
##  $ no    : Factor w/ 3 levels "1","2","3": 1 2 3
##  $ name  : chr  "Graham" "Logan" "Dean"
##  $ active: logi  TRUE FALSE TRUE
```

-----



# Workshop 02. Visualization ####

# Creating graphs/plots using ggplot2
This section introduces us to data visualization using R.


``` r
#?mpg
data = mpg
ggplot(data = mpg) + # creates a coordinate system
  geom_point(mapping = aes(x = displ, y = hwy)) # adds points to your plot
```

<img src="workshop_files/figure-html/unnamed-chunk-80-1.png" alt="" width="672" />

Ideal template for basic visualization
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
 

``` r
ggplot()
```

<img src="workshop_files/figure-html/unnamed-chunk-81-1.png" alt="" width="672" />

``` r
ggplot(data = mpg)
```

<img src="workshop_files/figure-html/unnamed-chunk-81-2.png" alt="" width="672" />

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class)) #aes includes size, shape and colour
```

<img src="workshop_files/figure-html/unnamed-chunk-81-3.png" alt="" width="672" />
 

``` r
#change point size by class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
```

```
## Warning: Using size for a discrete variable is not advised.
```

<img src="workshop_files/figure-html/unnamed-chunk-82-1.png" alt="" width="672" />

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
```

```
## Warning: Using alpha for a discrete variable is not advised.
```

<img src="workshop_files/figure-html/unnamed-chunk-82-2.png" alt="" width="672" />

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
```

```
## Warning: The shape palette can deal with a maximum of 6 discrete values because more
## than 6 becomes difficult to discriminate
## ℹ you have requested 7 values. Consider specifying shapes manually if you
##   need that many of them.
```

```
## Warning: Removed 62 rows containing missing values or values outside the scale range
## (`geom_point()`).
```

<img src="workshop_files/figure-html/unnamed-chunk-82-3.png" alt="" width="672" />

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
```

<img src="workshop_files/figure-html/unnamed-chunk-82-4.png" alt="" width="672" />
 
# Troubleshooting 


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) 
```

<img src="workshop_files/figure-html/unnamed-chunk-83-1.png" alt="" width="672" />

``` r
# the + should be on top line
```

# Facet and panel plots
This allows you to break up complex plots to make them more accessible to readers.
 
 Tip: To facet your plot using a single variable, use #facet_wrap(). Facet wrap syntax is in the function of a formula (kind of like a linear model formula), where the ~ dictates which variable you want to subset your data with. 
Note: only use #facet_wrap() for discrete variables.


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
```

<img src="workshop_files/figure-html/unnamed-chunk-84-1.png" alt="" width="672" />

 

``` r
#facet_grip() needs two variables using ~
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
```

<img src="workshop_files/figure-html/unnamed-chunk-85-1.png" alt="" width="672" />

``` r
#use . if you don't want to facet in the rows or column dimension
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(.~cyl)
```

<img src="workshop_files/figure-html/unnamed-chunk-85-2.png" alt="" width="672" />
 
## Exercise 

``` r
#?facet_wrap
```
nrow/ncol represent the number of rows and columns. We can thus control the number of rows and columns we want our data to be presented in. All other options are outlined in ?facet_wrap.


# Fitting simple lines
To display data as points, use geom_point().

``` r
#points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

<img src="workshop_files/figure-html/unnamed-chunk-87-1.png" alt="" width="672" />

``` r
#smooth line
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-87-2.png" alt="" width="672" />
Tip: a #geom is an object that your plot uses to represent the data.


``` r
ggplot(data = mpg) + 
  #geom_point(mapping = aes(x = displ, y = hwy)) # points horrible 
  geom_smooth(mapping = aes(x = displ, y = hwy)) # try smooth line
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-88-1.png" alt="" width="672" />

``` r
#indeed, the smooth line function is easier to understanding/intepret
```

# Changing line type based on their drv

``` r
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-89-1.png" alt="" width="672" />


# Grouping


``` r
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-90-1.png" alt="" width="672" />

``` r
#change line colors
ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE,
  )
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-90-2.png" alt="" width="672" />
 
 
# Multiple geoms
Using smooth lines and points.


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + #represents points
  geom_smooth(mapping = aes(x = displ, y = hwy)) #represents line
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-91-1.png" alt="" width="672" />

``` r
#in a more effective way
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-91-2.png" alt="" width="672" />

``` r
#mappings
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-91-3.png" alt="" width="672" />

``` r
#Specifying different data for each layer, this plots only a subset of our data
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-91-4.png" alt="" width="672" />

## Exercise
line chart -> geom_line()
boxplot -> geom_boxplot()
histogram -> geom_histogram()
area chart -> geom_area()


``` r
#those two plots will look the same. One code is only simpler than the other and avoids repetition.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-92-1.png" alt="" width="672" />

``` r
ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

<img src="workshop_files/figure-html/unnamed-chunk-92-2.png" alt="" width="672" />
 

# Tranformations and stats


``` r
#plotting statistics
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))
```

<img src="workshop_files/figure-html/unnamed-chunk-93-1.png" alt="" width="672" />

``` r
#stat_count() and geom_bar() can be used interchangeably
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
```

<img src="workshop_files/figure-html/unnamed-chunk-93-2.png" alt="" width="672" />

# Override default

``` r
demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)
demo
```

```
## # A tibble: 5 × 2
##   cut        freq
##   <chr>     <dbl>
## 1 Fair       1610
## 2 Good       4906
## 3 Very Good 12082
## 4 Premium   13791
## 5 Ideal     21551
```

``` r
ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "identity")
```

<img src="workshop_files/figure-html/unnamed-chunk-94-1.png" alt="" width="672" />

``` r
#override a default mapping from transformed variables to aes
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))
```

<img src="workshop_files/figure-html/unnamed-chunk-94-2.png" alt="" width="672" />

``` r
#> Warning: `stat(prop)` was deprecated in ggplot2 3.4.0. use after_stat(prop) instead
```


``` r
#plotting statistical details
ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
  )
```

<img src="workshop_files/figure-html/unnamed-chunk-95-1.png" alt="" width="672" />

# Aesthetic adjustments


``` r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
```

<img src="workshop_files/figure-html/unnamed-chunk-96-1.png" alt="" width="672" />

``` r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))
```

<img src="workshop_files/figure-html/unnamed-chunk-96-2.png" alt="" width="672" />

``` r
#using "clarity" as the color variable
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))
```

<img src="workshop_files/figure-html/unnamed-chunk-96-3.png" alt="" width="672" />
 Tip: The ability to make position adjustments is vital, it allows you to customize your plots in three ways, identity (raw data), fill (changes heights) and dodge (which forces ggplot2 to not put things on top of each other).
 

``` r
#Using "identity" as position

#To alter transparency (alpha)
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")
```

<img src="workshop_files/figure-html/unnamed-chunk-97-1.png" alt="" width="672" />

``` r
#To color the bar outlines with no fill color
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) + 
  geom_bar(fill = NA, position = "identity")
```

<img src="workshop_files/figure-html/unnamed-chunk-97-2.png" alt="" width="672" />

``` r
#Using "fill" to stack each sets at the same height
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill") #this looks like an abundance plot
```

<img src="workshop_files/figure-html/unnamed-chunk-97-3.png" alt="" width="672" />

``` r
#using "dogde" to place overlapping objects directly beside one another
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
```

<img src="workshop_files/figure-html/unnamed-chunk-97-4.png" alt="" width="672" />

``` r
#using "jitter" to avoid overplotting when points overlap, scatterplot > barplots
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")
```

<img src="workshop_files/figure-html/unnamed-chunk-97-5.png" alt="" width="672" />

# Layered grammar of graphics
Template for general ggplot2:

``` r
#ggplot(data = <DATA>) + 
  #<GEOM_FUNCTION>(
     #mapping = aes(<MAPPINGS>),
     #stat = <STAT>, 
     #position = <POSITION>
 # ) +
 # <FACET_FUNCTION>
```
-----



-----
# Workshop 03. Reproducible research in marine science ####

``` r
#workshop_03, Setting up Git
#in terminal: "which git" allows you to verify that Git is installed on your device

#install.packages("usethis")
#credentials::git_credential_ask()
#usethis::git_sitrep()
#these allow us to check that our Git is linked to our GitHub, it should prompt us to log in using our username and password
```


``` r
# git to github
library(usethis)
#use_git_config(user.name = "Paule Mathieu", user.email = "paule.mathieu@my.jcu.edu.au")
# Token: check your phone
```


``` r
#tracking your own project
#usethis::use_git()
#usethis::use_github()
```
---



# Workshop 04 Using AI in Programming ###


``` r
#install.packages("ellmer")
#install.packages("chattr")
```

# Testing prompt

``` r
#this was pasted from "Copy to Document" from my Ctrl + Shift + G shortcut
library(ggplot2)

data(iris)

ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point()
```

<img src="workshop_files/figure-html/unnamed-chunk-103-1.png" alt="" width="672" />

# Conditional Logic - filtering your data


``` r
# Simple Example: Checking Sea Surface Temperature (SST)
sst <- 30.2

if (sst > 29.5) {
  print("Warning: Marine heatwave threshold exceeded!")
} else {
  print("SST remains within baseline parameters.")
}
```

```
## [1] "Warning: Marine heatwave threshold exceeded!"
```

``` r
# Load tidyverse (if not already loaded)
library(tidyverse)

# Sample coral data
coral_monitoring <- tibble(
  site = c("Site_A", "Site_B", "Site_C"),
  depth_m = c(12, 35, 8)
)

# Classify depth using if_else
coral_monitoring <- coral_monitoring %>% 
  mutate(zone = if_else(depth_m > 30, "Deep Reef", "Shallow Reef"))
```


``` r
# the mutate() function:
#I used my Gemini shortcut but can also use #?mutate
# The mutate() function, part of the dplyr package within the tidyverse, is used to add new variables to a data frame or to transform existing variables. It always returns a new data frame with the modified or newly created columns, keeping all other columns and rows intact.

#To get more information about mutate(), you can use the help function in R:


#The %>% symbol (pipe operator)
#The %>% symbol is the pipe operator, originating from the magrittr package but widely used and re-exported by dplyr and other tidyverse packages. Its primary purpose is to make code more readable and easier to write when chaining multiple operations together. It takes the output of the expression on its left and passes it as the first argument (by default) to the function on its right. This avoids nested function calls and the need to create intermediate objects.

#To get more information about the %>% operator, you can use the help function in R:
```


``` r
coral_monitoring <- coral_monitoring %>% 
  mutate(reef_category = case_when(
    depth_m < 10  ~ "Lagoon / Flats",
    depth_m <= 30 ~ "Crest / Slope",
    depth_m > 30  ~ "Mesophotic / Deep",
    TRUE          ~ "Unclassified" # Catch-all remainder
  ))
```


``` r
#Task: Environmental Stress Classification
library(dplyr)

marine_stations <- tibble(
  salinity = c(35, 28, 32, 12)
)

marine_stations <- marine_stations %>%
  mutate(
    environment_type = case_when(
      salinity < 15 ~ "Estuarine",
      salinity >= 15 & salinity <= 30 ~ "Brackish",
      salinity > 30 ~ "Marine",
      TRUE ~ NA_character_ # Fallback for any unhandled cases (optional)
    )
  )

marine_stations
```

```
## # A tibble: 4 × 2
##   salinity environment_type
##      <dbl> <chr>           
## 1       35 Marine          
## 2       28 Brackish        
## 3       32 Marine          
## 4       12 Estuarine
```


``` r
# Base R: for-loops
# Classic loop anatomy
for (year in 2020:2024) {
  print(paste("Processing climate data for year:", year))
}
```

```
## [1] "Processing climate data for year: 2020"
## [1] "Processing climate data for year: 2021"
## [1] "Processing climate data for year: 2022"
## [1] "Processing climate data for year: 2023"
## [1] "Processing climate data for year: 2024"
```

``` r
# Loop across index sequences
transect_lengths <- c(50, 100, 25, 75)

for (i in seq_along(transect_lengths)) {
  print(paste("Transect number", i, "measures", transect_lengths[i], "metres."))
}
```

```
## [1] "Transect number 1 measures 50 metres."
## [1] "Transect number 2 measures 100 metres."
## [1] "Transect number 3 measures 25 metres."
## [1] "Transect number 4 measures 75 metres."
```

``` r
#  Calculating Square Roots of Site Vectors
#Using a standard for-loop:
site_areas <- c(144, 400, 625)
results <- numeric(length(site_areas)) # Must build an empty container first

for(i in seq_along(site_areas)) 
  results[i] <- sqrt(site_areas[i])

#Using the purrr equivalent:
library(purrr)
# Map directly and define your expected output type explicitly
mapped_results <- map_dbl(site_areas, sqrt)

# Iterate a summary function over split lists of data
iris %>% 
  split(.$Species) %>% 
  map(~summary(.x))
```

```
## $setosa
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.300   Min.   :2.300   Min.   :1.000   Min.   :0.100  
##  1st Qu.:4.800   1st Qu.:3.200   1st Qu.:1.400   1st Qu.:0.200  
##  Median :5.000   Median :3.400   Median :1.500   Median :0.200  
##  Mean   :5.006   Mean   :3.428   Mean   :1.462   Mean   :0.246  
##  3rd Qu.:5.200   3rd Qu.:3.675   3rd Qu.:1.575   3rd Qu.:0.300  
##  Max.   :5.800   Max.   :4.400   Max.   :1.900   Max.   :0.600  
##        Species  
##  setosa    :50  
##  versicolor: 0  
##  virginica : 0  
##                 
##                 
##                 
## 
## $versicolor
##   Sepal.Length    Sepal.Width     Petal.Length   Petal.Width   
##  Min.   :4.900   Min.   :2.000   Min.   :3.00   Min.   :1.000  
##  1st Qu.:5.600   1st Qu.:2.525   1st Qu.:4.00   1st Qu.:1.200  
##  Median :5.900   Median :2.800   Median :4.35   Median :1.300  
##  Mean   :5.936   Mean   :2.770   Mean   :4.26   Mean   :1.326  
##  3rd Qu.:6.300   3rd Qu.:3.000   3rd Qu.:4.60   3rd Qu.:1.500  
##  Max.   :7.000   Max.   :3.400   Max.   :5.10   Max.   :1.800  
##        Species  
##  setosa    : 0  
##  versicolor:50  
##  virginica : 0  
##                 
##                 
##                 
## 
## $virginica
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.900   Min.   :2.200   Min.   :4.500   Min.   :1.400  
##  1st Qu.:6.225   1st Qu.:2.800   1st Qu.:5.100   1st Qu.:1.800  
##  Median :6.500   Median :3.000   Median :5.550   Median :2.000  
##  Mean   :6.588   Mean   :2.974   Mean   :5.552   Mean   :2.026  
##  3rd Qu.:6.900   3rd Qu.:3.175   3rd Qu.:5.875   3rd Qu.:2.300  
##  Max.   :7.900   Max.   :3.800   Max.   :6.900   Max.   :2.500  
##        Species  
##  setosa    : 0  
##  versicolor: 0  
##  virginica :50  
##                 
##                 
## 
```

``` r
# comparing using chattr:
library(purrr) # For map_dbl

# Sample list of fish count data
fish_counts_list <- list(
  reef_a = c(10, 15, 12, 18, 20),
  reef_b = c(5, 7, 6, 8, 9),
  reef_c = c(22, 25, 20, 28, 23)
)

# Using a for-loop
mean_counts_for_loop <- numeric(length(fish_counts_list))
for (i in seq_along(fish_counts_list)) {
  mean_counts_for_loop[i] <- mean(fish_counts_list[[i]])
}
mean_counts_for_loop
```

```
## [1] 15.0  7.0 23.6
```

``` r
#It is in fact much simpler
```


``` r
#Function construction blueprint

# Function Definition
calculate_coral_mortality <- function(initial_count, surviving_count) {
  
  # Logic safety switch using our conditional tools!
  if (initial_count <= 0) {
    stop("Initial count must be greater than zero.")
  }
  
  mortality_rate <- (initial_count - surviving_count) / initial_count
  return(mortality_rate)
}

# Utilizing your custom function
calculate_coral_mortality(initial_count = 120, surviving_count = 84)
```

```
## [1] 0.3
```


``` r
#Custom function construction task

#convert_temp_c_to_f <- function(celsius_temp) {
  # Absolute zero in Celsius
  #absolute_zero_c <- -273.15

  # Conditional safety check
 # if (celsius_temp < absolute_zero_c) {
  #  stop("Temperature cannot be below absolute zero (-273.15 degrees Celsius).")
  

  # Perform the conversion
  #fahrenheit_temp <- (celsius_temp * 9/5) + 32

  #return(fahrenheit_temp)
```



``` r
# Test with a valid temperature (e.g., 25 degrees Celsius)
#valid_celsius <- 25
#convert_temp_c_to_f(valid_celsius)
# Test with an invalid temperature (e.g., -300 degrees Celsius)
# This will stop execution and print the error message
#invalid_celsius <- -300
#convert_temp_c_to_f(invalid_celsius)

#The error code does appear!
```







