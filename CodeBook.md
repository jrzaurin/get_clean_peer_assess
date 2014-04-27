CODEBOOK.md for get_clean_peer_assess
=====================

By Marc Epstein
________________

Peer Assessment Project from Coursera Getting and Cleaning Data course
_______________________________________________________________________

For a full data description please see:

*	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


The problem statement was:
_____________________________

Create one R script called run_analysis.R that does the following. 
*	Merges the training and the test sets to create one data set.
*	Extracts only the measurements on the mean and standard deviation for each measurement. 
*	Uses descriptive activity names to name the activities in the data set
*	Appropriately labels the data set with descriptive activity names. 
*	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 




** The DATA has the follow characteristics
#Features are normalized and bounded within [-1,1].
#Each original feature vector is a row on the text file.




For each record in the ORIGINAL data it was provided:
======================================

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


For each unique SUBJECT/ACTIVITY in the AGGREGATE DATA  we have the following values calculated
======================================
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.std..
* tGravityAccMag.std..
* tBodyAccJerkMag.std..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.std..
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.std..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroJerkMag.std..
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyAccMag.mean..
* tGravityAccMag.mean..
* tBodyAccJerkMag.mean..
* tBodyGyroMag.mean..
* tBodyGyroJerkMag.mean..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.meanFreq...X
* fBodyAcc.meanFreq...Y
* fBodyAcc.meanFreq...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.meanFreq...X
* fBodyAccJerk.meanFreq...Y
* fBodyAccJerk.meanFreq...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.meanFreq...X
* fBodyGyro.meanFreq...Y
* fBodyGyro.meanFreq...Z
* fBodyAccMag.mean..
* fBodyAccMag.meanFreq..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.meanFreq..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.meanFreq..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.meanFreq..

