rankall <- function(outcome, num = "best") {
    
    hosp_data = read.csv("./data/outcome-of-care-measures.csv", colClasses = "character")
    
    ## Getting the data ready, with the proper classes and column names
    
    options(warn = -1) ## To avoid warn messages when converting the values
    
    hosp_data[,c(11,17,23)] <- apply(hosp_data[,c(11,17,23)], 2, as.numeric)
    hosp_data$State <- as.factor(hosp_data$State)
    names(hosp_data)[c(11,17,23)] <- c("heart attack","heart failure","pneumonia")
    
    options(warn = 0)
    
    hosp_data <- hosp_data[c(2,7,11,17,23)]  ## All the data that matters
    
    nas <- is.na(hosp_data[outcome])
    
    hosp_data <- hosp_data[!nas,] # Removing NAs
    
    
    hosp_data <- hosp_data[order(hosp_data[outcome], hosp_data$Hospital.Name),] #Ordering the data Frame in outcome descending order
    
    
    Shosp <- split(hosp_data, hosp_data$State) # Creating a list per state
    
    rank_opt <- function(intended) {  ##This function returns the intended rank as requested by the user
        
        if(is.numeric(num)) { 
            
            return(intended[c(1,2)][num,])
            
        }
        
        if(num == "best") {
            
            return(intended[c(1,2)][1,])
            
        }
        
        if(num == "worst" ) { 
            
            return(intended[c(1,2)][dim(intended)[1],])
            
        }
        
    }
    
    hp_rank <- lapply(Shosp, rank_opt)
    
    return(do.call(rbind,hp_rank))
    
}