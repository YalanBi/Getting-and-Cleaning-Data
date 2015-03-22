library(plyr)


# Merges the training and the test sets to create one data set.
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
x_data <- rbind(x_train, x_test)
rm(x_train, x_test)

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_data <- rbind(y_train, y_test)
rm(y_train, y_test)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_data <- rbind(subject_train, subject_test)
rm(subject_train, subject_test)


# Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("UCI HAR Dataset/features.txt")
measurements_mean_std <- grep("-(mean|std)\\(\\)", features[ ,2])
x_data <- x_data[ ,measurements_mean_std]
names(x_data) <- features[measurements_mean_std, 2]
rm(measurements_mean_std, features)


# Uses descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
y_data[ ,1] <- activities[y_data[ ,1], 2]
rm(activities)


# Appropriately labels the data set with descriptive variable names.
names(y_data) <- "activity"
names(subject_data) <- "subject"
all_data <- cbind(x_data, y_data, subject_data) #combine all


# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
averages <- ddply(all_data, .(subject, activity), function(x) colMeans(x[ ,-match(c("activity", "subject"), colnames(x))]))

write.table(averages, "average_data.txt", row.name = FALSE)
