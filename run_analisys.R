#These are the steps for creating the train data set.

library(dplyr)
library(tidyr)
library(data.table)



#### 1. merging the train and test data set #####
    
  feature_names <- c("subject", "activity", as.character(features[[2]])) # creating the string vector with the variable names. 
                                                                        # This vector will be used in the next step.

  train_dataset <- bind_cols(subject_train, y_train, X_train)  # assembling each dataset.
  train_dataset <- setnames(train_dataset,  feature_names)

  test_dataset <- bind_cols(subject_test, y_test, X_test)
  test_dataset <- setnames(test_dataset,  feature_names)
  
  dataset <- rbind(test_dataset , train_dataset)
 

#### 2. Extracting only the mean and sd for each measurement ####
    
  logi_col_extraction <- grepl('mean\\(\\)|std\\(\\)|subject|activity', feature_names) # creating a logical vector for subsetting the wanted 
                                                                                       # columns from the feature_names vec with reg exp.

  dataset <- dataset[ , logi_col_extraction]  

#### 3. Replacing the number lables of the activity column for their descriptive names ####
    
  vec_activity_lables <- as.character(activity_labels[[2]])
  
  dataset$activity <- as.factor(dataset$activity)

  levels(dataset$activity) <- vec_activity_lables

#### 4. Changing the names of the variables (columns) for more clarity ####
  
  old.col.names <- names(dataset)
  
  names.for.manipulation <- gsub('(^t|f)(.+)', '\\2 #\\1#', old.col.names, perl = TRUE) # a guide for placing the time/frequancy domain lables at the end of the string
  names.for.manipulation <- sub("#t#", "- time domain", names.for.manipulation) # adding "time/ frequency domain" at the end of each corresponding string
  names.for.manipulation <- sub("#f#", "- frequency domain", names.for.manipulation) 
  names.for.manipulation <- sub("BodyBody", "Body", names.for.manipulation) # an error appearing in some variable names
  
  
  # the following code will eliminate some unused/unwanted characters from the variable names and reorder them for easier replacing
  # and replaces a series of strings for a more descriptive version of them. 
  
  names.for.manipulation <- sub("(^.+)(mean|std)(\\(\\))(-*)(.+)(\\s*)(- time domain|- frequency domain)", "\\1#\\5#- \\2 \\7", names.for.manipulation)
  
  names.for.manipulation <- sub("-#X #", " in the X axis ", names.for.manipulation)
  names.for.manipulation <- sub("-#Y #", " in the Y axis ", names.for.manipulation)
  names.for.manipulation <- sub("-#Z #", " in the Z axis ", names.for.manipulation)
  names.for.manipulation <- sub("-# #", " ", names.for.manipulation)
  names.for.manipulation <- sub("Mag", " - magnitude", names.for.manipulation)
  names.for.manipulation <- sub("Jerk", " jerk signals", names.for.manipulation)
  names.for.manipulation <- sub("Gyro", " angular velocity", names.for.manipulation)
  names.for.manipulation <- sub("Acc", " acceleration", names.for.manipulation)
  names.for.manipulation <- gsub(" |-", ".", names.for.manipulation)
  names.for.manipulation <- gsub("\\.\\.\\.", ".", names.for.manipulation)
  names(dataset) <- names.for.manipulation
  

#### 5. Creating an independent tidy data set with the average of each variable for each activity and each subject ####
  
  avg.dataset <<- dataset %>% group_by(subject, activity) %>% summarise_each(funs(mean))
  
  write.table(avg.dataset, file = "./tidy_dataset.txt", row.names = FALSE)
  

