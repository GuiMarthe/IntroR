Getting and cleaning data - course project
Version 1.0
===========================================

This project consisted in creating a tidy data set derived from the study "Human Activity Recognition Using Smartphones" conducted by the UCI - Center for Machine Learning and Intelligent Systems.

Contents
-----------

In this repository you will find the following files:

- data

- Codebook.md

- README.md

- read_data.R

- run_analysis.R

- tidy_dataset.txt


tidy_dataset.txt
-------------------

This is the final product of the analysis. It consists of the average cinematic readings (acceleration and angular velocity) and other derived measurements of 30 subjects whilst performing each of 6 physical activities.
The variable names were constructed with the intent of making them readable. The reason why dots (".") were used instead of white spaces or "_" is to make them faster to type and search through Rstudio.
The data is tidy because it consists of a variable per column, respecting the original structure of the UCI data set, which chose to keep physical variables instead of several categorical variables.
Every row also consists of only one observation, i.e. a subject performing one of the 6 activities and the average readings and estimations from the original data set. In short, each row is the average feature vector of a subject.



run_analysis.R
-----------------

This R script performs all the data transformation from the raw data all the way to the tidy data set. Below is a description of the transformations made. It consists of 5 steps:

In step 1, the script assembles the raw data set according to the original directions given by the UCI documentation It then merges the train data set (which consisted of 70% of the observations) to the test data set.
In step 2, a subset of the desired variables is made. Only the mean and standard deviation were subsetted among several other estimated statistics from the original data set.
In step 3, the activity variable has its contents renamed in pursuit of making the data set more readable.
In step 4, the variables are renamed in pursuit of a more clear and readable data set.
In step 5, a summary data set is created, consisting of the mean measurements/readings and estimations for each subject performing the 6 activities.

Note that the script is heavily commented in order to make each step clear.


read_data.R
---------------

A script made to read all the objects in the data folder and assign them to R objects conveniently named for the code in run_analysis.R.
I figured that this was such a time saver for me that it would be a nice idea to share it.


Codebook
-----------

In this markdown file you will find a description of the data set, as well as the content within each variable in the data set. 


Data
-----------

These are the following files in the data folder. They are an exact copy of the original data text files from the UCI website:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Notes
------
- Since the features are normalized and bounded within [-1,1] in the raw version of the data set, it shall remain so in this one.
- Below is the original description of the study, for any one curious:

		The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
		Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
		Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
		The experiments have been video-recorded to label the data manually. 
		The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

		The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
		The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.
		The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
		From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
