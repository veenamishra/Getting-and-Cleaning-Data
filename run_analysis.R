#getwd()
#setwd("/Users/veena/Desktop/Getting_Cleaning_data_cs")

install.packages("plyr")
library(plyr)

# Reading activity, features data 
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
feature = read.table("UCI HAR Dataset/features.txt")

# Reading test data
x_test = read.table("UCI HAR Dataset/test/X_test.txt")
y_test = read.table("UCI HAR Dataset/test/y_test.txt")
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")

# Reading train data
x_train = read.table("UCI HAR Dataset/train/X_train.txt")
y_train = read.table("UCI HAR Dataset/train/y_train.txt")
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")

#1. Merges the training and the test sets to create one data set.
x_test_train_merge = rbind(x_test, x_train)
y_test_train_merge = rbind(y_test, y_train)
subject_test_train_merge = rbind(subject_test, subject_train)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
column_names = feature[grep("(mean|std)\\(", feature$V2),1]
x_merge_mean_std = x_test_train_merge[,column_names]
names(x_merge_mean_std) = feature[grep("(mean|std)\\(", feature$V2),2]

#3. Uses descriptive activity names to name the activities in the data set
y_test_train_merge[,1] = activity_labels[y_test_train_merge[,1],2]

#4. Appropriately labels the data set with descriptive variable names. We label our activity and subject.
names(subject_test_train_merge) = "subject"
names(y_test_train_merge) = "activity"
final_table = cbind(x_merge_mean_std, y_test_train_merge, subject_test_train_merge)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- ddply(final_table, c("subject","activity"), numcolwise(mean))

# Export the tidyData set 
write.table(averages_data, "tidy_data.txt", row.names = FALSE, quote = FALSE)




