#CodeBook

Thirty volunteers each performed 6 activities, wearing a smartphone. During these activities the accelerometer and gyroscope captured signals. These signals were pre-processed and BodyAcc-XYZ, BodyAccJerk-XYZ, BodyGyro-XYZ, BodyAccJerkMag, BodyGyroMag and BodyGyroJerkMag were delivered in the time domain (t) and in the frequency (f) domain.

This raw data can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The first two variables are
SubjectID: running from 1:30, a combination of the original train and test set

Activity: describing 6 activities:
...LAYING 
...SITTING 
...STANDING 
...WALKING 
...WALKING_DOWNSTAIRS
...WALKING_UPSTAIRS

Each subject performed the activity several times. For 180 these combinations (30 subjects with 6 activities) we were interested in the averages of the mean() and std() of the following variables:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Furthermore, the average of the angle-variables were computed:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

This results in a data set with 73 averages for the above mentioned variables. These are sorted by subjectID and activity.