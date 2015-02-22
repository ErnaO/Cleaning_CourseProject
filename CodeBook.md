#CodeBook

Thirty volunteers each performed 6 activities, wearing a smartphone. During these activities the accelerometer and gyroscope captured signals. These signals were pre-processed and BodyAcc-XYZ, BodyAccJerk-XYZ, BodyGyro-XYZ, BodyAccJerkMag, BodyGyroMag and BodyGyroJerkMag were delivered in the time domain (t) and in the frequency (f) domain.

This raw data can be downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The first two variables are descriptive  
**SubjectID**  
Running from 1:30, a combination of the original train and test set

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

**tBodyAccJerk-std()-XYZ**  
Average of the standard deviation of the body acceleration of the Jerk signals in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyGyro-mean()-XYZ**  
Average of the mean of the body gyroscope in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyGyro-std()-XYZ**  
Average of the standard deviation of the body gyroscope in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyGyroJerk-mean()-XYZ**  
Average of the mean of the body gyroscope of the Jerk signals in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyGyroJerk-std()-XYZ**  
Average of the standard deviation of the body gyroscope of the Jerk signals in X, Y, and Z direction (3 variables) in m/s^2 (time domain)

**tBodyAccMag-mean()**  
Average of the mean of the body acceleration magnitude in m/s^2 (time domain)

**tBodyAccMag-std()**  
Average of the standard deviation of the body acceleration magnitude in m/s^2 (time domain)

**tGravityAccMag-mean()**  
Average of the mean of the gravity acceleration magnitude in m/s^2 (time domain)

**tGravityAccMag-std()**  
Average of the standard deviation of the gravity acceleration magnitude in m/s^2 (time domain)

**tBodyAccJerkMag-mean()**  
Average of the mean of the body acceleration magnitude of the Jerk signals in m/s^2 (time domain) 

**tBodyAccJerkMag-std()**  
Average of the standard deviation of the body acceleration magnitude of the Jerk signals in m/s^2 (time domain) 

**tBodyGyroMag-mean()**  
Average of the mean of the gyroscope acceleration magnitude in m/s^2 (time domain)

**tBodyGyroMag-std()**  
Average of the standard deviation of the gyroscope acceleration magnitude in m/s^2 (time domain)

**tBodyGyroJerkMag-mean()**  
Average of the mean of the body gyroscope magnitude of the Jerk signals in m/s^2 (time domain) 

**tBodyGyroJerkMag-std()**  
Average of the standard deviation of the body gyroscope magnitude of the Jerk signals in m/s^2 (time domain) 

**fBodyAcc-mean()-XYZ**  
Average of the mean of the body acceleration in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyAcc-std()-XYZ**  
Average of the standard deviation of the body acceleration in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyAccJerk-mean()-XYZ**  
Average of the mean of the body acceleration of the Jerk signals in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyAccJerk-std()-XYZ**  
Average of the standard deviation of the body acceleration of the Jerk signals in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyGyro-mean()-XYZ**  
Average of the mean of the body gyroscope in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyGyro-std()-XYZ**  
Average of the standard deviation of the body gyroscope in X, Y, and Z direction (3 variables) in Hz (frequency domain)

**fBodyAccMag-mean()**  
Average of the mean of the body acceleration magnitude in Hz (frequency domain)

**fBodyAccMag-std()**  
Average of the standard deviation of the body acceleration magnitude in Hz (frequency domain)

**fBodyBodyAccJerkMag-mean()**  
Average of the mean of the body acceleration magnitude of the Jerk signals in Hz (frequency domain) 

**fBodyBodyAccJerkMag-std()**  
Average of the standard deviation of the body acceleration magnitude of the Jerk signals in Hz (frequency domain) 

**fBodyBodyGyroMag-mean()**  
Average of the mean of the gyroscope acceleration magnitude in Hz (frequency domain)

**fBodyBodyGyroMag-std()**  
Average of the standard deviation of the gyroscope acceleration magnitude in Hz (frequency domain)

**fBodyBodyGyroJerkMag-mean()**  
Average of the mean of the body gyroscope magnitude of the Jerk signals in Hz (frequency domain) 
  
**fBodyBodyGyroJerkMag-std()**  
Average of the standard deviation of the body gyroscope magnitude of the Jerk signals in Hz (frequency domain) 

And the angles between the different vectors.

**angle(tBodyAccMean,gravity)**  
Average angle between the body acceleration mean and the gravity vector [rad]

**angle(tBodyAccJerkMean),gravityMean)**  
Average angle between the body acceleration Jerk mean and the mean gravity vector [rad]

**angle(tBodyGyroMean,gravityMean)**  
Average angle between the body gyroscope mean and the mean gravity vector [rad]

**angle(tBodyGyroJerkMean,gravityMean)**  
Average angle between the body gyroscope Jerk mean and the mean gravity vector [rad]

**angle(X,gravityMean)**  
Average angle between the X axis and the mean gravity vector [rad]

**angle(Y,gravityMean)**  
Average angle between the Y axis and the mean gravity vector [rad]

**angle(Z,gravityMean)**  
Average angle between the X axis and the mean gravity vector [rad]

This results in a data set with 73 averages for the above mentioned variables. These are sorted by subjectID and activity.