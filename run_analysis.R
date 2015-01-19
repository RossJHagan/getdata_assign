library(dplyr)
library(plyr)
library(data.table)
library(reshape2)

# FILE PATHS
# for test data
testDataFilePath <- "./data/test/X_test.txt"
testActivityListFilePath <- "./data/test/y_test.txt"
testSubjectFilePath <- "./data/test/subject_test.txt"
# for training data
trainDataFilePath <- "./data/train/X_train.txt"
trainActivityListFilePath <- "./data/train/y_train.txt"
trainSubjectFilePath <- "./data/train/subject_train.txt"
# for common attributes
featureDataFilePath <- "./data/features.txt"
activityLabelsFilePath <- "./data/activity_labels.txt"


featureData <- fread(featureDataFilePath)
# Load the activity labels and transform to vector indexed by the numbers
tmpActivityLabels <- fread(activityLabelsFilePath)
activityLabels <- tmpActivityLabels$V2
names(activityLabels) <- tmpActivityLabels$V1

testActivitiesList <- fread(testActivityListFilePath)
trainActivitiesList <- fread(trainActivityListFilePath)

testSubjectList <- fread(testSubjectFilePath)
trainSubjectList <- fread(trainSubjectFilePath)

# We are only interested in the mean() and std() (standard deviation)
regExFeatures <- "mean\\(\\)|std\\(\\)"

# Vector of integers reflecting the indices of feature vector
vectorIndices <- featureData[grep(regExFeatures, featureData$V2),]$V1

# Create a tidier list of variable names by lower casing and removing `-()`
vectorNames <- tolower(featureData[vectorIndices,]$V2)
vectorNames <- gsub("[-()]", "", vectorNames)

# Read in the test data, subset to the target indices 
# and apply the new variable names
testData <- read.table(testDataFilePath)
testData <- testData[,vectorIndices]
names(testData) <- vectorNames

# Add the activity to the table then convert the numeric identifier to the
# more readable text equivalent as indexed in the activityLabels
testData["activity"] <- testActivitiesList
testData <- mutate(testData, activity = activityLabels[activity])
testData["subject"] <- testSubjectList

# As for test data, read, subset and rename the variables
trainData <- read.table(trainDataFilePath)
trainData <- trainData[,vectorIndices]
names(trainData) <- vectorNames

# As for test data, add activity and subject columns.  Transform the activity
# to a text label
trainData["activity"] <- trainActivitiesList
trainData <- mutate(trainData, activity = activityLabels[activity])
trainData["subject"] <- trainSubjectList

# combine the two data sets
fullData <- rbind(testData, trainData)

meltedData <- melt(fullData, id.var = c("activity", "subject"))
meanData <- dcast(meltedData, activity + subject ~ variable, fun.aggregate = mean)

write.table(meanData, "mean_activities.txt", row.names=FALSE)