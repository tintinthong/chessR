#' createBoard
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100) sdfs
#' @import ggplot2

createBoard<-function(numberCol,numberRow){
  df<-expand.grid(1:numberCol,1:numberRow)
  colnames(df)[1]<-"col"
  colnames(df)[2]<-"row"
  df$colour<-NA
  for(i in 0:(numberRow-1)){


    df$colour[(i*numberCol+1):(i*numberCol+numberCol)]<-if(i%%2==0){
      rep(c(0,1),length.out=numberCol)
    }else{
      rep(c(1,0),length.out=numberCol)
    }

  }
  df$colour<-as.factor(df$colour)

  ggplot(df, aes(LETTERS[df$col], row)) +geom_tile(aes(fill=colour),color="black",show.legend=FALSE)+scale_fill_manual(values=c("black","white"))+labs(x="Rows",y="Cols")

}
