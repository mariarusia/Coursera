The original data set available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The description is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Study Design

To create the resulting data set I have merged the subject_test, X_test, y_test, subject_train, X_train, y_train from the original data set into one. 
I have excluded all the measuremens but the measurements on the mean and standard deviation from the original data set. The measurements on the mean were considered the variables which have "mean()" as part of their name. You can find the names of the features in the features.txt file.
There were 66 feature variables + 1 "Subject" variable + 1 "activity_name" variable. 68 Total. 

The "Subject" variable corresponds to the Subject numbers from the subject_train.txt or subject_test.txt files. The "activity_name" corresponds to the names of the activity from the activity_labels.txt.
The 66 feature variables corresond to the average of each variable for each activity and each subject.
 
