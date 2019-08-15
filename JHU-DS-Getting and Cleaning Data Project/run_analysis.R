setwd("D:/Data File/Coursera/Data Science-JHU/Getting and Cleaning Data/Week 4")
library(reshape2)
## Load the features.txt, extract the mean and standard deviation for each measurement and make the names descriptive
features <- read.table("./UCI HAR Dataset/features.txt")
ExtractedMeasurements_Position <- grep(".*mean[^Freq]|.*std",features[,2])
ExtractedMeasurements <- features[ExtractedMeasurements_Position,2]
ExtractedMeasurements <- gsub("-","_",ExtractedMeasurements)
ExtractedMeasurements <- gsub("mean","Mean",ExtractedMeasurements)
ExtractedMeasurements <- gsub("std","Std",ExtractedMeasurements)
ExtractedMeasurements <- gsub("[()]","",ExtractedMeasurements)

## Merge the training sets
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- "Subject"
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_train <- X_train[,ExtractedMeasurements_Position]
colnames(X_train) <- ExtractedMeasurements
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(y_train) <- "Activities"
training_sets <- cbind(subject_train,X_train,y_train)

## Merge the test sets
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- "Subject"
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_test <- X_test[,ExtractedMeasurements_Position]
colnames(X_test) <- ExtractedMeasurements
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(y_test) <- "Activities"
test_sets <- cbind(subject_test,X_test,y_test)

## Merge the training and test sets and make the value of activities descriptive
sets <- rbind(training_sets,test_sets)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
sets$Activities <- factor(sets$Activities,levels = activity_labels[[1]],labels = activity_labels[[2]])
descriptive_sets <- sets

## Create the tidy data sets
melt_sets <- melt(descriptive_sets,id = c("Subject","Activities"))
tidy_sets <- dcast(melt_sets,Subject + Activities ~ variable,mean)

## Create the txt file
write.table(tidy_sets,file = "./JHU-DS-Getting and Cleaning Data Project/tidy_sets.txt")






