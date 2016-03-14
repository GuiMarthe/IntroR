rankhospital <- function(state, outcome, num = "best") {
    
    hosp_data = read.csv("./data/outcome-of-care-measures.csv", colClasses = "character")
    
    ## Getting the data ready, with the proper classes and column names
    
    options(warn = -1) ## To avoid warn messages when converting the values
    
    hosp_data[,c(11,17,23)] <- apply(hosp_data[,c(11,17,23)], 2, as.numeric)
    hosp_data$State <- as.factor(hosp_data$State)
    names(hosp_data)[c(11,17,23)] <- c("heart attack","heart failure","pneumonia")
    
    options(warn = 0)
    
    hosp_data <- hosp_data[c(2,7,11,17,23)]  ## All the data that matters
    
    Shosp <- split(hosp_data, hosp_data$State) 
    
    intended <- Shosp[state][[1]] #selecting the intended state
    
    nas <- is.na(intended[outcome])
    
    intended <- intended[!nas,]  # Removing NAs
    
    intended <- intended[order(intended[outcome], intended$Hospital.Name),] #Ordering the data Frame in outcome descending order
    
    
    
    #intended <- intended[order(intended[outcome]),] 
    
    
    if(is.numeric(num)) {
        
        print(na.exclude(intended[num,1]) )
        
        }
    
    if(num == "best") {
        
        print(intended[1,1]) 
        
        }
    
    if(num == "worst" ) { 
        
        print(intended[dim(intended)[1],1])
        
        }
        
}