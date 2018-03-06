# Read Test Data Set
X_Test <- read.table("test//X_test.txt")
# Read Train Data Set
X_Train <- read.table("train//X_train.txt")

# Read the Subject Data Set of Train and Test 
Subject_Train <- read.table("train//subject_train.txt")
Subject_Test <- read.table("test//subject_test.txt")

# Read the Activity Data Set of Train and Test
Y_Test <- read.table("test//Y_test.txt")
Y_Train <- read.table("train//Y_train.txt")

# Step 1 - Merge the Traina and Test Data Set
merged_Train <- cbind(Subject_Train, Y_Train, X_Train)
merged_Test <- cbind(Subject_Test, Y_Test, X_Test)
merged_data <- rbind(merged_Test, merged_Train)

# Read the Features list 
features <- read.table("features.txt")

# Step -2 - extract the column with mean and std
filtered_data <- merged_data[,c(1,2,as.integer(grep("mean()|std()", features$V2)+2))]

activity_labels <- read.table("activity_labels.txt")

# Step -3 - Replace the activity value with the valid Name
descriptive_data <- mutate(filtered_data, V1.1 = sapply(filtered_data$V1.1, function(x){x <- activity_labels[x,"V2"]}))

# Step -4 Assign Labels
colnames(descriptive_data)[1:2] <-  c("Subject","Activity") 
colcount <- length(colnames(descriptive_data))
colnames(descriptive_data)[3:colcount] <-  c(as.character(grep("mean()|std()", features$V2, value = TRUE))) 
colnames(descriptive_data) <- sub("^f","frequency",names(descriptive_data))
#colnames(descriptive_data) <- sub("^t","time",names(descriptive_data))
colnames(descriptive_data) <- sub("mean\\(\\)","Mean",names(descriptive_data))
colnames(descriptive_data) <- sub("-mean",".Mean",names(descriptive_data))
#colnames(descriptive_data) <- sub("std\\(\\)","Std",names(descriptive_data))
colnames(descriptive_data) <- sub("std","Std",names(descriptive_data))
colnames(descriptive_data) <- gsub("-",".",names(descriptive_data))
colnames(descriptive_data) <- gsub("\\(|\\)","",names(descriptive_data))

# Step - 5 create new data set with mean of each activity and Suject
new_data4 <-  descriptive_data %>% group_by(Subject, Activity) %>% summarise_all(funs(mean))
