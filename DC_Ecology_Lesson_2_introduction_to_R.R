################################################################################
# Project owner(s): X Y
# Title/ occupation and affiliation: PhD student @ The University of Edinburgh
# Project theme/ brief: R for Ecology Curriculum
# Project title: Lessons #2: 'Introduction to R'
# Date/ time: 16-17 June 2020
# R script version:  v1.1
# Web: https://datacarpentry.org/R-ecology-lesson/01-intro-to-r.html 
# Metadata/ data description path: R_project_location/documents
#################################################################################


# 
# # Creating and manipulating objects in R ----------------------------------
# 
# 
# # Assign value to an object
# 
# weight_kg <- 55
# area_hectars <- 1.0
# 
# # Please use the following assignment syntax carefully
# 
# 12 -> a
# b = 22
# 
# 
# 
# # 'lintr' package is to automatically check 
# # styling issues with your R code
# install.packages('lintr')
# library(lintr)
# 
# # Print an object stored in the RStudio Environment
# 
# weight_kg <- 55 # doesn't print anything (here we simply assigning a value to a named object)
# 
# # The following commands are to print the value stored in 'weight_kg' object to the Console
# 
# weight_kg
# 
# (weight_kg)
# 
# print(weight_kg)
# 
# # Opens up a new window on the Source pane and print object content in a tabular format:
# 
# View(weight_kg) 
# 
# # Now we stored weight_kg object in RStudio's working memory (See 'Environment' pane).
# 
# # We can execute basic arithmetic operations by referring to the value stored in our object by 
# # simply using its name (particularly useful when you are storing complex data in an object).
# # See a few examples below - results will be printed on the Console:
# 
# # Syntax: symbols of basic arithmetic operations in R:
# 
# # addition: +
# # subtraction: -
# # multiplication: *
# # division: /
# 
# 2.2 * weight_kg
# 
# # or
# 
# weight_kg * 2.2
# 
# # Assigning a new value to our object found in RStudio's memory ('Environment')
# # by simply overwriting the current value stored in it.
# 
# weight_kg <- 57.5
# 
# 2.2 * weight_kg
# 
# weight_kg <- 57.5
# 
# # We can assigning a value to one object does not [necessarily] change 
# # the values of other objects: R script execution is sequential..
# 
# # 1. print out its content (= value stored in it) to the Console
# 
# weight_kg 
# 
# # 2. define a new object and assign a value by using our weight_kg object
# 
# weight_lb <- 2.2 * weight_kg
# 
# # 3. Print weight_lb
# 
# weight_lb
# 
# # 3.Then assign a new value (overwrite) to weight_kg
# 
# weight_kg <- 100 
# 
# # ? 
# # What do you think is the current content of the object weight_lb? 126.5 ('green sticky')
# # or 220 ('red sticky')?
# 
# # 4. Print weight_lb and weight_kg
# 
# weight_kg
# weight_lb
# 
# 
# 
# 
# 
# 
# # Challenge #1 ------------------------------------------------------------
# 
# 
# ### 
# ##
# ## What are the values after each statement in the following?
# ##
# mass <- 47.5            # mass?
# 
# mass
# 
# age  <- 122             # age?
# 
# age
# 
# mass <- mass * 2.0      # mass?
# 
# mass
# 
# age  <- age - 20        # age?
# 
# age
# 
# mass_index <- mass/age  # mass_index?
# 
# mass_index
# 
# 
# 
# 
# # Functions and their arguments -------------------------------------------
# 
# a <- 16 # assign a value to a variable
# 
# sqrt(a) # directly executing operation and print out the result
# 
# b <- sqrt(a) # we can store its return value in a new variable/ object
# 
# # Equivalently we csn directly use numeric values in the argument, e.g.:
# 
# b <- sqrt(16)
# 
# # Try functions with optional arguments to convey better tailored results:
# 
# round(3.14159) # by default it rounds the numeric argument to the closest integer
# 
# # inspect what degree of personalisation we could have (e.g. how to round to user-specified number of decimals or digits) getting information about the round function:
# 
# args(round)
# 
# ?round # looking at the function's documentation
# 
# round(3.14159, digits = 2) # here using an optional argument
# 
# # And if you do name the arguments, you can switch their order:
# 
# round(digits = 2, x = 3.14159) # if referencing arguments by names then they can have arbitrary order
# 
# 
# # Vectors and data types --------------------------------------------------
# 
# # Example - we can create a vector (or list) of animal weights (in grams) and assign it to a new 
# # object weight_g:
# 
# weight_g <- c(50, 60, 65, 82)
# 
# weight_g # let's print out its content to the Console
# 
# # A vector can also contain characters/ character strings:
# # When listing characters we need to use quotation signs.
# # NB: ' ' and " " are equivalent - but be consistent with your coding style
# # If you would quote a quote, then use ' "quoted text" '
# # lets create a vector that contains animal species/ names:
# 
# animals <- c('mouse', 'rat', 'dog')
# # same as animals <- c("mouse", "rat", "dog")
# animals
# 
# # Inspect vectors
# 
# # check vectors' lengths
# length(weight_g)
# length(animals)
# 
# # check vectors' class (or types of data they contains)
# class(weight_g)
# class(animals)
# 
# # check vectors' structure - detailed object overview
# str(weight_g)
# str(animals)
# 
# # Use the c() function to add other elements to your vector:
# 
# weight_g <- c(weight_g, 90) # add to the end of the vector
# 
# weight_g
# 
# weight_g <- c(30, weight_g) # add to the beginning of the vector
# 
# weight_g
# 
# # You can check the type of your vector using the typeof() function and inputting your vector as the argument.
# 
# typeof(weight_g)
# 
# typeof(animals)
# 
# # Challenge
# 
# ## ## We’ve seen that atomic vectors can be of type character, numeric, integer, and
# ## ## logical. But what happens if we try to mix these types in a single
# ## ## vector?
# ## 
# ## ## What will happen in each of these examples? (hint: use `class()` to
# ## ## check the data type of your object)
# 
# ## num_char <- c(1, 2, 3, "a")
# ## 
# ## num_logical <- c(1, 2, 3, TRUE)
# ## 
# ## char_logical <- c("a", "b", "c", TRUE)
# ## 
# ## tricky <- c(1, 2, 3, "4")
# ## 
# ## ## Why do you think it happens?
# ## 
# ## ## You've probably noticed that objects of different types get
# ## ## converted into a single, shared type within a vector. In R, we call
# ## ## converting objects from one class into another class
# ## ## _coercion_. These conversions happen according to a hierarchy,
# ## ## whereby some types get preferentially coerced into other types. Can
# ## ## you draw a diagram that represents the hierarchy of how these data
# ## ## types are coerced?
# 
num_char <- c(1, 2, 3, "a") # int -> char

class(num_char)

num_logical <- c(1, 2, 3, TRUE)

class(num_logical)

char_logical <- c("a", "b", "c", TRUE)

class(char_logical)

tricky <- c(1, 2, 3, "4")

class(tricky)

combined_logical <- c(num_logical, char_logical)

# 
#
# 
# 
# 
# # Subsetting vectors ------------------------------------------------------
# 
# 
animals <- c('mouse','rat','dog','cat')

animals[2] # subset value stored in index 2

animals[c(3, 2)] # subset & re-order

# Repeat the indices to create an object with more elements than the original one:

more_animals <- animals[c(1, 2, 3, 2, 1, 4)]

more_animals

# 

# Repeat the indices to create an object with more elements than t --------

# Conditional subsetting

weight_g <- c(21, 34, 39, 54, 55)

weight_g[c(TRUE, FALSE, TRUE, TRUE, FALSE)] # behaves like a 'masking' layer

# Only values will be considered on the indices where TRUE (or T) values are assigned.
# Typically, these logical vectors are not typed by hand, but are the output of other functions or 
# logical tests. For instance, if you wanted to select only the values above 50

weight_g > 50 # we can use this as a selection criterion

weight_g[weight_g > 50]

# You can combine multiple tests using & (both conditions are true, AND) 
# or | (at least one of the conditions is true, OR):

# TRUE if Condition_1 'OR' Condition_2 (or both - when applicable) is (/are) fulfilled:

weight_g[weight_g < 30 | weight_g > 50] 

# TRUE if Condition_1 'AND' Condition_2 are both fulfilled:

# e.g. in set theory this is the 'intersection' assuming two sets.

weight_g[weight_g >= 30 & weight_g == 50] 


# A common task is to search for certain strings in a vector.
# The function %in% allows you to test if any of the elements of a search vector are found.

animals <- c("mouse", "rat", "dog", "cat")

animals[animals == "cat" | animals == "rat"] # returns both rat and cat

# comparing two vectors and check where they are matching.

animals %in% c("rat", "cat", "dog", "duck", "goat")

animals[animals %in% c("rat", "cat", "dog", "duck", "goat")]

animals[2:4] # above implementation is equivalent to this index-based subsetting








# 
# ### Challenge (optional)
# ##
# ## * Can you figure out why `"four" > "five"` returns `TRUE`?
# 
# 
# 
# 
# 
# 
# # Missing data ------------------------------------------------------------

# Missing data are represented in vectors as 'NA'
# When doing operations on numbers, most functions will return 'NA' 
# if the data you are working with include missing values. 
# add the argument na.rm = TRUE to calculate the result while ignoring the missing values:

heights <- c(2, 4, 4, NA, 6)

mean(heights)

max(heights)

mean(heights, na.rm = TRUE)

max(heights, na.rm = TRUE)


# If your data include missing values, you may want to become 
# familiar with the following functions:
# is.na(),
# na.omit(), 
# and complete.cases().

# Check documentation / briefs

?is.na()
?na.omit()
?complete.cases()

# Example cases:

## Extract those elements which are not missing values.
heights[!is.na(heights)]

## Returns the object with incomplete cases removed. 
## The returned object is an atomic vector of type `"numeric"` (or `"double"`).
na.omit(heights)

## Extract those elements which are complete cases. 
## The returned object is an atomic vector of type `"numeric"` (or `"double"`).
heights[complete.cases(heights)]





# 
# 
# ## ### Challenge
# ## 1. Using this vector of heights in inches, create a new vector with the NAs removed.
# ##
# ##    heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
# ##
# ## 2. Use the function `median()` to calculate the median of the `heights` vector.
# ##
# ## 3. Use R to figure out how many people in the set are taller than 67 inches.
# ### Presentation of the survey data
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# 1.
heights_no_na <- heights[!is.na(heights)]
# or
heights_no_na <- na.omit(heights)
# or
heights_no_na <- heights[complete.cases(heights)]

# 2.
median(heights, na.rm = TRUE)

# 3.
heights_above_67 <- heights_no_na[heights_no_na > 67]
length(heights_above_67)
