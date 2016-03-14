open.files <- function() {
    
    files <- list.files("./data")
    
    print("Opening the following files: " , quote = F)
    
    for ( document in files) {
        tryCatch({
        
    name.of.file = gsub(".txt", "", document)
    
    print(document)
    
    xx <- paste('./data/', document, sep = "")
    
    assign(name.of.file, read.table(header = FALSE, stringsAsFactors = FALSE,  file = xx), envir=globalenv())
    
    } , error=function(e){})
    
    }
    
}

open.files()