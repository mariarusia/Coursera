install.packages('dplyr')
library(dplyr)

######Part 1######


###create one data set out of two

X_test <- read.table("X_test.txt", quote="\"")
X_train <- read.table("X_train.txt", quote="\"")
X_full <- rbind(X_train, X_test)

### create one label set out of two

y_train <- read.table("y_train.txt", quote="\"")
y_test <- read.table("y_test.txt", quote="\"")
y_full <- rbind(y_train, y_test)

### create one subject set out of two
subject_train <- read.table("subject_train.txt", quote="\"")
subject_test <- read.table("subject_test.txt", quote="\"")
subject_full <- rbind(subject_train, subject_test)
#rename column names for Subject data set
colnames(subject_full) <- c("Subjects")

######Part 2######


### create a subset with only mean and std measurements
### mean and std feauture numbers
mean_std <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214, 215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)

X_subset <- X_full[, mean_std]

######Part 3######


### load activity labels
activity_labels <- read.table("activity_labels.txt", quote="\"")

activity_names <- as.character(activity_labels[, 2])
y_full$V1 <- activity_names[y_full$V1]
colnames(y_full) <- c("activity_name")

######Part 4#####
features <- read.table("features.txt", quote="\"")
feature_names <- as.character(features[mean_std, 2])
colnames(X_subset) <- feature_names

data <- cbind(X_subset, y_full, subject_full)

######Part 5######

result <- group_by (data, Subjects, activity_name)

clean <- summarise_each(result, funs(mean))

write.table(clean, file = "course_project.txt", row.names = FALSE)
