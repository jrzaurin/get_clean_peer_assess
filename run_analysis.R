#coursera_learning_r

#Cheat Sheet
# ?rm
# help.search("rm")
# args("rm")

rm(list=ls())

# print your working directory
getwd()
# set your working directory to the data file location
setwd("C:/Users/Marc/Documents/coursera/dataClean/UCIHARDataset")   


#Read in the columnn names
features <- read.table("features.txt", header=F, stringsAsFactors=FALSE) 

#Read in the data, using column names, from both test and train
xtest <- read.table("test\\X_test.txt", header=F, stringsAsFactors=FALSE, col.names=features$V2) 
xtrain <- read.table("train\\X_train.txt", header=F, stringsAsFactors=FALSE, col.names=features$V2) 
allX<-rbind(xtest,xtrain) # Merge test and Train into allX  (STEP #1)

#Select ONLY those column names with MAX or STD in the name  (STEP #2)
columnNamesWithMaxOrStd<-c(grep("*.std()*",colnames(allX)),grep("*.mean()*",colnames(allX)))
allX<-allX[, columnNamesWithMaxOrStd ]



#Read in the subject table
stest <- read.table("test\\subject_test.txt", header=F, stringsAsFactors=FALSE,col.names=c("subjectID")) 
strain <- read.table("train\\subject_train.txt", header=F, stringsAsFactors=FALSE,col.names=c("subjectID")) 
allS<-rbind(stest,strain) #merge test and train subjects in allS

#Read in the Y table
ytest <- read.table("test\\Y_test.txt", header=F, stringsAsFactors=FALSE,col.names=c("featureID")) 
ytrain <- read.table("train\\Y_train.txt", header=F, stringsAsFactors=FALSE,col.names=c("featureID")) 
allY<-rbind(ytest,ytrain) #merge test and train Y (activities) into allY

#Read in the activites table
activity_lookup <- read.table("activity_labels.txt", header=F, stringsAsFactors=FALSE,col.names=c("featureID","activity")) 

# Lookup the äctivity (walking, running, etc..) and put in code # with text for activity
activities<-activity_lookup$activity 
allY$activity<-activities[allY$featureID] #create lookup table

#  Merge the activity info with the subject info with all the X rows to create main dataset
# We have merged the training data and test data into one set (STEP #1)
# We have used descriptive activity names (STEP 3)
all <- data.frame(activity=allY$activity,allS,allX)

#clean up some extra variables
rm(activity_lookup,allS,allX,allY,features,
   stest,strain,ytest,ytrain,xtest,xtrain,
   activities, columnNamesWithMaxOrStd)

#Create a working subset of that data we will use to work with (top 100 rows of all)
#working<-rbind( head(all,50), tail(all,50))   # use this to operate on first 50 and last 50 rows
working<-all  # Use this to operate on full dataset


#Aggregate our data based on first two columns
aggr_working <-   aggregate(
  working[,3:ncol(working)],
  working[,1:2],
  FUN=mean    )

write.csv(aggr_working,file="tidy.txt");
