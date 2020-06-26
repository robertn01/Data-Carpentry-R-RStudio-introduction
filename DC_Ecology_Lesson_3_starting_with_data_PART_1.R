################################################################################
# Project owner(s): X Y
# Title/ occupation and affiliation: PhD student @ The University of Edinburgh
# Project theme/ brief: Data Carpentry script for R for Ecology Curriculum
# Project title: Lessons #3: 'Starting with data'/ PART 1
# Date/ time: 16-17 June 2020
# R script version:  v1.1
# Web: https://datacarpentry.org/R-ecology-lesson/02-starting-with-data.html  
# Metadata/ data description path: R_project_location/documents
#################################################################################

# It is usually a good practice to clean the working Environment in RStudio - below optional actions:

# rm(list = ls()) # alternatively Ctrl+Shift+F10
# rm(list = ls(all.names = TRUE)) # will clear all objects includes hidden objects.
# gc() #free up memory and report the memory usage.
# 'Ctrl + L' # clearing the Console

# Also, checking if the working directory was set correctly by using the getwd() command.


# Assume all the essential R packages were pre-installed earlier. 
# Now we may only need to (re-)load them into RStudio (just in case)

library(gridExtra) # ggplot
library(hexbin) # ggplot
library(dbplyr) # R and databases
library(RSQLite) # R and databases
library(tidyverse) # lesson 3 and onward
# all of these are apart of tidyverse, but sometimes learners are unable
# to install tidyverse, and need to install them individually, so here they are
library(lubridate)
library(readr)
library(ggplot2)
library(dplyr)
library(magrittr)
library(tidyr)

download.file(url="https://ndownloader.figshare.com/files/2292169",
              destfile = "raw_data/portal_data_joined.csv")

surveys <- read_csv('raw_data/portal_data_joined.csv')

head(surveys)

tail(surveys)

View(surveys)

# Inspecting data.frame objects

str(surveys)

dim(surveys)

nrow(surveys)

ncol(surveys)

names(surveys)

rownames(surveys)

summary(surveys)


## Challenge
## Based on the output of `str(surveys)`, can you answer the following questions?
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?
## * How many species have been recorded during these surveys?



## Indexing and subsetting data frames


# first element in the first column of the data frame (as a vector)
surveys[1, 1]   

# first element in the 6th column (as a vector)
surveys[1, 6]   

# first column of the data frame (as a vector)
surveys[, 1]    

# first column of the data frame (as a data.frame)
surveys[1]      

# first three elements in the 7th column (as a vector)
surveys[1:3, 7] 

# the 3rd row of the data frame (as a data.frame)
surveys[3, ]    

# equivalent to head_surveys <- head(surveys)
head_surveys <- surveys[1:6, ] 

# :is a special function that creates numeric vectors of integers in ascending or decreasing order, test 1:10 and 10:1 for instance:

head_surveys_asc <- surveys[1:10, ] 
head_surveys_desc <- surveys[10:1, ] 

# One can also exclude certain indices of a data frame using the “-” sign:

surveys[, -1]          # The whole data frame, except the first column

surveys[-c(7:34786), ] # Equivalent to head(surveys)

# Subsetting by names: data frames can be subset by calling indices (as shown previously), but also by calling their column names directly:

surveys["species_id"]       # Result is a data.frame

surveys[, "species_id"]     # Result is a vector

surveys[["species_id"]]     # Result is a vector

surveys$species_id          # Result is a vector



### Challenges:
###
### 1. Create a `data.frame` (`surveys_200`) containing only the
###    data in row 200 of the `surveys` dataset.
###
### 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
###
###      * Use that number to pull out just that last row in the data frame
###      * Compare that with what you see as the last row using `tail()` to make
###        sure it's meeting expectations.
###      * Pull out that last row using `nrow()` instead of the row number
###      * Create a new data frame object (`surveys_last`) from that last row
###
### 3. Use `nrow()` to extract the row that is in the middle of the
###    data frame. Store the content of this row in an object named
###    `surveys_middle`.
###
### 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
###    `head(surveys)`, keeping just the first through 6th rows of the surveys
###    dataset.

## 1.
surveys_200 <- surveys[200, ]

## 2.
# Saving `n_rows` to improve readability and reduce duplication
n_rows <- nrow(surveys)

surveys_last <- surveys[n_rows, ]

## 3.
surveys_middle <- surveys[n_rows / 2, ]

## 4.
surveys_head <- surveys[-(7:n_rows), ]
