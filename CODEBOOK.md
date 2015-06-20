
The function run_analysis() available in this directory works based on the data set available in the study "Human Activity Recognition Using Smartphones".

You can get a lot of information about the study accessing this URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

After some data transformation (described on the readme.md file) the output of this function is a data set containing 68 variables/columns.
This same data set contains 180 rows (6 activities performed by 30 different subjects) and each of these rows contains the mean of a series of values (columns 3 to 68) obtained from the study.

List of columns in this data set:

        Activity - Activity performed
        Subject - Identification number of the subject
        tBodyAcc-mean()-X
        tBodyAcc-mean()-Y
        tBodyAcc-mean()-Z
        tBodyAcc-std()-X
        tBodyAcc-std()-Y
        tBodyAcc-std()-Z
        tGravityAcc-mean()-X
        tGravityAcc-mean()-Y
        tGravityAcc-mean()-Z
        tGravityAcc-std()-X
        tGravityAcc-std()-Y
        tGravityAcc-std()-Z
        tBodyAccJerk-mean()-X
        tBodyAccJerk-mean()-Y
        tBodyAccJerk-mean()-Z
        tBodyAccJerk-std()-X
        tBodyAccJerk-std()-Y
        tBodyAccJerk-std()-Z
        tBodyGyro-mean()-X
        tBodyGyro-mean()-Y
        tBodyGyro-mean()-Z
        tBodyGyro-std()-X
        tBodyGyro-std()-Y
        tBodyGyro-std()-Z
        tBodyGyroJerk-mean()-X
        tBodyGyroJerk-mean()-Y
        tBodyGyroJerk-mean()-Z
        tBodyGyroJerk-std()-X
        tBodyGyroJerk-std()-Y
        tBodyGyroJerk-std()-Z
        tBodyAccMag-mean()
        tBodyAccMag-std()
        tGravityAccMag-mean()
        tGravityAccMag-std()
        tBodyAccJerkMag-mean()
        tBodyAccJerkMag-std()
        tBodyGyroMag-mean()
        tBodyGyroMag-std()
        tBodyGyroJerkMag-mean()
        tBodyGyroJerkMag-std()
        fBodyAcc-mean()-X
        fBodyAcc-mean()-Y
        fBodyAcc-mean()-Z
        fBodyAcc-std()-X
        fBodyAcc-std()-Y
        fBodyAcc-std()-Z
        fBodyAccJerk-mean()-X
        fBodyAccJerk-mean()-Y
        fBodyAccJerk-mean()-Z
        fBodyAccJerk-std()-X
        fBodyAccJerk-std()-Y
        fBodyAccJerk-std()-Z
        fBodyGyro-mean()-X
        fBodyGyro-mean()-Y
        fBodyGyro-mean()-Z
        fBodyGyro-std()-X
        fBodyGyro-std()-Y
        fBodyGyro-std()-Z
        fBodyAccMag-mean()
        fBodyAccMag-std()
        fBodyBodyAccJerkMag-mean()
        fBodyBodyAccJerkMag-std()
        fBodyBodyGyroMag-mean()
        fBodyBodyGyroMag-std()
        fBodyBodyGyroJerkMag-mean()
        fBodyBodyGyroJerkMag-std()

The first two columns contain the activity description and the identification of the subject. Both were used to calculated the average for all the remaining values.

All the other columns have the same name and description as the original data set (provided by the study) and all of them are the result of a average calculation grouped by activity and subject as required by the course project.

The text below was extract from the "features_info.txt" file (provided in the study) and clearly describe the calculated columns of this data set:

        The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
        
        Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
        
        Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 