---
title: "MB5370_Module_01"
author: "Paule Mathieu"
date: "2026-05-27"
output: html_document
---

# Setting up






-----



# Workshop 02. Visualization ####

# Creating graphs/plots using ggplot2
This section introduces us to data visualization using R.


``` r
?mpg
data = mpg
ggplot(data = mpg) + # creates a coordinate system
  geom_point(mapping = aes(x = displ, y = hwy)) # adds points to your plot
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

Ideal template for basic visualization
ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
 

``` r
ggplot()
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-1.png)

``` r
ggplot(data = mpg)
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-2.png)

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class)) #aes includes size, shape and colour
```

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2-3.png)
 

``` r
#change point size by class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
```

```
## Warning: Using size for a discrete variable is not advised.
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
```

```
## Warning: Using alpha for a discrete variable is not advised.
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-2.png)

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

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-3.png)

``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-4.png)
 
# Troubleshooting 


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) 
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)

``` r
# the + should be on top line
```

# Facet and panel plots
This allows you to break up complex plots to make them more accessible to readers.
 
 Tip: To facet your plot using a single variable, use facet_wrap(). Facet wrap syntax is in the function of a formula (kind of like a linear model formula), where the ~ dictates which variable you want to subset your data with. 
Note: only use facet_wrap() for discrete variables.


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5-1.png)

 

``` r
#facet_grip() needs two variables using ~
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6-1.png)

``` r
#use . if you don't want to facet in the rows or column dimension
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(.~cyl)
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6-2.png)
 
## Exercise 

``` r
?facet_wrap
```
nrow/ncol represent the number of rows and columns. We can thus control the number of rows and columns we want our data to be presented in. All other options are outlined in ?facet_wrap.


# Fitting simple lines
To display data as points, use geom_point().

``` r
#points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8-1.png)

``` r
#smooth line
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8-2.png)
Tip: a #geom is an object that your plot uses to represent the data.


``` r
ggplot(data = mpg) + 
  #geom_point(mapping = aes(x = displ, y = hwy)) # points horrible 
  geom_smooth(mapping = aes(x = displ, y = hwy)) # try smooth line
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9-1.png)

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

![plot of chunk unnamed-chunk-10](figure/unnamed-chunk-10-1.png)


# Grouping


``` r
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11-1.png)

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

![plot of chunk unnamed-chunk-11](figure/unnamed-chunk-11-2.png)
 
 
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

![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12-1.png)

``` r
#in a more effective way
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12-2.png)

``` r
#mappings
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12-3.png)

``` r
#Specifying different data for each layer, this plots only a subset of our data
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12-4.png)

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

![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-13-1.png)

``` r
ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))
```

```
## `geom_smooth()` using method = 'loess' and formula = 'y ~ x'
```

![plot of chunk unnamed-chunk-13](figure/unnamed-chunk-13-2.png)
 

# Tranformations and stats


``` r
#plotting statistics
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))
```

![plot of chunk unnamed-chunk-14](figure/unnamed-chunk-14-1.png)

``` r
#stat_count() and geom_bar() can be used interchangeably
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
```

![plot of chunk unnamed-chunk-14](figure/unnamed-chunk-14-2.png)

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

![plot of chunk unnamed-chunk-15](figure/unnamed-chunk-15-1.png)

``` r
#override a default mapping from transformed variables to aes
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))
```

![plot of chunk unnamed-chunk-15](figure/unnamed-chunk-15-2.png)

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

![plot of chunk unnamed-chunk-16](figure/unnamed-chunk-16-1.png)

# Aesthetic adjustments


``` r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
```

![plot of chunk unnamed-chunk-17](figure/unnamed-chunk-17-1.png)

``` r
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))
```

![plot of chunk unnamed-chunk-17](figure/unnamed-chunk-17-2.png)

``` r
#using "clarity" as the color variable
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))
```

![plot of chunk unnamed-chunk-17](figure/unnamed-chunk-17-3.png)
 Tip: The ability to make position adjustments is vital, it allows you to customize your plots in three ways, identity (raw data), fill (changes heights) and dodge (which forces ggplot2 to not put things on top of each other).
 

``` r
#Using "identity" as position

#To alter transparency (alpha)
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
  geom_bar(alpha = 1/5, position = "identity")
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18-1.png)

``` r
#To color the bar outlines with no fill color
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) + 
  geom_bar(fill = NA, position = "identity")
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18-2.png)

``` r
#Using "fill" to stack each sets at the same height
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill") #this looks like an abundance plot
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18-3.png)

``` r
#using "dogde" to place overlapping objects directly beside one another
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18-4.png)

``` r
#using "jitter" to avoid overplotting when points overlap, scatterplot > barplots
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")
```

![plot of chunk unnamed-chunk-18](figure/unnamed-chunk-18-5.png)

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
#in terminal: "which git" allows you to verify that Git is installed on your device

#install.packages("usethis")
#credentials::git_credential_ask()
#usethis::git_sitrep()
#these allow us to check that our Git is linked to our GitHub, it should prompt us to log in using our username and password
```


``` r
library(usethis)
#use_git_config(user.name = "Paule Mathieu", user.email = "paule.mathieu@my.jcu.edu.au")
# Token: check your phone
```


``` r
#usethis::use_git()
#usethis::use_github()
```

 











