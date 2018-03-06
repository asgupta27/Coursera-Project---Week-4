---
title: "ReadMe"
author: "Swati Gupta"
date: "6 March 2018"
output: html_document
---

## Project Description
Human Activity Recognition Using Smartphones Dataset

### Data Collection
The most exciting area in data science is wearable computing. The data is collected from 30 person having the age group of 19 to 48 year. Each person performed 6 activity including Walking, Laying, Standing, Sitting,Walking Upstairs, Walking Downstairs. 


The data set contains following file

1. X_train.txt -  contains the data set of training
2. X_test.tst - contains the data set of test
3. Subject_trains.txt - Each row of this identifies the object who performed the activity. It ranges from 1 to 30
4. Subject_test.txt
5. Y_train.txt/Y_test.txt -  Activity level ranges from 1 to 6
6. Activity_Labels.txt - Links the class labels with their activity name.
7. features.txt - List of each features. Or the 
8. features- Complete List of variable of each feature vector 

Each record of the Data set contains
 *Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
 * Triaxial Angular velocity from the gyroscope. 
 * A 561-feature vector with time and frequency domain variables. 
 * Its activity label. 
 * An identifier of the subject who carried out the experiment.
 
### How The code Works
1. Step - 1 -: Bind the Subject and Activity column to Traing and Test Data Set. Then Merge the Training and Test Data Set. It will be called as Merged Data.
2. Step - 2 -: Extract the column that have mean and std using the features.txt from merged data. That is called as filtered data.
3. Step - 3-: Assign the activity name insted of activity number using the activity_Label.txt.It is called as descriptive_data.
4. Step - 4 -:  Lable the variable name in descriptive_data using feature_info.txt.
5. Step - 5 :- Get tidy data from this after grouping the descriptive_data group by activity and subject and get the averrage of each variable.
 