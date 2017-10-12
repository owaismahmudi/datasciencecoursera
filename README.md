# Course Project - Getting & Cleaning Data

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

The run_analysis.R script was checked and run on RStudio Version 1.0.143 – © 2009-2016 RStudio, Inc. with R version 3.4.0 (2017-04-21).

The script generates a tidy dataset through the following steps:

1. Downloads the file from the given [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzips the downloaded zipped file
3. Read activity labels from the file activity\_labels.txt
4. Read test dataset excluding the Inertial Signals
5. Read train dataset excluding the Inertial Signals
6. Read the activity names from the description file 'features.txt'
7. Assign descriptive names to the columns in the test and train datasets
8. Extracts the descriptive activity names to name the activities in the dataset from activity\_labels.txt
9. Merge the columns of activity labels & subject id to training & test dataset
10. Merge the Training & Test Data
11. Extracts only the measurements having mean and standard deviation for each measurement.
12. Clean the names of the columns and capitalize the first letter, since it becomes too hard to read the long names.
13. Group the items by activityname and subject
14. Summarize the measurements by taking mean
15. Visualize the resulting tidy dataset in RStudio