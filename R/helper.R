
strToCoord<-function(coordStr){

  #learn this regex
  ls<-as.list(v1 <- strsplit("A12", "(?<=[A-Za-z])(?=[0-9])|(?<=[0-9])(?=[A-Za-z])", perl = TRUE)[[1]])
  #ls<-as.list(substring(coordStr,1:2,1:2))
  ls[[1]]<-tolower(ls[[1]])
  ls[[2]]<-as.numeric(ls[[2]])
  return(ls)
}


strToCoord("A10")




