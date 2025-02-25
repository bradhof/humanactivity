*-------------------------------------------------------------------------------------------------
* FUNCTION cleanAndJoin
* Takes a set of datasets and joins them to form a tidy subset of data
* x - the features measures dataset
* y - the activity dataset for X
* subjects - the subsets dataset for x
* aLables - the labels for the activities
* columnHeaders - the column headers for the features
* Returns a tidy dataset that merges the input datasets with only std() and mean() variables
*-------------------------------------------------------------------------------------------------
     
cleanAndJoin <- function(x,y,subjects,aLabels,columnHeaders)
{
     #first, set the headers for x
     colnames(x) <- columnHeaders$feature_desc
     
     #merge the y dataset with aLabels
     a <- merge(y, aLabels,
                by.x="activity_id",
                by.y="activity_id", 
                sort=F, all.x=F, all.y=F)
     
     #merge the data sets (simple column bind will do)
     x <- cbind(subjects, a, x, stringsAsFactors=F)
     
     #remove the activity_id column
     x$activity_id <- NULL
     
     #return x
     x
}


*-------------------------------------------------------------------------------------------------
* FUNCTION prepareData
* Assumes the following data sets from are loaded in the working directory
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
* -test/x_test.txt - the main testing dataset for the features
* -test/y_test.txt - the list of activities for each row in x_test.txt
* -test/subjectTest - the list of subjects in the test set
* -train/x_train.txt - the main traing dataset for the features
* -train/y_train.txt - the list of activities for each row in x_train.txt
* -train/subject_train.txt - the list of subjects in the training set
* -activity_labels.txt - the activity labels (WALKING, etc)
* -features.txt - the column headers for the features
*
* Returns a tidy dataset containing the averages of each std() and mean() variable 
* (grouped by activity and subject) for both the training and testing datasets
* Two data sets are also written to the working directory as CSV files
*-------------------------------------------------------------------------------------------------
     
prepareData <- function(){
     #read in the data sets
     #NOTE: as the assignment suggests, assume the data files are under the current working directory
     #the test datasets
     xtest <- read.table("test/x_test.txt")
     ytest <- read.table("test/y_test.txt", col.names="activity_id")
     subjectTest <- read.table("test/subject_test.txt",col.names= "subject")
     
     #the train datasets
     xtrain <- read.table("train/x_train.txt")
     ytrain <- read.table("train/y_train.txt", col.names="activity_id")
     subjectTrain <- read.table("train/subject_train.txt", col.names="subject")
     
     #the label datasets - without any factors
     activityLabels <- read.table("activity_labels.txt", 
                                  stringsAsFactors=F, 
                                  col.names=c("activity_id","activity"))
     
     featureLabels <- read.table("features.txt", 
                                 col.names=c("feature_id","feature_desc"),
                                 stringsAsFactors=F)
     
     #for both the test and train sets, perform vertical merges 
     testSet <- cleanAndJoin(xtest ,ytest, subjectTest, activityLabels, featureLabels)
     trainSet <- cleanAndJoin(xtrain ,ytrain, subjectTrain, activityLabels, featureLabels)
     
     #combine the test and trains into a single set - horizontal merge
     fullSet <- rbind(testSet, trainSet)
     
     #select only the mean and std fields 
     #we will use grepl on the columns names to get a logical vector
     colsToUse <- grepl("mean|std|subject|activity",colnames(fullSet),ignore.case=T)
     tidySet1 <- fullSet[,colsToUse]
     
     #write the tidySet1 to a file
     write.csv(tidySet1,"tidy_set1.csv", row.names=F)
     
     #prepare the second set (means of all columns by activity and subject)
     tidySet2 <- ddply(tidySet1, .(subject,activity), numcolwise(mean), drop=T)
     write.csv(tidySet2,"tidy_set2.csv", row.names=F)
     
     invisible(tidySet2)
     
}