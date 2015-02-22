# Readme for the Course Project of 'Getting and Cleaning Data'

In this readme you will find the description of the steps I took to get from the raw data to the cleaned data. The raw data was downloaded via the Coursera-link.

## Repo contents
The repo contains the following files:
- README.md: a description of the steps and the document you're currently reading
- run_analysis.R: the R script that is used to transform the raw data into the tidy data
- CodeBook.md: the codebook with the descriptions of the variables
- CleanedSet.txt: The resulting tidy data set

## Data cleaning steps

### Project and data initialization
First of all I loaded the libraries I might need. I chose for Hmisc, dplyr and reshape2, but I'm not sure I used all of them in the end.

Then I loaded all the data that I needed. I decided that the raw data of the accelerometer and the gyroscope were not needed. This was only delivered to us as the raw data from which our input data was derived.

For training and test each, there were three files that I used:
- x_test/train.txt: containing the measured data
- y_test/train.txt: containing the activity labels
- subject_test/train.txt: containing the ID of the research subjects.

Furthermore, there are two files with metadata:
- activity_labels.txt: containing the translation between activity number and the description
- features.txt: containing the names of the variables.

### Merging the data (step 1)
For each 'train' and 'test' I created a data set by merging the columns with cbind():
'SubjectID'      'Activity'      '561 columns with measurements'
Then I combined the 'train' and 'test' set with rbind(), resulting in data set 'total'.

### Use appropriate variable names (step 4)
Although using appropriate variable names was step for of the assignment, I decided to do this earlier. This because we need to make selections made on variable name in step 2. Although I first did it in the described order, I found that prone to making errors.

The first two columns of my data frama are 'SubjectID' and 'Activity'.  The variable names for the measurements are provided in features.txt. By using colnames() I assigned the right names to the variables.

### Only use variable with respect to mean and standard deviations (step 2)
The next step is to use ony the means and the standard deviations. There are also a couple of variables describing the meanFreq. In those we're not interested, so these should not be selected.

The angle-variables I kept. This results in set 'sub_data', with 73 measurement variables. I sorted them in such a way that the order is the same as it was in the original frame.

### Use descriptive activity names (step 3)
The activities are defined with numbers running from 1 to 6. In the activity_labels.txt file there is translation from these numbers to descriptions. I used an for-loop to replace the numbers with the descriptions.

### Create a tidy data set with the average of each variable for each activity and each subject (step 5)
We're interested in the average means and standard deviations per activity and per subject. I summarized the data set by first making groups with group_by and afterwards computing the means.

This results in an 6 rows with averages for each subject, one line for each activity they did. In total this means there are 180 rows, as there are 30 subjects.

### Write the output
The output is written to CleanedSet.txt by using the write.table command.

## Code book
In the code book I tried to describe all the variables. Unfortonately, not all the variables and their units of measurement were clear to me. So although there is a description, it might not make that much sense...