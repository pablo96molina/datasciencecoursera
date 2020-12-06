#setwd("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

#Asigning the txt to a variable
X_test <- read.table("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
X_train <- read.table("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
y_test <- read.table("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")
y_train <- read.table("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
#Adding frames
totaldata <- rbind(X_test, X_train)
totallabel <- rbind(y_test, y_train)
#Adding the column activity label to measures
tablafinal <- cbind(totallabel,totaldata)
#Vector to choose columns
columnas <- c(1:6,41:46,81:86,121:126,161:166,201:206,214,215,227,228,240,241,253,256,266:271,345:350,424:429,503,504,529,530,542,543)
#Extracting the columns from totaldata
subconjunto <- select(totaldata, columnas)
tablafinal <- cbind(totallabel,subconjunto)

#Get columns names
features <- read.table("C:/Users/pablo/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt", quote="\"", comment.char="")
nombrecolumna <- features$V2[columnas]
nombrecolumnas <- c("activity label", nombrecolumna) #Forget to name the first column

#Asigning the colnames to columns
tablafinal <- `colnames<-`(tablafinal, nombrecolumnas)

#Split by activity label
split(tablafinal, "activity label", drop = FALSE)