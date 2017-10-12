## Read Activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

X_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
#dim =  2947 x 561
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", header = FALSE)
#dim =  2947 x 1
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
#dim =  2947 x 1

X_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
#dim =  7352 x 561
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", header = FALSE)
#dim =  7352 x 1
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
#dim =  27352 x 1

## Read the activity names from the description file 'features.txt'
features_cols <- read.table("UCI HAR Dataset/features.txt", header = FALSE)
features <- features_cols[,2]

##  Descriptive names to the columns in the data set
names(X_train) <- features
names(X_test) <- features

names(subject_train) <- c("subject")
names(subject_test) <- c("subject")

## Uses descriptive activity names to name the activities in the data set
# for training dataset
activity <- vector(mode="character", length=length(Y_train[,1]))
for(i in 1:length(Y_train[,1]))
  activity[i] <- as.character(activity_labels[Y_train[i,1],2])
Y_train <- cbind(Y_train, activity)
names(Y_train) <- c("activityno","activityname")
# for testing dataset
activity <- vector(mode="character", length=length(Y_test[,1]))
for(i in 1:length(Y_test[,1]))
  activity[i] <- as.character(activity_labels[Y_test[i,1],2])
Y_test <- cbind(Y_test, activity)
names(Y_test) <- c("activityno","activityname")

## Bind the activity labels & subject id to training & test dataset
train <- cbind(X_train, Y_train["activityname"], subject_train)
test <- cbind(X_test, Y_test["activityname"], subject_test)

## Merge the Training & Test Data
mergeddata <- rbind(train, test)

## Get columns indices having mean or std in their names
interestingfeatures <- grep("mean|std|activity|subject", names(mergeddata))

## Extracts only the measurements having mean and standard deviation 
## for each measurement.
meanstddata <- mergeddata[, interestingfeatures]

## Clean the names from parenthesis and hyphens
## And capitalize the first letter, since it becomes too hard to read the long names
columns <- names(meanstddata)
columnstidynames <- gsub("-", "", gsub("\\(|\\)", "", gsub("fBody", "frequencyBody", gsub("tBody", "timeBody", gsub("tGrav", "timeGrav", gsub("mean", "Mean", gsub("std", "Std", columns)))))))
names(meanstddata) <- columnstidynames

## Group the items by activityname and subject
groupedMeanStd <- meanstddata %>% group_by(activityname, subject)
v <- summarise_all(groupedMeanStd, mean)

## Visualise the resulting tidy dataset
View(v)
