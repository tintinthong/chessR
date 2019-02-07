
strToCoordList<-function(coordStr){

  #learn this regex
  ls<-as.list(v1 <- strsplit(coordStr, "(?<=[A-Za-z])(?=[0-9])|(?<=[0-9])(?=[A-Za-z])", perl = TRUE)[[1]])
  #ls<-as.list(substring(coordStr,1:2,1:2))
  ls[[1]]<-tolower(ls[[1]])
  ls[[2]]<-as.numeric(ls[[2]])
  return(ls)
}


CoordListToCoordVec<-function(CoordList){

  CoordList[[1]]<-match(toupper(CoordList[[1]]) ,LETTERS)
  unlist(CoordList)

}





shift <- function(x, n = 1) {
  if (n == 0) x else c(tail(x, -n), head(x, n))
}





