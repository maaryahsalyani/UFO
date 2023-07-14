#Maaryah Salyani
#Assignment 4

getwd()
setwd("/Users/maaryahsalyani/ufo_assignment")
# Load the dplyr package

#loaded and intsalled dyplyr package
library(dplyr)
install.packages("dplyr")
library(stringr)

ufo.df <- read.csv("ufo_subset.csv")

#removed spaces from column names
nospace.colnames <- gsub(" ", "", colnames(ufo.df))
print(nospace.colnames)

#found rows with missing Shape information and impute with "unknown"
#use ifelse statement to replace missing information with the word "unknown"

missing_shape <- ifelse(is.na(ufo.df$Shape), "unknown", ufo.df$Shape)
print(missing_shape)

# Removed the rows without Country information
no_country <- ufo.df[!is.na(ufo.df$country), ]
print(no_country)

date <- ufo.df$datetime
print(date)
# Converted Datetime column to POSIXct format using the as.POSIXct() function
# as.POSIXct converts an object into calendar date/time format
ufo.df$datetime <- as.POSIXct(ufo.df$datetime, format = "%Y-%m-%d %H:%M")
print(ufo.df$datetime)

# Convert Date_posted column to Date format using as.date function
# as.date converts data into date format when there is no time component
ufo.df$date_posted <- as.Date(ufo.df$date_posted, format = "%d-%m-%Y")
print(ufo.df$date_posted)


