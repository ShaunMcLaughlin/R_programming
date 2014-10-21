pollutantmean <- function(directory,pollutant,id=001:332) {
  for (i in 1:length(id)) {
    nextfile <- read.csv(paste(directory,"/",sprintf("%03d",id[i]),".csv",sep=""))
    if (i==1) {
      results <- nextfile
    } else {
      results <- rbind(results,nextfile)
    }
  }

  mean(na.omit(results[[pollutant]],rm.na=TRUE))
}