best <- function(state , outcome = c("heart attack","heart failure","pneumonia")) {

    
    hosp_data = read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    ## Getting the data ready, with the proper classes and column names
    
    options(warn = -1) ## To avoid warn messages when converting the values
   
    hosp_data[,c(11,17,23)] <- apply(hosp_data[,c(11,17,23)], 2, as.numeric)
    hosp_data$State <- as.factor(hosp_data$State)
    names(hosp_data)[c(11,17,23)] <- c("heart attack","heart failure","pneumonia")
    
    options(warn = 0)
    
    hosp_data <- hosp_data[c(2,7,11,17,23)]  ## All the data that matters
    
    Shosp <- split(hosp_data, hosp_data$State) 
    
    
    
    
    intended <- Shosp[state][[1]] ## Creates a data frame with data relevant to the intended state only
    
    val <- intended[outcome] == min(intended[outcome],na.rm = TRUE) ## Creates a logical vector with the min outcome rate
    
    answ <- sort(intended[val,][[1]])[1] # Creates a vector with the min outcome rate, sorts in alphabetical order and assigns the first hosp.name
    
    answ
    
}