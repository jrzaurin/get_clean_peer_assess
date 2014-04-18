get_clean_peer_assess
=====================

Peer Assessment Project from Coursera Getting and Cleaning Data course


The problem statement was:


USE THIS DATA:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Create one R script called run_analysis.R that does the following. 
*	Merges the training and the test sets to create one data set.
*	Extracts only the measurements on the mean and standard deviation for each measurement. 
*	Uses descriptive activity names to name the activities in the data set
*	Appropriately labels the data set with descriptive activity names. 
*	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


The code works by following the requirements above.

It merges training and test by reading the X, Y, and SUBJECT data for each of train & test then creating 
	allX
	allY
	allS (all subjects)

It creates a lookup table to convert activies from codes to proper names (activity_lookup)
and uses that lookup table to relabel activies

It then merges the subject, X, and Y  to create the master dataframe with all the data as "all"

Then it aggregates that table based on the first two columns creating the mean of all numeric variables
	as "aggr_working"
	
then it writes out "aggr_working" as a csv file named "tidy.txt"



