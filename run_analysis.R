# R-script for the Course Project of Getting and Cleaning Data

# Initialization of needed libraries
library(Hmisc); library(dplyr)

## Loading input data
# Loading the training data
train_set <- read.table("./train/X_train.txt",sep='',header=T)
train_label <- read.csv("./train/y_train.txt")
train_id <- read.csv("./train/subject_train.txt")

# Loading the test data
test_set <- read.table("./test/X_test.txt",header=T)
test_label <- read.csv("./test/y_test.txt")
test_id <- read.csv("./test/subject_test.txt")

colnames <- read.csv("./features.txt")


## Merging the data
# First merge the columns of the training data into one data frame
trainset <- cbind(train_id,train_label,train_set)
# And merge the columns of the test data into one data fram
testset <- cbind(test_id,test_label,test_set)
# And then merge test and train data into one set
total <- rbind(trainset,testset)

    
# Writing the cleaned data to a csv-file