Getting and Cleaning Data - Course Project
==========================================

This repository contains R scripts and files for the project of the coursera course "Getting and Cleaning data".

The aim of this project is to get clean data. The dataset being used is collected from the accelerometers from the Samsung Galaxy S smartphone: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Steps

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

`CodeBook.md` describes variables, datasets that were created or used to clean up the data.

`run_analysis.R` is the R script to clean the data as described steps above.

`average_data.txt` is the output after step 5, containing a tidy dataset with the average of each variable for each activity and each subject.
