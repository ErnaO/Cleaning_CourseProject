# R-script for the Course Project of Getting and Cleaning Data

# Initialization of needed libraries
library(Hmisc); library(dplyr); library(reshape2)

## Loading input data
# Loading the training data
train_set <- read.table("./train/X_train.txt",sep='')
train_label <- read.csv("./train/y_train.txt",header=F)
train_id <- read.csv("./train/subject_train.txt",header=F)

# Loading the test data
test_set <- read.table("./test/X_test.txt",sep='')
test_label <- read.csv("./test/y_test.txt",header=F)
test_id <- read.csv("./test/subject_test.txt",header=F)

# Load metadata
act_desc <- read.table("./activity_labels.txt") # Needed for step 3
colnames <- read.table("./features.txt",sep="") # Needed for step 4


## Step 1: Merging the data
# First merge the columns of the training data into one data frame
trainset <- cbind(train_id,train_label,train_set)

# And merge the columns of the test data into one data fram

testset <- cbind(test_id,test_label,test_set)
# And then merge test and train data into one set
total <- rbind(trainset,testset)


## Step 2: Make subset with only means and stds
# Find the columns that contains means and standard deviations
col_mean <- grep('Mean',colnames[,2],ignore.case=T)
col_std <-  grep('std',colnames[,2],ignore.case=T)

# Put them into one sorted vector 
sel_col <- sort(c(col_mean,col_std))

# Get the subset of the data
sub_data <- total[,c(1,2,sel_col+2)]# Add 2, as the first two columns are ID and activity


## Step 3: Use descriptive names to name the activities in the data set
# The activities can be found in column 2 of the data set
sub_data[,2] <-as.character(sub_data[,2])
for (i in 1:6){
    idx <- which(sub_data$V1.1 == act_desc[i,1])
    sub_data[idx,2] <- as.character(act_desc[i,2])
}

## Step 4: Add descriptive variable names
# Select the column names we are using
UseCol <- c('SubjectID','Activity',as.character(colnames[(sel_col),2]))
colnames(sub_data) <- UseCol

## Step 5: Create a tidy set with the average of each variable for each activity and each subject
subject <- group_by(sub_data,SubjectID,Activity)
summarise(subject,mean('tBodyAcc-mean()-X',na.rm=T))

# Writing the cleaned data to a csv-file