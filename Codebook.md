Code book 
=================

The variables in the tidydata set are transformations of the estimated mean and standard deviations readings (denoted by the .mean and .std in the respective variable names) from the original study made by UCI - Center for Machine Learning and Intelligent Systems.

Present in this data set are the AVERAGE readings collected by 30 test subjects labeled 1:30 (denoted in the subject variable) while performing each of 6 activities (denoted in the activity variable).
In short, each row is the average feature vector for each subject performing one of the six activities.


The 6 activities are:

"1" "WALKING"

"2" "WALKING_UPSTAIRS"

"3" "WALKING_DOWNSTAIRS"

"4" "SITTING"

"5" "STANDING
"
"6" "LAYING"


Variable name description
--------------------------

In the original study, the measures selected came from the accelerometer and gyroscope. The accelerometer measured acceleration (denoted by .acceleration in the respective variable names) and the gyroscope measured the angular velocity (denoted by .angular.velocity in the respective variable names). 

These time domain signals (denoted by the time.domain label) were captured at a constant rate of 50 Hz. 

Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (as denoted by the Body. and Gravity. labels in the respective variable names) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The signals were captured three dimensionally, so the they are present in the dataset for each axis (X , Y and Z, denoted in the respective variable names).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (as denoted by the .jerk.signals in the respective variable names). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (as denoted by the .magnitude in the respective variables names). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals generating a new series of relevant variables (denoted by the frequency.domain labels in the respective variables names). 


List of variables
------------------

Below is a list of the variables in the dataset, as well as their indexes for easier subsetting:

"1" "subject"
"2" "activity"
"3" "Body.acceleration.in.the.X.axis.mean.time.domain"
"4" "Body.acceleration.in.the.Y.axis.mean.time.domain"
"5" "Body.acceleration.in.the.Z.axis.mean.time.domain"
"6" "Body.acceleration.in.the.X.axis.std.time.domain"
"7" "Body.acceleration.in.the.Y.axis.std.time.domain"
"8" "Body.acceleration.in.the.Z.axis.std.time.domain"
"9" "Gravity.acceleration.in.the.X.axis.mean.time.domain"
"10" "Gravity.acceleration.in.the.Y.axis.mean.time.domain"
"11" "Gravity.acceleration.in.the.Z.axis.mean.time.domain"
"12" "Gravity.acceleration.in.the.X.axis.std.time.domain"
"13" "Gravity.acceleration.in.the.Y.axis.std.time.domain"
"14" "Gravity.acceleration.in.the.Z.axis.std.time.domain"
"15" "Body.acceleration.jerk.signals.in.the.X.axis.mean.time.domain"
"16" "Body.acceleration.jerk.signals.in.the.Y.axis.mean.time.domain"
"17" "Body.acceleration.jerk.signals.in.the.Z.axis.mean.time.domain"
"18" "Body.acceleration.jerk.signals.in.the.X.axis.std.time.domain"
"19" "Body.acceleration.jerk.signals.in.the.Y.axis.std.time.domain"
"20" "Body.acceleration.jerk.signals.in.the.Z.axis.std.time.domain"
"21" "Body.angular.velocity.in.the.X.axis.mean.time.domain"
"22" "Body.angular.velocity.in.the.Y.axis.mean.time.domain"
"23" "Body.angular.velocity.in.the.Z.axis.mean.time.domain"
"24" "Body.angular.velocity.in.the.X.axis.std.time.domain"
"25" "Body.angular.velocity.in.the.Y.axis.std.time.domain"
"26" "Body.angular.velocity.in.the.Z.axis.std.time.domain"
"27" "Body.angular.velocity.jerk.signals.in.the.X.axis.mean.time.domain"
"28" "Body.angular.velocity.jerk.signals.in.the.Y.axis.mean.time.domain"
"29" "Body.angular.velocity.jerk.signals.in.the.Z.axis.mean.time.domain"
"30" "Body.angular.velocity.jerk.signals.in.the.X.axis.std.time.domain"
"31" "Body.angular.velocity.jerk.signals.in.the.Y.axis.std.time.domain"
"32" "Body.angular.velocity.jerk.signals.in.the.Z.axis.std.time.domain"
"33" "Body.acceleration.magnitude.mean.time.domain"
"34" "Body.acceleration.magnitude.std.time.domain"
"35" "Gravity.acceleration.magnitude.mean.time.domain"
"36" "Gravity.acceleration.magnitude.std.time.domain"
"37" "Body.acceleration.jerk.signals.magnitude.mean.time.domain"
"38" "Body.acceleration.jerk.signals.magnitude.std.time.domain"
"39" "Body.angular.velocity.magnitude.mean.time.domain"
"40" "Body.angular.velocity.magnitude.std.time.domain"
"41" "Body.angular.velocity.jerk.signals.magnitude.mean.time.domain"
"42" "Body.angular.velocity.jerk.signals.magnitude.std.time.domain"
"43" "Body.acceleration.in.the.X.axis.mean.frequency.domain"
"44" "Body.acceleration.in.the.Y.axis.mean.frequency.domain"
"45" "Body.acceleration.in.the.Z.axis.mean.frequency.domain"
"46" "Body.acceleration.in.the.X.axis.std.frequency.domain"
"47" "Body.acceleration.in.the.Y.axis.std.frequency.domain"
"48" "Body.acceleration.in.the.Z.axis.std.frequency.domain"
"49" "Body.acceleration.jerk.signals.in.the.X.axis.mean.frequency.domain"
"50" "Body.acceleration.jerk.signals.in.the.Y.axis.mean.frequency.domain"
"51" "Body.acceleration.jerk.signals.in.the.Z.axis.mean.frequency.domain"
"52" "Body.acceleration.jerk.signals.in.the.X.axis.std.frequency.domain"
"53" "Body.acceleration.jerk.signals.in.the.Y.axis.std.frequency.domain"
"54" "Body.acceleration.jerk.signals.in.the.Z.axis.std.frequency.domain"
"55" "Body.angular.velocity.in.the.X.axis.mean.frequency.domain"
"56" "Body.angular.velocity.in.the.Y.axis.mean.frequency.domain"
"57" "Body.angular.velocity.in.the.Z.axis.mean.frequency.domain"
"58" "Body.angular.velocity.in.the.X.axis.std.frequency.domain"
"59" "Body.angular.velocity.in.the.Y.axis.std.frequency.domain"
"60" "Body.angular.velocity.in.the.Z.axis.std.frequency.domain"
"61" "Body.acceleration.magnitude.mean.frequency.domain"
"62" "Body.acceleration.magnitude.std.frequency.domain"
"63" "Body.acceleration.jerk.signals.magnitude.mean.frequency.domain"
"64" "Body.acceleration.jerk.signals.magnitude.std.frequency.domain"
"65" "Body.angular.velocity.magnitude.mean.frequency.domain"
"66" "Body.angular.velocity.magnitude.std.frequency.domain"
"67" "Body.angular.velocity.jerk.signals.magnitude.mean.frequency.domain"
"68" "Body.angular.velocity.jerk.signals.magnitude.std.frequency.domain"

