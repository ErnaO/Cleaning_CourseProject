#CodeBook

Thirty volunteers each performed 6 activities, wearing a smartphone. During these activities the accelerometer and gyroscope captured signals. These signals were pre-processed and BodyAcc-XYZ, BodyAccJerk-XYZ, BodyGyro-XYZ, BodyAccJerkMag, BodyGyroMag and BodyGyroJerkMag were delivered in the time domain (t) and in the frequency (f) domain.

This raw data can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The first two variables are
**SubjectID** 
...running from 1:30, a combination of the original train and test set

**Activity** describing 6 activities 
   LAYING   
   SITTING   
   STANDING   
   WALKING   
   WALKING_DOWNSTAIRS  
   WALKING_UPSTAIRS

Each subject performed the activity several times. For 180 these combinations (30 subjects with 6 activities) we were interested in the averages of the mean() and std() of the following variables:

**tBodyAcc-mean()-XYZ**  
Average of the mean of the body acceleration in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyAcc-std()-XYZ**  
Average of the standard deviation of the body acceleration in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tGravityAcc-mean()-XYZ**  
Average of the mean of the gravity acceleration in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tGravityAcc-std()-XYZ**  
Average of the standard deviation of the gravity acceleration in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyAccJerk-mean()-XYZ**  
Average of the mean of the body acceleration of the Jerk signals in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

** tBodyAccJerk-std()-XYZ**  
Average of the standard deviation of the body acceleration of the Jerk signals in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

** tBodyGyro-mean()-XYZ**  


"24" "tBodyGyro-std()-X"
"25" "tBodyGyro-std()-Y"
"26" "tBodyGyro-std()-Z"
"27" "tBodyGyroJerk-mean()-X"
"28" "tBodyGyroJerk-mean()-Y"
"29" "tBodyGyroJerk-mean()-Z"
"30" "tBodyGyroJerk-std()-X"
"31" "tBodyGyroJerk-std()-Y"
"32" "tBodyGyroJerk-std()-Z"
"33" "tBodyAccMag-mean()"
"34" "tBodyAccMag-std()"
"35" "tGravityAccMag-mean()"
"36" "tGravityAccMag-std()"
"37" "tBodyAccJerkMag-mean()"
"38" "tBodyAccJerkMag-std()"
"39" "tBodyGyroMag-mean()"
"40" "tBodyGyroMag-std()"
"41" "tBodyGyroJerkMag-mean()"
"42" "tBodyGyroJerkMag-std()"
"43" "fBodyAcc-mean()-X"
"44" "fBodyAcc-mean()-Y"
"45" "fBodyAcc-mean()-Z"
"46" "fBodyAcc-std()-X"
"47" "fBodyAcc-std()-Y"
"48" "fBodyAcc-std()-Z"
"49" "fBodyAccJerk-mean()-X"
"50" "fBodyAccJerk-mean()-Y"
"51" "fBodyAccJerk-mean()-Z"
"52" "fBodyAccJerk-std()-X"
"53" "fBodyAccJerk-std()-Y"
"54" "fBodyAccJerk-std()-Z"
"55" "fBodyGyro-mean()-X"
"56" "fBodyGyro-mean()-Y"
"57" "fBodyGyro-mean()-Z"
"58" "fBodyGyro-std()-X"
"59" "fBodyGyro-std()-Y"
"60" "fBodyGyro-std()-Z"
"61" "fBodyAccMag-mean()"
"62" "fBodyAccMag-std()"
"63" "fBodyBodyAccJerkMag-mean()"
"64" "fBodyBodyAccJerkMag-std()"
"65" "fBodyBodyGyroMag-mean()"
"66" "fBodyBodyGyroMag-std()"
"67" "fBodyBodyGyroJerkMag-mean()"
"68" "fBodyBodyGyroJerkMag-std()"
"69" "angle(tBodyAccMean,gravity)"
"70" "angle(tBodyAccJerkMean),gravityMean)"
"71" "angle(tBodyGyroMean,gravityMean)"
"72" "angle(tBodyGyroJerkMean,gravityMean)"
"73" "angle(X,gravityMean)"
"74" "angle(Y,gravityMean)"
"75" "angle(Z,gravityMean)"



Furthermore, the average of the angle-variables were computed:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

This results in a data set with 73 averages for the above mentioned variables. These are sorted by subjectID and activity.