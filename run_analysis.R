#Merges the training and the test sets to create one data set.
setwd('~/Documents/coursera/Data Science/get and clean data/project/')

#read in column names
featuresfile <- './UCI HAR Dataset/features.txt'
features <- read.delim(featuresfile, header = FALSE, sep = " ")
featurenames <- features[,2]

testfile <- './UCI HAR Dataset/test/X_train.txt'
trainfile <- './UCI HAR Dataset/train/X_train.txt'
widths <- rep.int(16,length(featurenames))

# this will take a while
testdata <- read.fwf(testfile, widths, header = FALSE, col.names=featurenames)
traindata <- read.fwf(trainfile, widths, header = FALSE, col.names=featurenames)


#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

