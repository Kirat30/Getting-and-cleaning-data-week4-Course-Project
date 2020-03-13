
##Read the test data
x_test <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/test/subject_test.txt")

##Read the train data
x_train <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/train/subject_train.txt")

##Read the data providing features(variables) and activities for the data set
activity_labels <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/activity_labels.txt")
features <- read.table("C:/Users/HP/Documents/RDirectory/UCI HAR Dataset/features.txt")

##Here for the sake of simplicity and better understanding, Columns are given their respective names
colnames(x_test) <- features$V2
colnames(x_train) <- features$V2
colnames(y_test) <- "activity_id"
colnames(y_train) <- "activity_id"
colnames(activity_labels) <- c("activity_id", "activity")
colnames(subject_test) <- "subject_number"
colnames(subject_train) <- "subject_number"

##Two lists for furher use are initialized
ytest_activity <- list()
ytrain_activity <- list()

##Here data from the acivity_labels is extracted with respect to data in y_test and y_train
for(id in y_test){
        ytest_activity <- append(ytest_activity, as.character(activity_labels[id,2]))
}
for(id in y_train){
        ytrain_activity <- append(ytrain_activity, as.character(activity_labels[id,2]))
}

##The worked up lists are converted to class data frame, for the sake of easy binding 
ytest_activity <- data.frame(matrix(unlist(ytest_activity), nrow=length(ytest_activity), byrow=TRUE))
ytrain_activity <- data.frame(matrix(unlist(ytrain_activity), nrow=length(ytrain_activity), byrow=TRUE))

##Test data and train data are merged together
test <- cbind(ytest_activity, subject_test, x_test)
train <- cbind(ytrain_activity, subject_train, x_train)

##After the initial merrge the column dedicated to the activity is named respectively
colnames(test)[1] <- "activity"
colnames(train)[1] <- "activity"

##The final merge takes place here
mergedData <- rbind(test, train)

##Further we take only the variables we are asked for(i.e. mean and std)
variables <- colnames(mergedData)
neededvariables <- variables[grep("activity|subject_number|mean()|std()", variables)]
subMergedData <- subset(mergedData, select = neededvariables)

##A tidy data set with the average of each variable for each activity and each subject is created and saved
cleanData <- aggregate(. ~subject_number + activity, subMergedData, mean)
cleanData <- cleanData[order(cleanData$subject_number, cleanData$activity),]
write.table(cleanData, "CleanData.txt", row.names = FALSE)
