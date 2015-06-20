# Introduction

The function run_analysis() was created to attend the Get and Cleaning Data Course Project. These are the requirements:

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Pre-requisites

* The package "dplyr" should be installed before this function is used.
* The .zip file containing the study data set should be unzipped on any folder.
* The working directory should be setted to the folder "UCI HAR Dataset"

# More information

The function "run_analysis()" will read the file "features.txt" to obtain the columns of the data set. Then it will read the test data (subject, x and y files) and bind them together.

After that it will do the same with the training data files (also subject, x and y), also binding them together.

The next step is to bind the test and train data by rows and replace the activity identification numbers with their respective labels: Replace "1 with "WALKING", "2" with "WALKING_UPSTAIRS" and so on.

Then, as required, the function will subset the data considering only the columns related to the mean and standard deviation of the original data.

To make this subsetting simpler the number of the columns were used instead of its names.

In order to reach its objective the function summarizes the data set applying the mean function on all numeric columns considering that the average should be considered for each activity/subject pair (group by). 

This data set will be returned by the function to its caller.