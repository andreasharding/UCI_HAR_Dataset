#Merges the training and the test sets to create one data set.
setwd('~/Documents/coursera/Data Science/get and clean data/project/')

#read in column names
featuresfile <- './UCI HAR Dataset/features.txt'
features <- read.delim(featuresfile, header = FALSE, sep = " ")
featurenames <- features[,2]

testfile <- './UCI HAR Dataset/test/X_test.txt'
trainfile <- './UCI HAR Dataset/train/X_train.txt'
widths <- rep.int(16,length(featurenames))

# this will take a while
testdata <- read.fwf(testfile, widths, header = FALSE, col.names=featurenames)
traindata <- read.fwf(trainfile, widths, header = FALSE, col.names=featurenames)

# combine these into one dataset
mergeddata <- rbind(testdata, traindata)

#Extracts only the measurements on the mean and standard deviation for each measurement.
# .....
# at this point ran out of time for this particular deadline...
# was trying to identify the elements in featurenames matching either 'mean' or 'std'
# in order to get a logical vector identifying only the appropriate columns
# tried the following, but it didn't work - probaly need some sort of grep...
srch <- c('mean', 'std')
useful_columns <- match(srch, featurenames)





#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

