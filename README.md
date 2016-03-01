##Getting and Cleaning Data Project
This repository is for the course project "Getting and cleaning data" offered by Coursera.

The project asks to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

###Full Description of Data
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Source Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

### Script Sections

####Section 1. Merge the training and the test sets to create one data set.

After setting the source directory for the files, reading into tables the data located in

features.txt
activity_labels.txt
subject_train.txt
x_train.txt
y_train.txt
subject_test.txt
x_test.txt
y_test.txt

Using rbind fuctions to merge the test and traind datasets to create one data set.

####Section 2. Extract only the measurements on the mean and standard deviation for each measurement.

Subsetting the combined datset for only columns containing Mean or Std measurements. 

####Section 3. Use descriptive activity names to name the activities in the data set

Naming the selected data with the descriptive activity names

####Section 4. Appropriately label the data set with descriptive activity names.

renaming the subject and activity column names with descriptive variable names 

####Section 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

A dataset with the average of each veriable for each activity and subject is calculted using plyr library and ddply and numcolwise functions 

Finally wrote a text file for the tidy_data set to export the final tidy dataset.
