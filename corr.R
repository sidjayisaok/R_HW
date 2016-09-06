corr <- function(directory, threshold = 0) {
  final <- vector(mode = "integer", length = 332)
  files_list <- list.files(directory, full.names = TRUE)
  for (i in 1:332) {
    x <- read.csv(files_list[i])
    obsv <- na.omit(x)
  }
  if(obsv > threshold) {
    temp <- cor(obsv["sulfate"], obsv["nitrate"])
  }  		 
  final <- c(final, temp)
  final
}