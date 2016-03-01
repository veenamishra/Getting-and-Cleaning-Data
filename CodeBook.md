Code Book
This code book summarizes the resulting data fields and variables in the tidy_data.txt.

###Identifiers

* subject - The ID of the 30 test subjects who participated in the Study
* activity - The type of activity performed by the subjects when the corresponding measurements were taken

###Variables

* X_train, X_test, Xtest_train_merge contain training, test and merged set of test data repectively .
* y_train, y_test, ytest_train_merge contain training, test and merged set of test label data repectively.
* subject_train, subject_test, subjecttest_train_merge contain training, test and merged set of subject data.
* We use rbind() to merge rows.
* features contain the colnames for our test data. We use this to tidy up our data.
* activities contain the activity names for our tests.
* The subject and activity columns have been renamed before combining them.
* All data are merged together using cbind() and apply ddply() function to split the dataframe on subject and activity variable. 
* There are 30 subjects and 6 activities and hence the final data contains 180 rows of mean values across all tests.
* In the end the tidy data is saved as txt in a file named tidy_data.txt


####Activity Labels

* WALKING (V1):              subject was walking during the test
                             * WALKING_UPSTAIRS (V2):     subject was walking up a staircase during the test
                                                          * WALKING_DOWNSTAIRS (V3):   subject was walking down a staircase during the test
                                                                                       * SITTING (V4):              subject was sitting during the test
                                                                                                                    * STANDING (V5):             subject was standing during the test
                                                                                                                                                 * LAYING (V6):               subject was laying down during the test
