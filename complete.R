complete <- function(directory, id=1:332) {
  files_list = list.files(directory, full.names=TRUE)
  nobstemp<-integer()
  for(i in id) {
    x <- read.csv(files_list[i])
    nobstemp<-rbind(nobstemp, sum(complete.cases(x)))
    specdata<-integer()
    specdata<-c(specdata,nobstemp)
  }
  nobs<-as.numeric(specdata)
  specdata<-as.data.frame(cbind(id,nobs))
  specdata
}
