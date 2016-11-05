library(dplyr)
library(tidyr)
library(data.table)
setwd("../")
if(!file.exists("data")){dir.create("data")}
if(!file.exists("../data/humanActivity")){dir.create("../data/humanActivity")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "../data/humanActivity.zip",method = "wininet")
unzip("../data/humanActivity.zip", exdir = "../data/humanActivity" )
activitylabels <- read.table("../data/humanActivity/UCIHARDataset/activity_labels.txt", sep = " ")
dataXtest <- read.table("../data/humanActivity/UCIHARDataset/test/X_test.txt")
dataYtest <- read.table("../data/humanActivity/UCIHARDataset/test/Y_test.txt")
dataXtrain <- read.table("../data/humanActivity/UCIHARDataset/train/X_train.txt")
dataytrain <- read.table("../data/humanActivity/UCIHARDataset/train/X_train.txt")
datatest <- read.table("../data/humanActivity/UCIHARDataset/activity_labels.txt")

