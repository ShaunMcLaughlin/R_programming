corr <- function(directory, threshold = 0) {
  n <- 0 
  for (id in 1:332) {
    flag <-0
    nextfile <- na.omit(read.csv(paste(directory,"/",sprintf("%03d",id),".csv",sep="")))
    if (nrow(nextfile)> threshold) {
 
      correlation <- cor(nextfile$sulfate,nextfile$nitrate,use="complete.obs")
      n <- n + 1
      flag <- 1
    }
    if (n>0 && flag==1){
      if (n==1) {results <- correlation
      } else {
        results <- c(results,correlation)
      }
      
      
    }}
  if (n==0) {results <- numeric(0)}
  results
}