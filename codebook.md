---
title: "CodeBook"
author: "Swati Gupta"
date: "5 March 2018"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

#### Data Description
##### Dimention 
..*Test Data set - 2947 x 561
..*Train Data Set - 7352 x 561
..*Subject of Test Data Set - 2947 x 1
..*Subject of Train Data Test - 7352 x 1
..* Activity or Y_Test Data Set - 2947 x 1
..* Activity or Y_Train Data Set - 7352x1



### Variables  abbreviations
s
Variable   |  Data Type |  Desciption |
--------------------------------------
tBodyAcc-XYZ      | double  |  Time Domain  signal captured at constant rate of 50Hz from   accelerometer                                  at 3 axial row signal(XYZ) and separated into body(tBody) and                                          Gravity Signal(tGravity) 
tBodyGyro-XYZ     | double | Time Domain  signal captured at constant rate of 50Hz from   Gyroscope                                  at 3 axial row signal(XYZ) and separated into body(tBody) and                                          Gravity Signal(tGravity) 
tGravityAcc-XYZ |  double |Time Domain  signal captured at constant rate of 50Hz from   accelerometer                                  at 3 axial row signal(XYZ) and separated into body(tBody) and                                          Gravity Signal(tGravity)
tBodyAccJerk-XYZ | double | the body linear acceleration and angular velocity were derived in time to obtain Jerk signals tBodyAccJerk-XYZ using asselerometer
 tBodyGyroJerk-XYZ | double | the body linear acceleration and angular velocity were derived in time to obtain Jerk signals using gyroscope
 tBodyAccMag | double | Mangnitude of tree dimensional signal is  calculated using Euclidean norm 
 fBodyAcc-XYZ | double | FFT (Fast Fourier Transformation) is applied to tBodyAcc-XYZ to produce 
                         frequency domain signal
 fBodyAccJerk-XYZ| double | FFT (Fast Fourier Transformation) is applied to tBodyAccJerk-XYZ to                                  produce frequency domain signal
 fBodyGyro-XYZ| double |FFT (Fast Fourier Transformation) is applied to tBodyGyro-XYZ to  produce                             frequency domain signal
 fBodyAccJerkMag| double |FFT (Fast Fourier Transformation) is applied to tBodyAccJerkMag-XYZ to                               produce frequency domain signal
 fBodyGyroMag| double |FFT (Fast Fourier Transformation) is applied to tBodyGyroMag-XYZ to  produce                             frequency domain signal
 fBodyGyroJerkMag | double |FFT (Fast Fourier Transformation) is applied to tBodyGyroJerkMag-XYZ to                               produce frequency domain signal
  -XYZ | double | Denote 3-axial signals in the X, Y and Z directions.
Subject | integer |  who carried out the experiment. Range from 1 to 30 

