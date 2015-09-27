# Coursera
The repo is for Coursera projects

The original data is available at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script run_analysis.R takes the subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt, features.txt, activity_labels.txt and creates a course_project.txt with a data set with the average of each mean and std varibles for each subject and activity

The script 
1) reads the above mentioned files as tables and merges the test and training sets into one (Part 1)
2) extracts the variables with measurements of the mean and std (Part 2)
3) Changes the numbers of activities into names according to the activity_labels.txt (Part 3)
4) Changes the column names into those corresponding to feature names from features.txt (Part 4)
5) Creates a dataset with the average of each mean and std variables for each subject and activity (Part 5)

You shoud save the subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt, features.txt, activity_labels.txt to the same directory as the run_analysis.R or change the paths to these files in the script
