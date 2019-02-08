#' drawBoard
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of \code{x} and \code{y}.
#' @examples
#' add(1, 1)
#' add(100) sdfs
#' @import ggplot2

drawBoard<-function(numberCol,numberRow){
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
  df$start<-c("Rw","Hw","Bw","Qw","Kw","Bw","Hw","Rw",
              rep("pw",8),
              rep(rep(NA,8),4),
              rep("pb",8),
              "Rb","Hb","Bb","Qb","Kb","Bb","Hb","Rb"
              )


  gPlot<-ggplot(df, aes(LETTERS[df$col], row)) +geom_tile(aes(fill=colour),color="black",show.legend=FALSE)+
           scale_fill_manual(values=c("black","white"))+labs(x="Col",y="Row")+annotate("point", x = 5, y = 2, colour = "blue")+
           geom_text(aes(label=start),colour="Pink")

  return(list(gPlot=gPlot,df=df))

}


#this is only taking output of drawBoard
drawPieces<-function(object){


  object$gPlot

}




