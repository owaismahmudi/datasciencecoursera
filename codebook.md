
# Features selection of the tidy database:

The selected features are derived from the original features defined in the `features_info.txt` file in the original dataset (can be downloaded using this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)).

Variable `activityname` shows activity of the subject during which the measurements were recorded.
Variable `subject` is the numeric ID of the subject for which the measurements were recorded.

The rest of the variables are taken from the original dataset with slight modification. The nomenclature for the rest of the variables is given as follows: 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals `timeAccXYZ` and `timeGyroXYZ`. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (`timeBodyAccXYZ` and `timeGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (`timeBodyAccJerkXYZ` and `timeBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing `frequencyBodyAccXYZ`, `frequencyBodyAccJerkXYZ`, `frequencyBodyGyroXYZ`, `frequencyBodyAccJerkMag`, `frequencyBodyGyroMag`, `frequencyBodyGyroJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* timeBodyAcc-XYZ
* timeGravityAcc-XYZ
* timeBodyAccJerk-XYZ
* timeBodyGyro-XYZ
* timeBodyGyroJerk-XYZ
* timeBodyAccMag
* timeGravityAccMag
* timeBodyAccJerkMag
* timeBodyGyroMag
* timeBodyGyroJerkMag
* frequencyBodyAcc-XYZ
* frequencyBodyAccJerk-XYZ
* frequencyBodyGyro-XYZ
* frequencyBodyAccMag
* frequencyBodyAccJerkMag
* frequencyBodyGyroMag
* frequencyBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* Mean - mean value of the measurement variable
* Std - standard deviation of the measurement variable