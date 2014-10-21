complete <- function(directory, id = 1:332) {
  for (i in 1:length(id)) {
    nextfile <- read.csv(paste(directory,"/",sprintf("%03d",id[i]),".csv",sep=""))
    data <- c(id[i],nrow(na.omit(nextfile)))
    if (i==1) {
      results <- as.data.frame(matrix(data,1,2))
    } else {
      results <- rbind(results,as.data.frame(matrix(data,1,2)))
    }
  }
  names(results) <- c("id","nobs")
  results
}