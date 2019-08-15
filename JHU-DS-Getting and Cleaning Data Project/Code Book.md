# Getting and Cleaning Data Course Project Code Book 

## ID

`Subject:`**0-30.** Identifies the subject who performed the activity for each window sample.

`Activities:`**0-6.** With the labels below:

`1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING`

## Output Measurements

There are 66 output measurements in total (mean and standard deviation for the below measurements.)

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The 66 output measurements are:

`1 tBodyAcc_Mean_X`

`
2 tBodyAcc_Mean_Y`

`
3 tBodyAcc_Mean_Z`

`
4 tBodyAcc_Std_X`

`
5 tBodyAcc_Std_Y`

`
6 tBodyAcc_Std_Z`

`
7 tGravityAcc_Mean_X`

`
8 tGravityAcc_Mean_Y`

`
9 tGravityAcc_Mean_Z`

`
10 tGravityAcc_Std_X`

`
11 tGravityAcc_Std_Y`

`
12 tGravityAcc_Std_Z`

`
13 tBodyAccJerk_Mean_X`

`
14 tBodyAccJerk_Mean_Y`

`
15 tBodyAccJerk_Mean_Z`

`
16 tBodyAccJerk_Std_X`

`
17 tBodyAccJerk_Std_Y`

`
18 tBodyAccJerk_Std_Z`

`
19 tBodyGyro_Mean_X`

`
20 tBodyGyro_Mean_Y`

`
21 tBodyGyro_Mean_Z`

`
22 tBodyGyro_Std_X`

`
23 tBodyGyro_Std_Y`

`
24 tBodyGyro_Std_Z`

`
25 tBodyGyroJerk_Mean_X`

`
26 tBodyGyroJerk_Mean_Y`

`
27 tBodyGyroJerk_Mean_Z`

`
28 tBodyGyroJerk_Std_X`

`
29 tBodyGyroJerk_Std_Y`

`
30 tBodyGyroJerk_Std_Z`

`
31 tBodyAccMag_Mean`

`
32 tBodyAccMag_Std`

`
33 tGravityAccMag_Mean`

`
34 tGravityAccMag_Std`

`
35 tBodyAccJerkMag_Mean`

`
36 tBodyAccJerkMag_Std`

`
37 tBodyGyroMag_Mean`

`
38 tBodyGyroMag_Std`

`
39 tBodyGyroJerkMag_Mean`

`
40 tBodyGyroJerkMag_Std`

`
41 fBodyAcc_Mean_X`

`
42 fBodyAcc_Mean_Y`

`
43 fBodyAcc_Mean_Z`

`
44 fBodyAcc_Std_X`

`
45 fBodyAcc_Std_Y`

`
46 fBodyAcc_Std_Z`

`
47 fBodyAccJerk_Mean_X`

`
48 fBodyAccJerk_Mean_Y`

`
49 fBodyAccJerk_Mean_Z`

`
50 fBodyAccJerk_Std_X`

`
51 fBodyAccJerk_Std_Y`

`
52 fBodyAccJerk_Std_Z`

`
53 fBodyGyro_Mean_X`

`
54 fBodyGyro_Mean_Y`

`
55 fBodyGyro_Mean_Z`

`
56 fBodyGyro_Std_X`

`
57 fBodyGyro_Std_Y`

`
58 fBodyGyro_Std_Z`

`
59 fBodyAccMag_Mean`

`
60 fBodyAccMag_Std`

`
61 fBodyBodyAccJerkMag_Mean`

`
62 fBodyBodyAccJerkMag_Std`

`
63 fBodyBodyGyroMag_Mean`

`
64 fBodyBodyGyroMag_Std`

`
65 fBodyBodyGyroJerkMag_Mean`

`
66 fBodyBodyGyroJerkMag_Std`



## The independent tidy data set

Use the 2 ID variables as id and 66 output variables as measure.var to reshape the data frame, also extract the average of each output variables for each value in the 2 ID variables.   

