# ################################################################################
# # Project owner(s): X Y
# # Title/ occupation and affiliation: PhD student @ The University of Edinburgh
# # Project theme/ brief: R for Ecology Curriculum
# # Project title: Lessons #1: 'Before we start'
# # Date/ time: 16-17 June 2020
# # R script version:  v1.1
# # Web: https://datacarpentry.org/R-ecology-lesson/00-before-we-start.html 
# # Metadata/ data description path: R_project_location/documents
# #################################################################################
 
Ctrl + L # Cleaning up yopur Console
# 
# # Looking for help.. --------------------------------------------
# 
# ?barplot
# help('barplot')
# args(lm)
# help.search('mean')
# ??mean
# find('data.frame') # figure out what package contains the given object or function

?hist

# 
# # Cleaning the working Environment from memory residues -------------------
# 
# 
# 
# # rm(list = ls()) # alternatively Ctrl+Shift+F10
# rm(list = ls(all.names = TRUE)) #will clear all objects includes hidden objects.
# gc() #free up memory and report the memory usage.
# 
# 
# 
# # Organizing your working directory ---------------------------------------
# 
# dir.create("data")
# dir.create("data_output")
# dir.create("fig_output")
# dir.create("documents")
# dir.create("scripts")
# 
# 
# 
# # Setting the working directory -------------------------------------------
# 
# # Try to avoid explicit wd definition!
#   
# setwd("/Users/robertn/Desktop/Desktop_files/Data_Carpentry/SFC_Upskilling_Data_Carpentry_WS/16_17_June_me_instructing/Git_repo/Data-Carpentry-Ecology-R")
# 
# getwd() # check if your working directory/ path was sat adequately
# 
# 
# # Downloading the raw (.csv) dataset  -------------------------------------
# 
# download.file(url="https://ndownloader.figshare.com/files/2292169",
#               destfile = "data/portal_data_joined.csv", mode = 'wb')
# 
# # Installing and loading packages ---------------------------------------
# 
# install.packages(c("tidyverse", "RSQLite", "gridExtra", "hexbin", "dbplyr", "lubridate", "readr", "ggplot2", "dplyr", "magrittr", "tidyr"))
# 
# library(gridExtra) # ggplot
# library(hexbin) # ggplot
# library(dbplyr) # R and databases
# library(RSQLite) # R and databases
# library(tidyverse) # lesson 3 and onward
# # all of these are apart of tidyverse, but sometimes learners are unable
# # to install tidyverse, and need to install them individually, so here they are
# library(lubridate)
# library(readr)
# library(ggplot2)
# library(dplyr)
# library(magrittr)
# library(tidyr)
